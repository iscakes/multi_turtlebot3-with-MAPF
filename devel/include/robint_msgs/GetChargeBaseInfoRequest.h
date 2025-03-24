// Generated by gencpp from file robint_msgs/GetChargeBaseInfoRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCHARGEBASEINFOREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETCHARGEBASEINFOREQUEST_H


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
struct GetChargeBaseInfoRequest_
{
  typedef GetChargeBaseInfoRequest_<ContainerAllocator> Type;

  GetChargeBaseInfoRequest_()
    {
    }
  GetChargeBaseInfoRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetChargeBaseInfoRequest_

typedef ::robint_msgs::GetChargeBaseInfoRequest_<std::allocator<void> > GetChargeBaseInfoRequest;

typedef boost::shared_ptr< ::robint_msgs::GetChargeBaseInfoRequest > GetChargeBaseInfoRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetChargeBaseInfoRequest const> GetChargeBaseInfoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetChargeBaseInfoRequest";
  }

  static const char* value(const ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetChargeBaseInfoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robint_msgs::GetChargeBaseInfoRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETCHARGEBASEINFOREQUEST_H
