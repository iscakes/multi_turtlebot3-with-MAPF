// Generated by gencpp from file robint_msgs/TrackPathCommandRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_TRACKPATHCOMMANDREQUEST_H
#define ROBINT_MSGS_MESSAGE_TRACKPATHCOMMANDREQUEST_H


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
struct TrackPathCommandRequest_
{
  typedef TrackPathCommandRequest_<ContainerAllocator> Type;

  TrackPathCommandRequest_()
    : command(0)
    , path_uuid()
    , mode(0)
    , count(0)
    , nav_to_start(false)
    , end_pose()  {
    }
  TrackPathCommandRequest_(const ContainerAllocator& _alloc)
    : command(0)
    , path_uuid(_alloc)
    , mode(0)
    , count(0)
    , nav_to_start(false)
    , end_pose(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _command_type;
  _command_type command;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _path_uuid_type;
  _path_uuid_type path_uuid;

   typedef uint8_t _mode_type;
  _mode_type mode;

   typedef int32_t _count_type;
  _count_type count;

   typedef uint8_t _nav_to_start_type;
  _nav_to_start_type nav_to_start;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _end_pose_type;
  _end_pose_type end_pose;



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
#if defined(_WIN32) && defined(BackAndForth)
  #undef BackAndForth
#endif
#if defined(_WIN32) && defined(Loop)
  #undef Loop
#endif

  enum {
    START = 0u,
    PAUSE = 1u,
    CONTINUE = 2u,
    STOP = 3u,
    BackAndForth = 0u,
    Loop = 1u,
  };


  typedef boost::shared_ptr< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TrackPathCommandRequest_

typedef ::robint_msgs::TrackPathCommandRequest_<std::allocator<void> > TrackPathCommandRequest;

typedef boost::shared_ptr< ::robint_msgs::TrackPathCommandRequest > TrackPathCommandRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::TrackPathCommandRequest const> TrackPathCommandRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command &&
    lhs.path_uuid == rhs.path_uuid &&
    lhs.mode == rhs.mode &&
    lhs.count == rhs.count &&
    lhs.nav_to_start == rhs.nav_to_start &&
    lhs.end_pose == rhs.end_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a7bb8eb8dbed3dbc2e8aee10544db34";
  }

  static const char* value(const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a7bb8eb8dbed3dbULL;
  static const uint64_t static_value2 = 0xc2e8aee10544db34ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/TrackPathCommandRequest";
  }

  static const char* value(const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'\n"
"uint8 START=0\n"
"uint8 PAUSE=1\n"
"uint8 CONTINUE=2\n"
"uint8 STOP=3\n"
"string path_uuid\n"
"uint8 mode\n"
"uint8 BackAndForth=0\n"
"uint8 Loop=1\n"
"int32 count\n"
"bool nav_to_start\n"
"geometry_msgs/Pose end_pose\n"
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

  static const char* value(const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.path_uuid);
      stream.next(m.mode);
      stream.next(m.count);
      stream.next(m.nav_to_start);
      stream.next(m.end_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackPathCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::TrackPathCommandRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
    s << indent << "path_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.path_uuid);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.count);
    s << indent << "nav_to_start: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.nav_to_start);
    s << indent << "end_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.end_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_TRACKPATHCOMMANDREQUEST_H
