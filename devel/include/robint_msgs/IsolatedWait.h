// Generated by gencpp from file robint_msgs/IsolatedWait.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ISOLATEDWAIT_H
#define ROBINT_MSGS_MESSAGE_ISOLATEDWAIT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct IsolatedWait_
{
  typedef IsolatedWait_<ContainerAllocator> Type;

  IsolatedWait_()
    : pose()
    , uuid()
    , direct(false)  {
    }
  IsolatedWait_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , uuid(_alloc)
    , direct(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uuid_type;
  _uuid_type uuid;

   typedef uint8_t _direct_type;
  _direct_type direct;





  typedef boost::shared_ptr< ::robint_msgs::IsolatedWait_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::IsolatedWait_<ContainerAllocator> const> ConstPtr;

}; // struct IsolatedWait_

typedef ::robint_msgs::IsolatedWait_<std::allocator<void> > IsolatedWait;

typedef boost::shared_ptr< ::robint_msgs::IsolatedWait > IsolatedWaitPtr;
typedef boost::shared_ptr< ::robint_msgs::IsolatedWait const> IsolatedWaitConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::IsolatedWait_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::IsolatedWait_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::IsolatedWait_<ContainerAllocator1> & lhs, const ::robint_msgs::IsolatedWait_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.uuid == rhs.uuid &&
    lhs.direct == rhs.direct;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::IsolatedWait_<ContainerAllocator1> & lhs, const ::robint_msgs::IsolatedWait_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::IsolatedWait_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::IsolatedWait_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::IsolatedWait_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
{
  static const char* value()
  {
    return "daf9e3b0429e595e00ee93cf39383683";
  }

  static const char* value(const ::robint_msgs::IsolatedWait_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdaf9e3b0429e595eULL;
  static const uint64_t static_value2 = 0x00ee93cf39383683ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/IsolatedWait";
  }

  static const char* value(const ::robint_msgs::IsolatedWait_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose pose\n"
"string uuid\n"
"bool direct\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::robint_msgs::IsolatedWait_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.uuid);
      stream.next(m.direct);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IsolatedWait_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::IsolatedWait_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::IsolatedWait_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uuid);
    s << indent << "direct: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.direct);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ISOLATEDWAIT_H
