// Generated by gencpp from file light_robot/count_wordsResponse.msg
// DO NOT EDIT!


#ifndef LIGHT_ROBOT_MESSAGE_COUNT_WORDSRESPONSE_H
#define LIGHT_ROBOT_MESSAGE_COUNT_WORDSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace light_robot
{
template <class ContainerAllocator>
struct count_wordsResponse_
{
  typedef count_wordsResponse_<ContainerAllocator> Type;

  count_wordsResponse_()
    : length(0)  {
    }
  count_wordsResponse_(const ContainerAllocator& _alloc)
    : length(0)  {
  (void)_alloc;
    }



   typedef int64_t _length_type;
  _length_type length;





  typedef boost::shared_ptr< ::light_robot::count_wordsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::light_robot::count_wordsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct count_wordsResponse_

typedef ::light_robot::count_wordsResponse_<std::allocator<void> > count_wordsResponse;

typedef boost::shared_ptr< ::light_robot::count_wordsResponse > count_wordsResponsePtr;
typedef boost::shared_ptr< ::light_robot::count_wordsResponse const> count_wordsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::light_robot::count_wordsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::light_robot::count_wordsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace light_robot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'light_robot': ['/home/youssefhusien/Desktop/ROS Course Summer2020/Day 4/tasks/script/youssef_ws/src/light_robot/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::light_robot::count_wordsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::light_robot::count_wordsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::light_robot::count_wordsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::light_robot::count_wordsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::light_robot::count_wordsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::light_robot::count_wordsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::light_robot::count_wordsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00754f7dcbb65ffcfab7f760135acd4c";
  }

  static const char* value(const ::light_robot::count_wordsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00754f7dcbb65ffcULL;
  static const uint64_t static_value2 = 0xfab7f760135acd4cULL;
};

template<class ContainerAllocator>
struct DataType< ::light_robot::count_wordsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "light_robot/count_wordsResponse";
  }

  static const char* value(const ::light_robot::count_wordsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::light_robot::count_wordsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 length\n\
\n\
";
  }

  static const char* value(const ::light_robot::count_wordsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::light_robot::count_wordsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct count_wordsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::light_robot::count_wordsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::light_robot::count_wordsResponse_<ContainerAllocator>& v)
  {
    s << indent << "length: ";
    Printer<int64_t>::stream(s, indent + "  ", v.length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIGHT_ROBOT_MESSAGE_COUNT_WORDSRESPONSE_H