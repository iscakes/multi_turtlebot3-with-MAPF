// Generated by gencpp from file robint_msgs/MappingCommandRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_MAPPINGCOMMANDREQUEST_H
#define ROBINT_MSGS_MESSAGE_MAPPINGCOMMANDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robint_msgs
{
template <class ContainerAllocator>
struct MappingCommandRequest_
{
  typedef MappingCommandRequest_<ContainerAllocator> Type;

  MappingCommandRequest_()
    : command(0)
    , exploration(false)
    , low_resolution(false)  {
    }
  MappingCommandRequest_(const ContainerAllocator& _alloc)
    : command(0)
    , exploration(false)
    , low_resolution(false)  {
  (void)_alloc;
    }



   typedef uint8_t _command_type;
  _command_type command;

   typedef uint8_t _exploration_type;
  _exploration_type exploration;

   typedef uint8_t _low_resolution_type;
  _low_resolution_type low_resolution;



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

  enum {
    START = 0u,
    PAUSE = 1u,
    CONTINUE = 2u,
    STOP = 3u,
  };


  typedef boost::shared_ptr< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MappingCommandRequest_

typedef ::robint_msgs::MappingCommandRequest_<std::allocator<void> > MappingCommandRequest;

typedef boost::shared_ptr< ::robint_msgs::MappingCommandRequest > MappingCommandRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::MappingCommandRequest const> MappingCommandRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::MappingCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::MappingCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::MappingCommandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command &&
    lhs.exploration == rhs.exploration &&
    lhs.low_resolution == rhs.low_resolution;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::MappingCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::MappingCommandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2cadc3d6ba9d54de585a2c6bce8b8c4c";
  }

  static const char* value(const ::robint_msgs::MappingCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2cadc3d6ba9d54deULL;
  static const uint64_t static_value2 = 0x585a2c6bce8b8c4cULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/MappingCommandRequest";
  }

  static const char* value(const ::robint_msgs::MappingCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'\n"
"uint8 START=0\n"
"uint8 PAUSE=1\n"
"uint8 CONTINUE=2\n"
"uint8 STOP=3\n"
"bool exploration\n"
"bool low_resolution\n"
;
  }

  static const char* value(const ::robint_msgs::MappingCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.exploration);
      stream.next(m.low_resolution);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MappingCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::MappingCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::MappingCommandRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
    s << indent << "exploration: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.exploration);
    s << indent << "low_resolution: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.low_resolution);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_MAPPINGCOMMANDREQUEST_H
