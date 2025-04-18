// Generated by gencpp from file robint_msgs/GetPatrolStateResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETPATROLSTATERESPONSE_H
#define ROBINT_MSGS_MESSAGE_GETPATROLSTATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/PatrolState.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct GetPatrolStateResponse_
{
  typedef GetPatrolStateResponse_<ContainerAllocator> Type;

  GetPatrolStateResponse_()
    : patrol_state()
    , result(false)  {
    }
  GetPatrolStateResponse_(const ContainerAllocator& _alloc)
    : patrol_state(_alloc)
    , result(false)  {
  (void)_alloc;
    }



   typedef  ::robint_msgs::PatrolState_<ContainerAllocator>  _patrol_state_type;
  _patrol_state_type patrol_state;

   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPatrolStateResponse_

typedef ::robint_msgs::GetPatrolStateResponse_<std::allocator<void> > GetPatrolStateResponse;

typedef boost::shared_ptr< ::robint_msgs::GetPatrolStateResponse > GetPatrolStateResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GetPatrolStateResponse const> GetPatrolStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.patrol_state == rhs.patrol_state &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7e3cb361868f6beb35b772468bb8cf09";
  }

  static const char* value(const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7e3cb361868f6bebULL;
  static const uint64_t static_value2 = 0x35b772468bb8cf09ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetPatrolStateResponse";
  }

  static const char* value(const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "PatrolState patrol_state\n"
"bool result\n"
"\n"
"================================================================================\n"
"MSG: robint_msgs/PatrolState\n"
"TaskStateHeader header\n"
"string state             # \"Running\", \"Stop\", \"Pause\"\n"
"string current_route_name\n"
"string current_goal_name\n"
"bool current_goal_isReached\n"
"bool finished\n"
"================================================================================\n"
"MSG: robint_msgs/TaskStateHeader\n"
"bool activate  # 该任务是否处于激活状态\n"
"time start_time\n"
"time stop_time\n"
;
  }

  static const char* value(const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.patrol_state);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPatrolStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetPatrolStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "patrol_state: ";
    s << std::endl;
    Printer< ::robint_msgs::PatrolState_<ContainerAllocator> >::stream(s, indent + "  ", v.patrol_state);
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETPATROLSTATERESPONSE_H
