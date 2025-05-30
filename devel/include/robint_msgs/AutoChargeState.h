// Generated by gencpp from file robint_msgs/AutoChargeState.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_AUTOCHARGESTATE_H
#define ROBINT_MSGS_MESSAGE_AUTOCHARGESTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/TaskStateHeader.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct AutoChargeState_
{
  typedef AutoChargeState_<ContainerAllocator> Type;

  AutoChargeState_()
    : header()
    , state()
    , r_state(0)
    , r_feedback(0)
    , finished(false)  {
    }
  AutoChargeState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , state(_alloc)
    , r_state(0)
    , r_feedback(0)
    , finished(false)  {
  (void)_alloc;
    }



   typedef  ::robint_msgs::TaskStateHeader_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_type;
  _state_type state;

   typedef uint8_t _r_state_type;
  _r_state_type r_state;

   typedef uint8_t _r_feedback_type;
  _r_feedback_type r_feedback;

   typedef uint8_t _finished_type;
  _finished_type finished;





  typedef boost::shared_ptr< ::robint_msgs::AutoChargeState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::AutoChargeState_<ContainerAllocator> const> ConstPtr;

}; // struct AutoChargeState_

typedef ::robint_msgs::AutoChargeState_<std::allocator<void> > AutoChargeState;

typedef boost::shared_ptr< ::robint_msgs::AutoChargeState > AutoChargeStatePtr;
typedef boost::shared_ptr< ::robint_msgs::AutoChargeState const> AutoChargeStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::AutoChargeState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::AutoChargeState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::AutoChargeState_<ContainerAllocator1> & lhs, const ::robint_msgs::AutoChargeState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.state == rhs.state &&
    lhs.r_state == rhs.r_state &&
    lhs.r_feedback == rhs.r_feedback &&
    lhs.finished == rhs.finished;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::AutoChargeState_<ContainerAllocator1> & lhs, const ::robint_msgs::AutoChargeState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::AutoChargeState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::AutoChargeState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::AutoChargeState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63c0b5b6b1e424d8bdc6711f167d411a";
  }

  static const char* value(const ::robint_msgs::AutoChargeState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63c0b5b6b1e424d8ULL;
  static const uint64_t static_value2 = 0xbdc6711f167d411aULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/AutoChargeState";
  }

  static const char* value(const ::robint_msgs::AutoChargeState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TaskStateHeader header\n"
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

  static const char* value(const ::robint_msgs::AutoChargeState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.state);
      stream.next(m.r_state);
      stream.next(m.r_feedback);
      stream.next(m.finished);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutoChargeState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::AutoChargeState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::AutoChargeState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::robint_msgs::TaskStateHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state);
    s << indent << "r_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.r_state);
    s << indent << "r_feedback: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.r_feedback);
    s << indent << "finished: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.finished);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_AUTOCHARGESTATE_H
