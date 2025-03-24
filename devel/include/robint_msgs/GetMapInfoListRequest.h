// Generated by gencpp from file robint_msgs/GetMapInfoListRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETMAPINFOLISTREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETMAPINFOLISTREQUEST_H


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
struct GetMapInfoListRequest_
{
  typedef GetMapInfoListRequest_<ContainerAllocator> Type;

  GetMapInfoListRequest_()
    {
    }
  GetMapInfoListRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetMapInfoListRequest_

typedef ::robint_msgs::GetMapInfoListRequest_<std::allocator<void> > GetMapInfoListRequest;

typedef boost::shared_ptr< ::robint_msgs::GetMapInfoListRequest > GetMapInfoListRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetMapInfoListRequest const> GetMapInfoListRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetMapInfoListRequest";
  }

  static const char* value(const ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMapInfoListRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robint_msgs::GetMapInfoListRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETMAPINFOLISTREQUEST_H
