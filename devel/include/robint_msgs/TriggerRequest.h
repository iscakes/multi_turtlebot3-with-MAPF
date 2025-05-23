// Generated by gencpp from file robint_msgs/TriggerRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_TRIGGERREQUEST_H
#define ROBINT_MSGS_MESSAGE_TRIGGERREQUEST_H


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
struct TriggerRequest_
{
  typedef TriggerRequest_<ContainerAllocator> Type;

  TriggerRequest_()
    : data(false)  {
    }
  TriggerRequest_(const ContainerAllocator& _alloc)
    : data(false)  {
  (void)_alloc;
    }



   typedef uint8_t _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::robint_msgs::TriggerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::TriggerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TriggerRequest_

typedef ::robint_msgs::TriggerRequest_<std::allocator<void> > TriggerRequest;

typedef boost::shared_ptr< ::robint_msgs::TriggerRequest > TriggerRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::TriggerRequest const> TriggerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::TriggerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::TriggerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::TriggerRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::TriggerRequest_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::TriggerRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::TriggerRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::TriggerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::TriggerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::TriggerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b94c1b53db61fb6aed406028ad6332a";
  }

  static const char* value(const ::robint_msgs::TriggerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b94c1b53db61fb6ULL;
  static const uint64_t static_value2 = 0xaed406028ad6332aULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/TriggerRequest";
  }

  static const char* value(const ::robint_msgs::TriggerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool data\n"
;
  }

  static const char* value(const ::robint_msgs::TriggerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TriggerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::TriggerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::TriggerRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_TRIGGERREQUEST_H
