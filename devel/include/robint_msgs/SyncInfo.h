// Generated by gencpp from file robint_msgs/SyncInfo.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_SYNCINFO_H
#define ROBINT_MSGS_MESSAGE_SYNCINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose2D.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct SyncInfo_
{
  typedef SyncInfo_<ContainerAllocator> Type;

  SyncInfo_()
    : header()
    , timestamp_string()
    , robot_uuid()
    , robot_index()
    , map_name()
    , map_uuid()
    , global_map_pose()
    , linear_velocity(0.0)
    , angular_velocity(0.0)  {
    }
  SyncInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , timestamp_string(_alloc)
    , robot_uuid(_alloc)
    , robot_index(_alloc)
    , map_name(_alloc)
    , map_uuid(_alloc)
    , global_map_pose(_alloc)
    , linear_velocity(0.0)
    , angular_velocity(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _timestamp_string_type;
  _timestamp_string_type timestamp_string;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _robot_uuid_type;
  _robot_uuid_type robot_uuid;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _robot_index_type;
  _robot_index_type robot_index;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_uuid_type;
  _map_uuid_type map_uuid;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _global_map_pose_type;
  _global_map_pose_type global_map_pose;

   typedef float _linear_velocity_type;
  _linear_velocity_type linear_velocity;

   typedef float _angular_velocity_type;
  _angular_velocity_type angular_velocity;





  typedef boost::shared_ptr< ::robint_msgs::SyncInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::SyncInfo_<ContainerAllocator> const> ConstPtr;

}; // struct SyncInfo_

typedef ::robint_msgs::SyncInfo_<std::allocator<void> > SyncInfo;

typedef boost::shared_ptr< ::robint_msgs::SyncInfo > SyncInfoPtr;
typedef boost::shared_ptr< ::robint_msgs::SyncInfo const> SyncInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::SyncInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::SyncInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::SyncInfo_<ContainerAllocator1> & lhs, const ::robint_msgs::SyncInfo_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.timestamp_string == rhs.timestamp_string &&
    lhs.robot_uuid == rhs.robot_uuid &&
    lhs.robot_index == rhs.robot_index &&
    lhs.map_name == rhs.map_name &&
    lhs.map_uuid == rhs.map_uuid &&
    lhs.global_map_pose == rhs.global_map_pose &&
    lhs.linear_velocity == rhs.linear_velocity &&
    lhs.angular_velocity == rhs.angular_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::SyncInfo_<ContainerAllocator1> & lhs, const ::robint_msgs::SyncInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SyncInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SyncInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SyncInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SyncInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SyncInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SyncInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::SyncInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86b30ca069efb657cac74816610f0796";
  }

  static const char* value(const ::robint_msgs::SyncInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86b30ca069efb657ULL;
  static const uint64_t static_value2 = 0xcac74816610f0796ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::SyncInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/SyncInfo";
  }

  static const char* value(const ::robint_msgs::SyncInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::SyncInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string timestamp_string\n"
"string robot_uuid\n"
"string robot_index\n"
"\n"
"# Absorbed info\n"
"string map_name\n"
"string map_uuid\n"
"geometry_msgs/Pose2D global_map_pose\n"
"float32 linear_velocity\n"
"float32 angular_velocity\n"
"\n"
"\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::robint_msgs::SyncInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::SyncInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.timestamp_string);
      stream.next(m.robot_uuid);
      stream.next(m.robot_index);
      stream.next(m.map_name);
      stream.next(m.map_uuid);
      stream.next(m.global_map_pose);
      stream.next(m.linear_velocity);
      stream.next(m.angular_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SyncInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::SyncInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::SyncInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "timestamp_string: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.timestamp_string);
    s << indent << "robot_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.robot_uuid);
    s << indent << "robot_index: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.robot_index);
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "map_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_uuid);
    s << indent << "global_map_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.global_map_pose);
    s << indent << "linear_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.linear_velocity);
    s << indent << "angular_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.angular_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_SYNCINFO_H
