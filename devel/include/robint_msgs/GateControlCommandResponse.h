// Generated by gencpp from file robint_msgs/GateControlCommandResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GATECONTROLCOMMANDRESPONSE_H
#define ROBINT_MSGS_MESSAGE_GATECONTROLCOMMANDRESPONSE_H


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
struct GateControlCommandResponse_
{
  typedef GateControlCommandResponse_<ContainerAllocator> Type;

  GateControlCommandResponse_()
    : task_id()
    , success(false)
    , error_code(0)
    , message()  {
    }
  GateControlCommandResponse_(const ContainerAllocator& _alloc)
    : task_id(_alloc)
    , success(false)
    , error_code(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _task_id_type;
  _task_id_type task_id;

   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GateControlCommandResponse_

typedef ::robint_msgs::GateControlCommandResponse_<std::allocator<void> > GateControlCommandResponse;

typedef boost::shared_ptr< ::robint_msgs::GateControlCommandResponse > GateControlCommandResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GateControlCommandResponse const> GateControlCommandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.task_id == rhs.task_id &&
    lhs.success == rhs.success &&
    lhs.error_code == rhs.error_code &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "163b1fd3360e50bfc538a2cc319339f2";
  }

  static const char* value(const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x163b1fd3360e50bfULL;
  static const uint64_t static_value2 = 0xc538a2cc319339f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GateControlCommandResponse";
  }

  static const char* value(const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string task_id\n"
"bool success\n"
"uint8 error_code\n"
"string message\n"
;
  }

  static const char* value(const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.success);
      stream.next(m.error_code);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GateControlCommandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GateControlCommandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GateControlCommandResponse_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.task_id);
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

#endif // ROBINT_MSGS_MESSAGE_GATECONTROLCOMMANDRESPONSE_H
