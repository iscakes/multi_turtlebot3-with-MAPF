// Generated by gencpp from file robint_msgs/UpdateNavGoalRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_UPDATENAVGOALREQUEST_H
#define ROBINT_MSGS_MESSAGE_UPDATENAVGOALREQUEST_H


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
struct UpdateNavGoalRequest_
{
  typedef UpdateNavGoalRequest_<ContainerAllocator> Type;

  UpdateNavGoalRequest_()
    : target_pose()  {
    }
  UpdateNavGoalRequest_(const ContainerAllocator& _alloc)
    : target_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;





  typedef boost::shared_ptr< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateNavGoalRequest_

typedef ::robint_msgs::UpdateNavGoalRequest_<std::allocator<void> > UpdateNavGoalRequest;

typedef boost::shared_ptr< ::robint_msgs::UpdateNavGoalRequest > UpdateNavGoalRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::UpdateNavGoalRequest const> UpdateNavGoalRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator2> & rhs)
{
  return lhs.target_pose == rhs.target_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "257d089627d7eb7136c24d3593d05a16";
  }

  static const char* value(const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x257d089627d7eb71ULL;
  static const uint64_t static_value2 = 0x36c24d3593d05a16ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/UpdateNavGoalRequest";
  }

  static const char* value(const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped target_pose\n"
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
;
  }

  static const char* value(const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateNavGoalRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::UpdateNavGoalRequest_<ContainerAllocator>& v)
  {
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_UPDATENAVGOALREQUEST_H
