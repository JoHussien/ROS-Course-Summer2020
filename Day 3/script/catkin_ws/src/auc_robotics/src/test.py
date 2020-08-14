#! /usr/bin/env python
import rospy

rospy.init_node("python_file")
rate = rospy.Rate(2)
while not rospy.is_shutdown():
    print "Hello the Pyhton file is working with ROS"
    rate.sleep()
