// Generated by gencpp from file robint_msgs/DeleteLocationRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_DELETELOCATIONREQUEST_H
#define ROBINT_MSGS_MESSAGE_DELETELOCATIONREQUEST_H


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
struct DeleteLocationRequest_
{
  typedef DeleteLocationRequest_<ContainerAllocator> Type;

  DeleteLocationRequest_()
    : map_name()
    , location_name()  {
    }
  DeleteLocationRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , location_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_name_type;
  _location_name_type location_name;





  typedef boost::shared_ptr< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DeleteLocationRequest_

typedef ::robint_msgs::DeleteLocationRequest_<std::allocator<void> > DeleteLocationRequest;

typedef boost::shared_ptr< ::robint_msgs::DeleteLocationRequest > DeleteLocationRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::DeleteLocationRequest const> DeleteLocationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.location_name == rhs.location_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8b6da07428cd29489f6a4221639642c";
  }

  static const char* value(const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8b6da07428cd294ULL;
  static const uint64_t static_value2 = 0x89f6a4221639642cULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/DeleteLocationRequest";
  }

  static const char* value(const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"string location_name\n"
;
  }

  static const char* value(const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.location_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeleteLocationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::DeleteLocationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::DeleteLocationRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "location_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_DELETELOCATIONREQUEST_H
