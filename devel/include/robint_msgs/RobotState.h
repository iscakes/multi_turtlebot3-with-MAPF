// Generated by gencpp from file robint_msgs/RobotState.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ROBOTSTATE_H
#define ROBINT_MSGS_MESSAGE_ROBOTSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/RobotVersionInfo.h>
#include <robint_msgs/RobotPose.h>
#include <robint_msgs/RobotStatisticData.h>
#include <robint_msgs/StateDiagnostic.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct RobotState_
{
  typedef RobotState_<ContainerAllocator> Type;

  RobotState_()
    : map_name()
    , version_info()
    , pose()
    , stat_data()
    , diagnostic_array()  {
    }
  RobotState_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , version_info(_alloc)
    , pose(_alloc)
    , stat_data(_alloc)
    , diagnostic_array(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef  ::robint_msgs::RobotVersionInfo_<ContainerAllocator>  _version_info_type;
  _version_info_type version_info;

   typedef  ::robint_msgs::RobotPose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::robint_msgs::RobotStatisticData_<ContainerAllocator>  _stat_data_type;
  _stat_data_type stat_data;

   typedef std::vector< ::robint_msgs::StateDiagnostic_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >> _diagnostic_array_type;
  _diagnostic_array_type diagnostic_array;





  typedef boost::shared_ptr< ::robint_msgs::RobotState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::RobotState_<ContainerAllocator> const> ConstPtr;

}; // struct RobotState_

typedef ::robint_msgs::RobotState_<std::allocator<void> > RobotState;

typedef boost::shared_ptr< ::robint_msgs::RobotState > RobotStatePtr;
typedef boost::shared_ptr< ::robint_msgs::RobotState const> RobotStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::RobotState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::RobotState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::RobotState_<ContainerAllocator1> & lhs, const ::robint_msgs::RobotState_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.version_info == rhs.version_info &&
    lhs.pose == rhs.pose &&
    lhs.stat_data == rhs.stat_data &&
    lhs.diagnostic_array == rhs.diagnostic_array;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::RobotState_<ContainerAllocator1> & lhs, const ::robint_msgs::RobotState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RobotState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RobotState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RobotState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RobotState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RobotState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RobotState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::RobotState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18f0497a45a77f9f7d5f4d7a5d6b1348";
  }

  static const char* value(const ::robint_msgs::RobotState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18f0497a45a77f9fULL;
  static const uint64_t static_value2 = 0x7d5f4d7a5d6b1348ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::RobotState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/RobotState";
  }

  static const char* value(const ::robint_msgs::RobotState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::RobotState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name  # floor_id\n"
"RobotVersionInfo version_info\n"
"RobotPose pose\n"
"RobotStatisticData stat_data\n"
"StateDiagnostic[] diagnostic_array\n"
"================================================================================\n"
"MSG: robint_msgs/RobotVersionInfo\n"
"string robot_id\n"
"string firmware_version\n"
"================================================================================\n"
"MSG: robint_msgs/RobotPose\n"
"geometry_msgs/Pose2D image_pose\n"
"geometry_msgs/PoseStamped pose\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"\n"
"================================================================================\n"
"MSG: robint_msgs/RobotStatisticData\n"
"uint64 travel_mileage\n"
"================================================================================\n"
"MSG: robint_msgs/StateDiagnostic\n"
"string hardware_name\n"
"bool is_ok\n"
;
  }

  static const char* value(const ::robint_msgs::RobotState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::RobotState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.version_info);
      stream.next(m.pose);
      stream.next(m.stat_data);
      stream.next(m.diagnostic_array);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::RobotState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::RobotState_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "version_info: ";
    s << std::endl;
    Printer< ::robint_msgs::RobotVersionInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.version_info);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::robint_msgs::RobotPose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "stat_data: ";
    s << std::endl;
    Printer< ::robint_msgs::RobotStatisticData_<ContainerAllocator> >::stream(s, indent + "  ", v.stat_data);
    s << indent << "diagnostic_array[]" << std::endl;
    for (size_t i = 0; i < v.diagnostic_array.size(); ++i)
    {
      s << indent << "  diagnostic_array[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >::stream(s, indent + "    ", v.diagnostic_array[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ROBOTSTATE_H
