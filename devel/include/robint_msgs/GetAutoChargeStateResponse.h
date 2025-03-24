// Generated by gencpp from file robint_msgs/GetAutoChargeStateResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETAUTOCHARGESTATERESPONSE_H
#define ROBINT_MSGS_MESSAGE_GETAUTOCHARGESTATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/AutoChargeState.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct GetAutoChargeStateResponse_
{
  typedef GetAutoChargeStateResponse_<ContainerAllocator> Type;

  GetAutoChargeStateResponse_()
    : auto_charge_state()
    , result(false)  {
    }
  GetAutoChargeStateResponse_(const ContainerAllocator& _alloc)
    : auto_charge_state(_alloc)
    , result(false)  {
  (void)_alloc;
    }



   typedef  ::robint_msgs::AutoChargeState_<ContainerAllocator>  _auto_charge_state_type;
  _auto_charge_state_type auto_charge_state;

   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetAutoChargeStateResponse_

typedef ::robint_msgs::GetAutoChargeStateResponse_<std::allocator<void> > GetAutoChargeStateResponse;

typedef boost::shared_ptr< ::robint_msgs::GetAutoChargeStateResponse > GetAutoChargeStateResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GetAutoChargeStateResponse const> GetAutoChargeStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.auto_charge_state == rhs.auto_charge_state &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f6d99ed8da38328f3d700d808197028c";
  }

  static const char* value(const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf6d99ed8da38328fULL;
  static const uint64_t static_value2 = 0x3d700d808197028cULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetAutoChargeStateResponse";
  }

  static const char* value(const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "AutoChargeState auto_charge_state\n"
"bool result\n"
"\n"
"================================================================================\n"
"MSG: robint_msgs/AutoChargeState\n"
"TaskStateHeader header\n"
"string state\n"
"uint8 r_state\n"
"uint8 r_feedback\n"
"bool finished\n"
"================================================================================\n"
"MSG: robint_msgs/TaskStateHeader\n"
"bool activate  # 该任务是否处于激活状态\n"
"time start_time\n"
"time stop_time\n"
;
  }

  static const char* value(const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.auto_charge_state);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetAutoChargeStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetAutoChargeStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "auto_charge_state: ";
    s << std::endl;
    Printer< ::robint_msgs::AutoChargeState_<ContainerAllocator> >::stream(s, indent + "  ", v.auto_charge_state);
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETAUTOCHARGESTATERESPONSE_H
