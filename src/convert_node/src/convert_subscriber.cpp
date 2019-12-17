#include <ros/ros.h>
#include <std_msgs/Float64.h>

void myCallback(const std_msgs::Float64& message_holder)
{
  //the real work is done in this callback function
  //it wakes up every time a new message is published on "kd_convert_message"
  //since this function is prompted by a message event
  //it does not consume CPU time polling for new data
  ROS_INFO("received value is :%f",message_holder.data);
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "convert_subscriber");
  ros::NodeHandle nh;

  //create a subscriber object and have it subscribe subscribe to the topic "kd_convert_message"
  //the function "mycallback" will wake up whenever a new message is published to
  //"kd_convert_message"
  //the real work is done inside the callback function
  ros::Subscriber my_subscriber_object=nh.subscribe("kd_convert_message",1,myCallback);


  //forces refreshing wakeups upon new data arrival
  //main program essentially hangs here, but it must stay alive to keep the callback function alive
  ros::spin();
  return 0;//should never get here, unless roscore dies
}
