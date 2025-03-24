// Generated by gencpp from file robint_msgs/SetMapResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_SETMAPRESPONSE_H
#define ROBINT_MSGS_MESSAGE_SETMAPRESPONSE_H


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
struct SetMapResponse_
{
  typedef SetMapResponse_<ContainerAllocator> Type;

  SetMapResponse_()
    : success(false)
    , error_code(0)
    , message()  {
    }
  SetMapResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , error_code(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::robint_msgs::SetMapResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::SetMapResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetMapResponse_

typedef ::robint_msgs::SetMapResponse_<std::allocator<void> > SetMapResponse;

typedef boost::shared_ptr< ::robint_msgs::SetMapResponse > SetMapResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::SetMapResponse const> SetMapResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::SetMapResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::SetMapResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::SetMapResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::SetMapResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.error_code == rhs.error_code &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::SetMapResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::SetMapResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SetMapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SetMapResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SetMapResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ad76664b0717ddbf6142456d7398288";
  }

  static const char* value(const ::robint_msgs::SetMapResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ad76664b0717ddbULL;
  static const uint64_t static_value2 = 0xf6142456d7398288ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/SetMapResponse";
  }

  static const char* value(const ::robint_msgs::SetMapResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"uint8 error_code\n"
"string message\n"
;
  }

  static const char* value(const ::robint_msgs::SetMapResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_code);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMapResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::SetMapResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::SetMapResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_code: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_SETMAPRESPONSE_H
