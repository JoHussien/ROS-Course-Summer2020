#!/usr/bin/env python

import sys
import rospy
from light_robot.srv import count_words
from light_robot.srv import count_wordsRequest
from light_robot.srv import count_wordsResponse

def count_words_client(sentence):
    rospy.wait_for_service('count_words')
    try:
        countwords = rospy.ServiceProxy('count_words', count_words)
        response1 = countwords(sentence)
        return response1.length
    except rospy.ServiceException, e:
        print ("Service call failed: %s"%e)

def usage():
    return " {} ".format(sys.argv[0])

if __name__ == "__main__":

    while not rospy.is_shutdown():
        sentence = raw_input ('Enter your string: ')
        print("Asking for the number of words in %s"%(sentence))
        print("The result is %d"%(count_words_client(sentence)))




