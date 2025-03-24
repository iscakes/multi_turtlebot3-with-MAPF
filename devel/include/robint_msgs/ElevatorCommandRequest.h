// Generated by gencpp from file robint_msgs/ElevatorCommandRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ELEVATORCOMMANDREQUEST_H
#define ROBINT_MSGS_MESSAGE_ELEVATORCOMMANDREQUEST_H


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
struct ElevatorCommandRequest_
{
  typedef ElevatorCommandRequest_<ContainerAllocator> Type;

  ElevatorCommandRequest_()
    : location_name()
    , location_uuid()
    , command(0)
    , type(0)
    , goal()  {
    }
  ElevatorCommandRequest_(const ContainerAllocator& _alloc)
    : location_name(_alloc)
    , location_uuid(_alloc)
    , command(0)
    , type(0)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_name_type;
  _location_name_type location_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_uuid_type;
  _location_uuid_type location_uuid;

   typedef uint8_t _command_type;
  _command_type command;

   typedef uint8_t _type_type;
  _type_type type;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _goal_type;
  _goal_type goal;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(START)
  #undef START
#endif
#if defined(_WIN32) && defined(PAUSE)
  #undef PAUSE
#endif
#if defined(_WIN32) && defined(CONTINUE)
  #undef CONTINUE
#endif
#if defined(_WIN32) && defined(STOP)
  #undef STOP
#endif
#if defined(_WIN32) && defined(ENTER)
  #undef ENTER
#endif
#if defined(_WIN32) && defined(EXIT)
  #undef EXIT
#endif

  enum {
    START = 0u,
    PAUSE = 1u,
    CONTINUE = 2u,
    STOP = 3u,
    ENTER = 4u,
    EXIT = 5u,
  };


  typedef boost::shared_ptr< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ElevatorCommandRequest_

typedef ::robint_msgs::ElevatorCommandRequest_<std::allocator<void> > ElevatorCommandRequest;

typedef boost::shared_ptr< ::robint_msgs::ElevatorCommandRequest > ElevatorCommandRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::ElevatorCommandRequest const> ElevatorCommandRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.location_name == rhs.location_name &&
    lhs.location_uuid == rhs.location_uuid &&
    lhs.command == rhs.command &&
    lhs.type == rhs.type &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2ad541e10e648717712786c5bc347d8";
  }

  static const char* value(const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2ad541e10e64871ULL;
  static const uint64_t static_value2 = 0x7712786c5bc347d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/ElevatorCommandRequest";
  }

  static const char* value(const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string location_name\n"
"string location_uuid\n"
"uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'\n"
"uint8 START=0\n"
"uint8 PAUSE=1\n"
"uint8 CONTINUE=2\n"
"uint8 STOP=3\n"
"uint8 type\n"
"uint8 ENTER=4\n"
"uint8 EXIT=5\n"
"geometry_msgs/PoseStamped goal\n"
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

  static const char* value(const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.location_name);
      stream.next(m.location_uuid);
      stream.next(m.command);
      stream.next(m.type);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ElevatorCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::ElevatorCommandRequest_<ContainerAllocator>& v)
  {
    s << indent << "location_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_name);
    s << indent << "location_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_uuid);
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ELEVATORCOMMANDREQUEST_H
