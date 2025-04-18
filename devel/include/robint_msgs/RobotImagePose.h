// Generated by gencpp from file robint_msgs/RobotImagePose.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ROBOTIMAGEPOSE_H
#define ROBINT_MSGS_MESSAGE_ROBOTIMAGEPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct RobotImagePose_
{
  typedef RobotImagePose_<ContainerAllocator> Type;

  RobotImagePose_()
    : map_uuid()
    , image_pose()
    , normal(false)  {
    }
  RobotImagePose_(const ContainerAllocator& _alloc)
    : map_uuid(_alloc)
    , image_pose(_alloc)
    , normal(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_uuid_type;
  _map_uuid_type map_uuid;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _image_pose_type;
  _image_pose_type image_pose;

   typedef uint8_t _normal_type;
  _normal_type normal;





  typedef boost::shared_ptr< ::robint_msgs::RobotImagePose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::RobotImagePose_<ContainerAllocator> const> ConstPtr;

}; // struct RobotImagePose_

typedef ::robint_msgs::RobotImagePose_<std::allocator<void> > RobotImagePose;

typedef boost::shared_ptr< ::robint_msgs::RobotImagePose > RobotImagePosePtr;
typedef boost::shared_ptr< ::robint_msgs::RobotImagePose const> RobotImagePoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::RobotImagePose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::RobotImagePose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::RobotImagePose_<ContainerAllocator1> & lhs, const ::robint_msgs::RobotImagePose_<ContainerAllocator2> & rhs)
{
  return lhs.map_uuid == rhs.map_uuid &&
    lhs.image_pose == rhs.image_pose &&
    lhs.normal == rhs.normal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::RobotImagePose_<ContainerAllocator1> & lhs, const ::robint_msgs::RobotImagePose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RobotImagePose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RobotImagePose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RobotImagePose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63c6918d070f32a3168513d2d33658bd";
  }

  static const char* value(const ::robint_msgs::RobotImagePose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63c6918d070f32a3ULL;
  static const uint64_t static_value2 = 0x168513d2d33658bdULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/RobotImagePose";
  }

  static const char* value(const ::robint_msgs::RobotImagePose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_uuid\n"
"geometry_msgs/Pose2D image_pose\n"
"bool normal\n"
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

  static const char* value(const ::robint_msgs::RobotImagePose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_uuid);
      stream.next(m.image_pose);
      stream.next(m.normal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotImagePose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::RobotImagePose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::RobotImagePose_<ContainerAllocator>& v)
  {
    s << indent << "map_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_uuid);
    s << indent << "image_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.image_pose);
    s << indent << "normal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.normal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ROBOTIMAGEPOSE_H
