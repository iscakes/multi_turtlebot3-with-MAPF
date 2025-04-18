// Generated by gencpp from file robint_msgs/MotionState.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_MOTIONSTATE_H
#define ROBINT_MSGS_MESSAGE_MOTIONSTATE_H


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
struct MotionState_
{
  typedef MotionState_<ContainerAllocator> Type;

  MotionState_()
    : header()
    , type()
    , distance(0.0)
    , theta(0.0)
    , r_state(0)
    , r_feedback(0)
    , finished(false)  {
    }
  MotionState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , type(_alloc)
    , distance(0.0)
    , theta(0.0)
    , r_state(0)
    , r_feedback(0)
    , finished(false)  {
  (void)_alloc;
    }



   typedef  ::robint_msgs::TaskStateHeader_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef float _distance_type;
  _distance_type distance;

   typedef float _theta_type;
  _theta_type theta;

   typedef uint8_t _r_state_type;
  _r_state_type r_state;

   typedef uint8_t _r_feedback_type;
  _r_feedback_type r_feedback;

   typedef uint8_t _finished_type;
  _finished_type finished;





  typedef boost::shared_ptr< ::robint_msgs::MotionState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::MotionState_<ContainerAllocator> const> ConstPtr;

}; // struct MotionState_

typedef ::robint_msgs::MotionState_<std::allocator<void> > MotionState;

typedef boost::shared_ptr< ::robint_msgs::MotionState > MotionStatePtr;
typedef boost::shared_ptr< ::robint_msgs::MotionState const> MotionStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::MotionState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::MotionState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::MotionState_<ContainerAllocator1> & lhs, const ::robint_msgs::MotionState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.type == rhs.type &&
    lhs.distance == rhs.distance &&
    lhs.theta == rhs.theta &&
    lhs.r_state == rhs.r_state &&
    lhs.r_feedback == rhs.r_feedback &&
    lhs.finished == rhs.finished;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::MotionState_<ContainerAllocator1> & lhs, const ::robint_msgs::MotionState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::MotionState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::MotionState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::MotionState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::MotionState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::MotionState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::MotionState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::MotionState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "03bec34e1a2d7252e47f816595320a27";
  }

  static const char* value(const ::robint_msgs::MotionState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x03bec34e1a2d7252ULL;
  static const uint64_t static_value2 = 0xe47f816595320a27ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::MotionState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/MotionState";
  }

  static const char* value(const ::robint_msgs::MotionState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::MotionState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TaskStateHeader header\n"
"string type      # \"move\" or \"rotate\"\n"
"float32 distance\n"
"float32 theta\n"
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

  static const char* value(const ::robint_msgs::MotionState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::MotionState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.type);
      stream.next(m.distance);
      stream.next(m.theta);
      stream.next(m.r_state);
      stream.next(m.r_feedback);
      stream.next(m.finished);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotionState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::MotionState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::MotionState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::robint_msgs::TaskStateHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
    s << indent << "theta: ";
    Printer<float>::stream(s, indent + "  ", v.theta);
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

#endif // ROBINT_MSGS_MESSAGE_MOTIONSTATE_H
