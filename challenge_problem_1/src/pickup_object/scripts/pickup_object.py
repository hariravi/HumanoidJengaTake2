#!/usr/bin/env python

import rospy


if __name__ == '__main__':
	print 'the hair of renato'


    	#initialize the node
    	rospy.init_node('add_client', anonymous=True)
	print 'the hair of renato2'
	# Move base sample call
	rospy.wait_for_service('add_two_ints_server')
	print 'the hair of renato3'

	add_int = rospy.ServiceProxy('add_two_ints_server', '/../../add_ints/srv/AddTwoInts.srv')
#    move_base = rospy.ServiceProxy('move_base', '/../../move_base/srv/MoveBase.srv' )
	distance = .75
	try:
		mb = add_int(4,5)
		print mb
	#mb = move_base(distance)
	except rospy.ServiceException as exc:
		print("Service did not process request: " + str(exc))
    
'''
    # Rotate base sample call
    rospy.wait_for_service('rotate_base')
    move_base = rospy.ServiceProxy('rotate_base', '/../../move_base/srv/RotateBase.srv' )
    # Angle in radians
    angle = 3.14
    try:
        rb = rotate_base(distance)
    except rospy.ServiceException as exc:
        print("Service did not process request: " + str(exc))
'''
	#rospy.loginfo("Let's see if this works")
