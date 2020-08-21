#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import Int32

def talker():
    pub = rospy.Publisher('chatter', Int32, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    count=0
    while not rospy.is_shutdown():
	count=count+1
	#print("I counted till: ", count)
        #hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(count)
        pub.publish(count)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

