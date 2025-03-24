// Generated by gencpp from file robint_msgs/GetImageBase64Response.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETIMAGEBASE64RESPONSE_H
#define ROBINT_MSGS_MESSAGE_GETIMAGEBASE64RESPONSE_H


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
struct GetImageBase64Response_
{
  typedef GetImageBase64Response_<ContainerAllocator> Type;

  GetImageBase64Response_()
    : base64()
    , format()
    , error_code(0)
    , success(false)  {
    }
  GetImageBase64Response_(const ContainerAllocator& _alloc)
    : base64(_alloc)
    , format(_alloc)
    , error_code(0)
    , success(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _base64_type;
  _base64_type base64;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _format_type;
  _format_type format;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> const> ConstPtr;

}; // struct GetImageBase64Response_

typedef ::robint_msgs::GetImageBase64Response_<std::allocator<void> > GetImageBase64Response;

typedef boost::shared_ptr< ::robint_msgs::GetImageBase64Response > GetImageBase64ResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GetImageBase64Response const> GetImageBase64ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetImageBase64Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetImageBase64Response_<ContainerAllocator1> & lhs, const ::robint_msgs::GetImageBase64Response_<ContainerAllocator2> & rhs)
{
  return lhs.base64 == rhs.base64 &&
    lhs.format == rhs.format &&
    lhs.error_code == rhs.error_code &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetImageBase64Response_<ContainerAllocator1> & lhs, const ::robint_msgs::GetImageBase64Response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d065e93e272f23f2b649c9de08d54839";
  }

  static const char* value(const ::robint_msgs::GetImageBase64Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd065e93e272f23f2ULL;
  static const uint64_t static_value2 = 0xb649c9de08d54839ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetImageBase64Response";
  }

  static const char* value(const ::robint_msgs::GetImageBase64Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string base64\n"
"string format  # \"png\" or \"jpeg\"\n"
"uint8 error_code\n"
"bool success\n"
;
  }

  static const char* value(const ::robint_msgs::GetImageBase64Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base64);
      stream.next(m.format);
      stream.next(m.error_code);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetImageBase64Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetImageBase64Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetImageBase64Response_<ContainerAllocator>& v)
  {
    s << indent << "base64: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.base64);
    s << indent << "format: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.format);
    s << indent << "error_code: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETIMAGEBASE64RESPONSE_H
