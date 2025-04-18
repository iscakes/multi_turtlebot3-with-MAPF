// Generated by gencpp from file robint_msgs/PatrolCommandRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_PATROLCOMMANDREQUEST_H
#define ROBINT_MSGS_MESSAGE_PATROLCOMMANDREQUEST_H


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
struct PatrolCommandRequest_
{
  typedef PatrolCommandRequest_<ContainerAllocator> Type;

  PatrolCommandRequest_()
    : map_name()
    , route_name()
    , command()  {
    }
  PatrolCommandRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , route_name(_alloc)
    , command(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _route_name_type;
  _route_name_type route_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PatrolCommandRequest_

typedef ::robint_msgs::PatrolCommandRequest_<std::allocator<void> > PatrolCommandRequest;

typedef boost::shared_ptr< ::robint_msgs::PatrolCommandRequest > PatrolCommandRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::PatrolCommandRequest const> PatrolCommandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.route_name == rhs.route_name &&
    lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d5b6ebfbb3940e4b869b2f48ebfb1bfd";
  }

  static const char* value(const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd5b6ebfbb3940e4bULL;
  static const uint64_t static_value2 = 0x869b2f48ebfb1bfdULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/PatrolCommandRequest";
  }

  static const char* value(const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"string route_name\n"
"string command       # 'Start', 'Pause', 'Continue', 'Stop'\n"
;
  }

  static const char* value(const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.route_name);
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PatrolCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::PatrolCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::PatrolCommandRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "route_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.route_name);
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_PATROLCOMMANDREQUEST_H
