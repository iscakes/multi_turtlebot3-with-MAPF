// Generated by gencpp from file robint_msgs/PositionStatus.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_POSITIONSTATUS_H
#define ROBINT_MSGS_MESSAGE_POSITIONSTATUS_H


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
struct PositionStatus_
{
  typedef PositionStatus_<ContainerAllocator> Type;

  PositionStatus_()
    : status(0)
    , localization_status(0)  {
    }
  PositionStatus_(const ContainerAllocator& _alloc)
    : status(0)
    , localization_status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;

   typedef uint8_t _localization_status_type;
  _localization_status_type localization_status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NORMAL)
  #undef NORMAL
#endif
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif
#if defined(_WIN32) && defined(LOCALIZATION_ERROR)
  #undef LOCALIZATION_ERROR
#endif

  enum {
    NORMAL = 0u,
    UNKNOWN = 1u,
    LOCALIZATION_ERROR = 2u,
  };


  typedef boost::shared_ptr< ::robint_msgs::PositionStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::PositionStatus_<ContainerAllocator> const> ConstPtr;

}; // struct PositionStatus_

typedef ::robint_msgs::PositionStatus_<std::allocator<void> > PositionStatus;

typedef boost::shared_ptr< ::robint_msgs::PositionStatus > PositionStatusPtr;
typedef boost::shared_ptr< ::robint_msgs::PositionStatus const> PositionStatusConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::PositionStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::PositionStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::PositionStatus_<ContainerAllocator1> & lhs, const ::robint_msgs::PositionStatus_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.localization_status == rhs.localization_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::PositionStatus_<ContainerAllocator1> & lhs, const ::robint_msgs::PositionStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::PositionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::PositionStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::PositionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::PositionStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::PositionStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::PositionStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::PositionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f79e0da31ae4de315253c90cc1b04d0";
  }

  static const char* value(const ::robint_msgs::PositionStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f79e0da31ae4de3ULL;
  static const uint64_t static_value2 = 0x15253c90cc1b04d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::PositionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/PositionStatus";
  }

  static const char* value(const ::robint_msgs::PositionStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::PositionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 status\n"
"uint8 localization_status\n"
"uint8 NORMAL=0\n"
"uint8 UNKNOWN=1\n"
"uint8 LOCALIZATION_ERROR=2\n"
;
  }

  static const char* value(const ::robint_msgs::PositionStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::PositionStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.localization_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PositionStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::PositionStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::PositionStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "localization_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.localization_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_POSITIONSTATUS_H
