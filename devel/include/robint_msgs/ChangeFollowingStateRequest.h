// Generated by gencpp from file robint_msgs/ChangeFollowingStateRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_CHANGEFOLLOWINGSTATEREQUEST_H
#define ROBINT_MSGS_MESSAGE_CHANGEFOLLOWINGSTATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/FollowingState.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct ChangeFollowingStateRequest_
{
  typedef ChangeFollowingStateRequest_<ContainerAllocator> Type;

  ChangeFollowingStateRequest_()
    : state()  {
    }
  ChangeFollowingStateRequest_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robint_msgs::FollowingState_<ContainerAllocator>  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeFollowingStateRequest_

typedef ::robint_msgs::ChangeFollowingStateRequest_<std::allocator<void> > ChangeFollowingStateRequest;

typedef boost::shared_ptr< ::robint_msgs::ChangeFollowingStateRequest > ChangeFollowingStateRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::ChangeFollowingStateRequest const> ChangeFollowingStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b9d3b9f28953ac6cfe525c20a32b87c0";
  }

  static const char* value(const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb9d3b9f28953ac6cULL;
  static const uint64_t static_value2 = 0xfe525c20a32b87c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/ChangeFollowingStateRequest";
  }

  static const char* value(const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "FollowingState state\n"
"\n"
"================================================================================\n"
"MSG: robint_msgs/FollowingState\n"
"TaskStateHeader header\n"
"uint8 status\n"
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

  static const char* value(const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeFollowingStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::ChangeFollowingStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    s << std::endl;
    Printer< ::robint_msgs::FollowingState_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_CHANGEFOLLOWINGSTATEREQUEST_H
