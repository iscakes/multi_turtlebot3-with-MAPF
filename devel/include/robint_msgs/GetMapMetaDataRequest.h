// Generated by gencpp from file robint_msgs/GetMapMetaDataRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETMAPMETADATAREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETMAPMETADATAREQUEST_H


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
struct GetMapMetaDataRequest_
{
  typedef GetMapMetaDataRequest_<ContainerAllocator> Type;

  GetMapMetaDataRequest_()
    : map_name()  {
    }
  GetMapMetaDataRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;





  typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetMapMetaDataRequest_

typedef ::robint_msgs::GetMapMetaDataRequest_<std::allocator<void> > GetMapMetaDataRequest;

typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataRequest > GetMapMetaDataRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataRequest const> GetMapMetaDataRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25e928a2d4ff388c294895b7af935978";
  }

  static const char* value(const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25e928a2d4ff388cULL;
  static const uint64_t static_value2 = 0x294895b7af935978ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetMapMetaDataRequest";
  }

  static const char* value(const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
;
  }

  static const char* value(const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMapMetaDataRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetMapMetaDataRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETMAPMETADATAREQUEST_H
