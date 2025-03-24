// Generated by gencpp from file robint_msgs/SetChassisLightRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_SETCHASSISLIGHTREQUEST_H
#define ROBINT_MSGS_MESSAGE_SETCHASSISLIGHTREQUEST_H


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
struct SetChassisLightRequest_
{
  typedef SetChassisLightRequest_<ContainerAllocator> Type;

  SetChassisLightRequest_()
    : id(0)
    , mode(0)  {
    }
  SetChassisLightRequest_(const ContainerAllocator& _alloc)
    : id(0)
    , mode(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef uint8_t _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetChassisLightRequest_

typedef ::robint_msgs::SetChassisLightRequest_<std::allocator<void> > SetChassisLightRequest;

typedef boost::shared_ptr< ::robint_msgs::SetChassisLightRequest > SetChassisLightRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::SetChassisLightRequest const> SetChassisLightRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fe7b4831f7d91faa5bcff5bd2b5621be";
  }

  static const char* value(const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfe7b4831f7d91faaULL;
  static const uint64_t static_value2 = 0x5bcff5bd2b5621beULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/SetChassisLightRequest";
  }

  static const char* value(const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n"
"uint8 mode\n"
;
  }

  static const char* value(const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetChassisLightRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::SetChassisLightRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::SetChassisLightRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_SETCHASSISLIGHTREQUEST_H
