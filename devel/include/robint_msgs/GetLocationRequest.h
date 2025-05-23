// Generated by gencpp from file robint_msgs/GetLocationRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETLOCATIONREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETLOCATIONREQUEST_H


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
struct GetLocationRequest_
{
  typedef GetLocationRequest_<ContainerAllocator> Type;

  GetLocationRequest_()
    : map_name()
    , location_name()
    , location_uuid()  {
    }
  GetLocationRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , location_name(_alloc)
    , location_uuid(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_name_type;
  _location_name_type location_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_uuid_type;
  _location_uuid_type location_uuid;





  typedef boost::shared_ptr< ::robint_msgs::GetLocationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetLocationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetLocationRequest_

typedef ::robint_msgs::GetLocationRequest_<std::allocator<void> > GetLocationRequest;

typedef boost::shared_ptr< ::robint_msgs::GetLocationRequest > GetLocationRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetLocationRequest const> GetLocationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetLocationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetLocationRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetLocationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.location_name == rhs.location_name &&
    lhs.location_uuid == rhs.location_uuid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetLocationRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetLocationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetLocationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dfc872a2841f0fe244ddc114c7ee2c84";
  }

  static const char* value(const ::robint_msgs::GetLocationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdfc872a2841f0fe2ULL;
  static const uint64_t static_value2 = 0x44ddc114c7ee2c84ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetLocationRequest";
  }

  static const char* value(const ::robint_msgs::GetLocationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"string location_name\n"
"string location_uuid\n"
;
  }

  static const char* value(const ::robint_msgs::GetLocationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.location_name);
      stream.next(m.location_uuid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetLocationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetLocationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetLocationRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "location_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_name);
    s << indent << "location_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_uuid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETLOCATIONREQUEST_H
