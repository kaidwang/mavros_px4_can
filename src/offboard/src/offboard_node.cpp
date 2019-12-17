//include something, this is the first step
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>

#include <can_msgs/Frame.h>


//define the structure of mavros messages
mavros_msgs::State current_state;

//msg callback function define
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}


//main function code
int main(int argc,char **argv)
{

    ros::init(argc,argv,"offb_node");
    ros::NodeHandle nh;

    //declare a callback function
    ros::Subscriber state_sub=nh.subscribe<mavros_msgs::State>("mavros/state",10,state_cb);
    ros::Publisher local_pos_pub=nh.advertise<geometry_msgs::PoseStamped>("mavros/setpoint_position/local",10);
    //i need to publish a mavlink message to sendmessage topic
    //send to can bus
    //ros::Publisher send_can_pub=nh.advertiseService<>("",10);
    ros::Publisher send_can_pub = nh.advertise<can_msgs::Frame>("sent_messages", 10);

    ros::ServiceClient arming_client=nh.serviceClient<mavros_msgs::CommandBool>("mavros/cmd/arming");
    ros::ServiceClient set_mode_client=nh.serviceClient<mavros_msgs::SetMode>("mavros/set_mode");


    // create a message
    can_msgs::Frame can_msg;
    can_msg.is_extended = true;
    can_msg.is_rtr = false;
    can_msg.is_error = false;
    can_msg.id = 0x1337;
    can_msg.dlc = 8;
    for (uint8_t i=0; i < can_msg.dlc; i++)
    {
      can_msg.data[i] = i;
    }

    can_msg.header.frame_id = "0";  // "0" for no frame.
    can_msg.header.stamp = ros::Time::now();

    // send the can_frame::Frame message to the sent_messages topic.

    //the setpoint publishing rate must be faster than 2hz
    ros::Rate rate(20.0);

    //wait for FCU connection
    //when the heartbeat received break the circle
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }

    geometry_msgs::PoseStamped pose;
    pose.pose.position.x=0;
    pose.pose.position.y=0;
    pose.pose.position.z=2;

    //send a few setpoints before starting
    for(int i=100;ros::ok() && i>0;--i)
    {
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value=true;

    ros::Time last_request = ros::Time::now();

    while(ros::ok())
    {
        if( current_state.mode != "OFFBOARD" &&
           (ros::Time::now() - last_request > ros::Duration(5.0)))
        {
           if( set_mode_client.call(offb_set_mode) &&
               offb_set_mode.response.mode_sent)
           {
               ROS_INFO("Offboard enabled");
           }
           last_request = ros::Time::now();
       } else
       {
           ROS_INFO("kaidi wang");
           if( !current_state.armed &&
               (ros::Time::now() - last_request > ros::Duration(5.0)))
           {
               if( arming_client.call(arm_cmd) &&
                   arm_cmd.response.success)
               {
                   ROS_INFO("Vehicle armed");
               }
               last_request = ros::Time::now();
           }
       }
       //publish a can message
       //local_pos_pub.publish(pose_can);

       local_pos_pub.publish(pose);
       send_can_pub.publish(can_msg);



       ros::spinOnce();
       rate.sleep();
    }
    return 0;
}
