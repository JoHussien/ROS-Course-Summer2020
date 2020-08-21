#!/usr/bin/env python
# license removed for brevity
import rospy
#from std_msgs.msg import Int32
from light_robot.msg import complex
import numpy as np

def talker():
    pub = rospy.Publisher('chatter', complex, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    count=1
    complex_num=complex()
    while not rospy.is_shutdown():
	
	complex.real=np.random.uniform(low=5, high=20)
	complex.imaginary=np.random.uniform(low=0, high=1)
	#print("I counted till: ", count)
        #hello_str = "hello world %s" % rospy.get_time()
	rospy.loginfo("Published an imaginary number")        
	rospy.loginfo(complex_num)
	#rospy.loginfo("Imaginary Number is : ",complex_num.imaginary)
        pub.publish(complex_num)
	count=count+1        
	rate.sleep()
	

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

