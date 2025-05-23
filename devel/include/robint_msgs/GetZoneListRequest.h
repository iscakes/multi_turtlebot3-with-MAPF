// Generated by gencpp from file robint_msgs/GetZoneListRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETZONELISTREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETZONELISTREQUEST_H


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
struct GetZoneListRequest_
{
  typedef GetZoneListRequest_<ContainerAllocator> Type;

  GetZoneListRequest_()
    : map_name()
    , zone_mode(0)
    , map_uuid()  {
    }
  GetZoneListRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , zone_mode(0)
    , map_uuid(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef uint8_t _zone_mode_type;
  _zone_mode_type zone_mode;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_uuid_type;
  _map_uuid_type map_uuid;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(IMAGE)
  #undef IMAGE
#endif
#if defined(_WIN32) && defined(WORLD)
  #undef WORLD
#endif

  enum {
    IMAGE = 0u,
    WORLD = 1u,
  };


  typedef boost::shared_ptr< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetZoneListRequest_

typedef ::robint_msgs::GetZoneListRequest_<std::allocator<void> > GetZoneListRequest;

typedef boost::shared_ptr< ::robint_msgs::GetZoneListRequest > GetZoneListRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetZoneListRequest const> GetZoneListRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetZoneListRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetZoneListRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetZoneListRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.zone_mode == rhs.zone_mode &&
    lhs.map_uuid == rhs.map_uuid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetZoneListRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetZoneListRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eeb9e24a844de76f2bf29bdcd54f0c6a";
  }

  static const char* value(const ::robint_msgs::GetZoneListRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeeb9e24a844de76fULL;
  static const uint64_t static_value2 = 0x2bf29bdcd54f0c6aULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetZoneListRequest";
  }

  static const char* value(const ::robint_msgs::GetZoneListRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"uint8 zone_mode\n"
"uint8 IMAGE=0\n"
"uint8 WORLD=1\n"
"string map_uuid\n"
;
  }

  static const char* value(const ::robint_msgs::GetZoneListRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.zone_mode);
      stream.next(m.map_uuid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetZoneListRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetZoneListRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetZoneListRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "zone_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.zone_mode);
    s << indent << "map_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_uuid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETZONELISTREQUEST_H
