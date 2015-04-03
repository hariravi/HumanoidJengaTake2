/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/svr2112/challenge_problem_1/src/move_gripper/srv/CloseGripper.srv
 *
 */


#ifndef MOVE_GRIPPER_MESSAGE_CLOSEGRIPPERREQUEST_H
#define MOVE_GRIPPER_MESSAGE_CLOSEGRIPPERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace move_gripper
{
template <class ContainerAllocator>
struct CloseGripperRequest_
{
  typedef CloseGripperRequest_<ContainerAllocator> Type;

  CloseGripperRequest_()
    : close(false)  {
    }
  CloseGripperRequest_(const ContainerAllocator& _alloc)
    : close(false)  {
    }



   typedef uint8_t _close_type;
  _close_type close;




  typedef boost::shared_ptr< ::move_gripper::CloseGripperRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::move_gripper::CloseGripperRequest_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct CloseGripperRequest_

typedef ::move_gripper::CloseGripperRequest_<std::allocator<void> > CloseGripperRequest;

typedef boost::shared_ptr< ::move_gripper::CloseGripperRequest > CloseGripperRequestPtr;
typedef boost::shared_ptr< ::move_gripper::CloseGripperRequest const> CloseGripperRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::move_gripper::CloseGripperRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace move_gripper

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::move_gripper::CloseGripperRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::move_gripper::CloseGripperRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::move_gripper::CloseGripperRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "014313a9803ad89225c81c6000fe61cf";
  }

  static const char* value(const ::move_gripper::CloseGripperRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x014313a9803ad892ULL;
  static const uint64_t static_value2 = 0x25c81c6000fe61cfULL;
};

template<class ContainerAllocator>
struct DataType< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "move_gripper/CloseGripperRequest";
  }

  static const char* value(const ::move_gripper::CloseGripperRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
bool close\n\
";
  }

  static const char* value(const ::move_gripper::CloseGripperRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.close);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct CloseGripperRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::move_gripper::CloseGripperRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::move_gripper::CloseGripperRequest_<ContainerAllocator>& v)
  {
    s << indent << "close: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.close);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVE_GRIPPER_MESSAGE_CLOSEGRIPPERREQUEST_H
