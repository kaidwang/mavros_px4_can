#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <geometry_msgs/TwistStamped.h>
#include <string>
#include <sstream>
#include <iostream>
#include <std_msgs/Float64.h>

//mavros_msgs::State current_state;
////callback function of subscrib
//void state_cb(const mavros_msgs::State::ConstPtr& msg){
//  current_state=*msg;
//}

//main function edit
//first step i need to finish a publish topic node
int main(int argc, char **argv)
{
  //name of this node
  ros::init(argc, argv, "convert");
  //two lines to create a publisher obhect that can talk to ROS
  ros::NodeHandle nh;
  ros::Publisher my_publisher=nh.advertise<std_msgs::Float64>("kd_convert_message",1);
  //std::int8_t is the topic's type, in the furture, need to change to geometry_msgs
  //kd_convert_message is the name of the topic to which we will publish
  //the "1", argument says to use a buffer size of 1,could make larger

  //now, i need to add a publisher which is geometry_msgs type
  ros::Publisher my_position=nh.advertise<geometry_msgs::PoseStamped>("mavors/setpoint_position/local",10);

  std_msgs::Float64 test_int;//create a variable of type "int8_t"
  //as define in :/opt/ros/kinetic/share/std_msgs
  //any message published on a ros topic must have a pre-define a format
  //so the subscibers know how to interpret the serialized data transmissions

  test_int.data=0.0;

  geometry_msgs::PoseStamped pose;
  pose.pose.position.x=0;
  pose.pose.position.y=0;
  pose.pose.position.z=9;

  ros::Rate naptime(20.0);
  //set the sleep timer for 1Hz repetition rate(arg is in units of Hz)
  //this line is important

  while(ros::ok())
  {
    test_int.data=test_int.data+0.01;
    //increment by 0.01 each iteration

    my_publisher.publish(test_int);
    my_position.publish(pose);
    ROS_INFO("Gao Ling");

    naptime.sleep();
  }
  ros::spinOnce();//ignore
  return 0;
}
