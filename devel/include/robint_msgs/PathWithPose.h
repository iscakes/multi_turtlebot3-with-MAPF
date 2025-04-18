// Generated by gencpp from file robint_msgs/PathWithPose.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_PATHWITHPOSE_H
#define ROBINT_MSGS_MESSAGE_PATHWITHPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct PathWithPose_
{
  typedef PathWithPose_<ContainerAllocator> Type;

  PathWithPose_()
    : id(0)
    , type()
    , poses()  {
    }
  PathWithPose_(const ContainerAllocator& _alloc)
    : id(0)
    , type(_alloc)
    , poses(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::PoseStamped_<ContainerAllocator> >> _poses_type;
  _poses_type poses;





  typedef boost::shared_ptr< ::robint_msgs::PathWithPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::PathWithPose_<ContainerAllocator> const> ConstPtr;

}; // struct PathWithPose_

typedef ::robint_msgs::PathWithPose_<std::allocator<void> > PathWithPose;

typedef boost::shared_ptr< ::robint_msgs::PathWithPose > PathWithPosePtr;
typedef boost::shared_ptr< ::robint_msgs::PathWithPose const> PathWithPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::PathWithPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::PathWithPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::PathWithPose_<ContainerAllocator1> & lhs, const ::robint_msgs::PathWithPose_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.type == rhs.type &&
    lhs.poses == rhs.poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::PathWithPose_<ContainerAllocator1> & lhs, const ::robint_msgs::PathWithPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::PathWithPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::PathWithPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::PathWithPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::PathWithPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::PathWithPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::PathWithPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::PathWithPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec221984b1c5baa24faad852642bf206";
  }

  static const char* value(const ::robint_msgs::PathWithPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec221984b1c5baa2ULL;
  static const uint64_t static_value2 = 0x4faad852642bf206ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::PathWithPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/PathWithPose";
  }

  static const char* value(const ::robint_msgs::PathWithPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::PathWithPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 id\n"
"string type\n"
"geometry_msgs/PoseStamped[] poses\n"
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
;
  }

  static const char* value(const ::robint_msgs::PathWithPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::PathWithPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.type);
      stream.next(m.poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathWithPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::PathWithPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::PathWithPose_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_PATHWITHPOSE_H
