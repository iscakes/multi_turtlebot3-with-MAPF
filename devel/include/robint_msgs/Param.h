// Generated by gencpp from file robint_msgs/Param.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_PARAM_H
#define ROBINT_MSGS_MESSAGE_PARAM_H


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
struct Param_
{
  typedef Param_<ContainerAllocator> Type;

  Param_()
    : name()
    , type()
    , value()  {
    }
  Param_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , type(_alloc)
    , value(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::robint_msgs::Param_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::Param_<ContainerAllocator> const> ConstPtr;

}; // struct Param_

typedef ::robint_msgs::Param_<std::allocator<void> > Param;

typedef boost::shared_ptr< ::robint_msgs::Param > ParamPtr;
typedef boost::shared_ptr< ::robint_msgs::Param const> ParamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::Param_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::Param_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::Param_<ContainerAllocator1> & lhs, const ::robint_msgs::Param_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.type == rhs.type &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::Param_<ContainerAllocator1> & lhs, const ::robint_msgs::Param_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::Param_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::Param_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::Param_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::Param_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::Param_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::Param_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::Param_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a06900160ca5ec95f57a5ec28eaaa33";
  }

  static const char* value(const ::robint_msgs::Param_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a06900160ca5ec9ULL;
  static const uint64_t static_value2 = 0x5f57a5ec28eaaa33ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::Param_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/Param";
  }

  static const char* value(const ::robint_msgs::Param_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::Param_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"string type    # \"String\", \"Bool\", \"Float\", \"Int\"\n"
"string value\n"
;
  }

  static const char* value(const ::robint_msgs::Param_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::Param_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.type);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Param_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::Param_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::Param_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "value: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_PARAM_H
