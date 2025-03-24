// Generated by gencpp from file robint_msgs/StateDiagnostic.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_STATEDIAGNOSTIC_H
#define ROBINT_MSGS_MESSAGE_STATEDIAGNOSTIC_H


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
struct StateDiagnostic_
{
  typedef StateDiagnostic_<ContainerAllocator> Type;

  StateDiagnostic_()
    : hardware_name()
    , is_ok(false)  {
    }
  StateDiagnostic_(const ContainerAllocator& _alloc)
    : hardware_name(_alloc)
    , is_ok(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _hardware_name_type;
  _hardware_name_type hardware_name;

   typedef uint8_t _is_ok_type;
  _is_ok_type is_ok;





  typedef boost::shared_ptr< ::robint_msgs::StateDiagnostic_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::StateDiagnostic_<ContainerAllocator> const> ConstPtr;

}; // struct StateDiagnostic_

typedef ::robint_msgs::StateDiagnostic_<std::allocator<void> > StateDiagnostic;

typedef boost::shared_ptr< ::robint_msgs::StateDiagnostic > StateDiagnosticPtr;
typedef boost::shared_ptr< ::robint_msgs::StateDiagnostic const> StateDiagnosticConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::StateDiagnostic_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::StateDiagnostic_<ContainerAllocator1> & lhs, const ::robint_msgs::StateDiagnostic_<ContainerAllocator2> & rhs)
{
  return lhs.hardware_name == rhs.hardware_name &&
    lhs.is_ok == rhs.is_ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::StateDiagnostic_<ContainerAllocator1> & lhs, const ::robint_msgs::StateDiagnostic_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::StateDiagnostic_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::StateDiagnostic_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::StateDiagnostic_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "639ff558d4ee8d1752d1e9ef7c8e04f2";
  }

  static const char* value(const ::robint_msgs::StateDiagnostic_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x639ff558d4ee8d17ULL;
  static const uint64_t static_value2 = 0x52d1e9ef7c8e04f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/StateDiagnostic";
  }

  static const char* value(const ::robint_msgs::StateDiagnostic_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string hardware_name\n"
"bool is_ok\n"
;
  }

  static const char* value(const ::robint_msgs::StateDiagnostic_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.hardware_name);
      stream.next(m.is_ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StateDiagnostic_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::StateDiagnostic_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::StateDiagnostic_<ContainerAllocator>& v)
  {
    s << indent << "hardware_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.hardware_name);
    s << indent << "is_ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_STATEDIAGNOSTIC_H
