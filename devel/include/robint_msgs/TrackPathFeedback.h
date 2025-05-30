// Generated by gencpp from file robint_msgs/TrackPathFeedback.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_TRACKPATHFEEDBACK_H
#define ROBINT_MSGS_MESSAGE_TRACKPATHFEEDBACK_H


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
struct TrackPathFeedback_
{
  typedef TrackPathFeedback_<ContainerAllocator> Type;

  TrackPathFeedback_()
    : base_position()
    , current_loop_index(0)
    , progress(0.0)
    , high_speed_status(false)
    , subtask()
    , state()
    , status(0)  {
    }
  TrackPathFeedback_(const ContainerAllocator& _alloc)
    : base_position(_alloc)
    , current_loop_index(0)
    , progress(0.0)
    , high_speed_status(false)
    , subtask(_alloc)
    , state(_alloc)
    , status(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _base_position_type;
  _base_position_type base_position;

   typedef int32_t _current_loop_index_type;
  _current_loop_index_type current_loop_index;

   typedef float _progress_type;
  _progress_type progress;

   typedef uint8_t _high_speed_status_type;
  _high_speed_status_type high_speed_status;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _subtask_type;
  _subtask_type subtask;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_type;
  _state_type state;

   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct TrackPathFeedback_

typedef ::robint_msgs::TrackPathFeedback_<std::allocator<void> > TrackPathFeedback;

typedef boost::shared_ptr< ::robint_msgs::TrackPathFeedback > TrackPathFeedbackPtr;
typedef boost::shared_ptr< ::robint_msgs::TrackPathFeedback const> TrackPathFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::TrackPathFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::TrackPathFeedback_<ContainerAllocator1> & lhs, const ::robint_msgs::TrackPathFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.base_position == rhs.base_position &&
    lhs.current_loop_index == rhs.current_loop_index &&
    lhs.progress == rhs.progress &&
    lhs.high_speed_status == rhs.high_speed_status &&
    lhs.subtask == rhs.subtask &&
    lhs.state == rhs.state &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::TrackPathFeedback_<ContainerAllocator1> & lhs, const ::robint_msgs::TrackPathFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb8e7ca299d8bec46f0c1dba808f611c";
  }

  static const char* value(const ::robint_msgs::TrackPathFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb8e7ca299d8bec4ULL;
  static const uint64_t static_value2 = 0x6f0c1dba808f611cULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/TrackPathFeedback";
  }

  static const char* value(const ::robint_msgs::TrackPathFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"geometry_msgs/PoseStamped base_position\n"
"int32 current_loop_index\n"
"float32 progress\n"
"bool high_speed_status\n"
"string subtask # \"None\", \"Follow_Wall\", \"Track_OuterPath\", \"Track_InnerPath\"\n"
"string state\n"
"uint8 status\n"
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

  static const char* value(const ::robint_msgs::TrackPathFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base_position);
      stream.next(m.current_loop_index);
      stream.next(m.progress);
      stream.next(m.high_speed_status);
      stream.next(m.subtask);
      stream.next(m.state);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackPathFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::TrackPathFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::TrackPathFeedback_<ContainerAllocator>& v)
  {
    s << indent << "base_position: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.base_position);
    s << indent << "current_loop_index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_loop_index);
    s << indent << "progress: ";
    Printer<float>::stream(s, indent + "  ", v.progress);
    s << indent << "high_speed_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.high_speed_status);
    s << indent << "subtask: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.subtask);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_TRACKPATHFEEDBACK_H
