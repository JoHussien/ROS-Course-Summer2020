#include <ros/ros.h>

int main(int argc, char** argv) {
  ros::init(argc,argv,"cpp_file");
  ros::NodeHandle nh;
  ros::Rate loop_rate(2);

  while(ros::ok())
  {
    ROS_INFO("Hello this is the CPP file runninf using ROS");
  }

  return 0;
}
