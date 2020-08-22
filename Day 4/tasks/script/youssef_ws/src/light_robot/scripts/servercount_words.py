#!/usr/bin/env python

from light_robot.srv import count_words
from light_robot.srv import count_wordsRequest
from light_robot.srv import count_wordsResponse

import rospy

def handle_count(req):
    print ("Returning words in [%s] number "%req.sentence)
    return count_wordsResponse(len(req.sentence.split()))

def count_server():
    rospy.init_node('count_words_server')
    s = rospy.Service('count_words', count_words, handle_count)
    print ("Ready to give the length")
    rospy.spin()

if __name__ == "__main__":    
	count_server()


