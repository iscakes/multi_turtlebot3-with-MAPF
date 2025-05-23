// Generated by gencpp from file robint_msgs/RobotIsolatedZoneList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ROBOTISOLATEDZONELIST_H
#define ROBINT_MSGS_MESSAGE_ROBOTISOLATEDZONELIST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/RobotIsolatedZone.h>
#include <geometry_msgs/Pose2D.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct RobotIsolatedZoneList_
{
  typedef RobotIsolatedZoneList_<ContainerAllocator> Type;

  RobotIsolatedZoneList_()
    : robot_isolated_zone_list()
    , self_isolated_zone_uuid()
    , robot_pose()  {
    }
  RobotIsolatedZoneList_(const ContainerAllocator& _alloc)
    : robot_isolated_zone_list(_alloc)
    , self_isolated_zone_uuid(_alloc)
    , robot_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::robint_msgs::RobotIsolatedZone_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::robint_msgs::RobotIsolatedZone_<ContainerAllocator> >> _robot_isolated_zone_list_type;
  _robot_isolated_zone_list_type robot_isolated_zone_list;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _self_isolated_zone_uuid_type;
  _self_isolated_zone_uuid_type self_isolated_zone_uuid;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _robot_pose_type;
  _robot_pose_type robot_pose;





  typedef boost::shared_ptr< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> const> ConstPtr;

}; // struct RobotIsolatedZoneList_

typedef ::robint_msgs::RobotIsolatedZoneList_<std::allocator<void> > RobotIsolatedZoneList;

typedef boost::shared_ptr< ::robint_msgs::RobotIsolatedZoneList > RobotIsolatedZoneListPtr;
typedef boost::shared_ptr< ::robint_msgs::RobotIsolatedZoneList const> RobotIsolatedZoneListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator1> & lhs, const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator2> & rhs)
{
  return lhs.robot_isolated_zone_list == rhs.robot_isolated_zone_list &&
    lhs.self_isolated_zone_uuid == rhs.self_isolated_zone_uuid &&
    lhs.robot_pose == rhs.robot_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator1> & lhs, const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d0afd21c4c4da4af1d82820d14e63e6";
  }

  static const char* value(const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d0afd21c4c4da4aULL;
  static const uint64_t static_value2 = 0xf1d82820d14e63e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/RobotIsolatedZoneList";
  }

  static const char* value(const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RobotIsolatedZone[] robot_isolated_zone_list\n"
"string self_isolated_zone_uuid\n"
"geometry_msgs/Pose2D robot_pose\n"
"================================================================================\n"
"MSG: robint_msgs/RobotIsolatedZone\n"
"string zone_uuid\n"
"string[] robot_list\n"
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

  static const char* value(const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_isolated_zone_list);
      stream.next(m.self_isolated_zone_uuid);
      stream.next(m.robot_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotIsolatedZoneList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::RobotIsolatedZoneList_<ContainerAllocator>& v)
  {
    s << indent << "robot_isolated_zone_list[]" << std::endl;
    for (size_t i = 0; i < v.robot_isolated_zone_list.size(); ++i)
    {
      s << indent << "  robot_isolated_zone_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robint_msgs::RobotIsolatedZone_<ContainerAllocator> >::stream(s, indent + "    ", v.robot_isolated_zone_list[i]);
    }
    s << indent << "self_isolated_zone_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.self_isolated_zone_uuid);
    s << indent << "robot_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ROBOTISOLATEDZONELIST_H
