// Generated by gencpp from file robint_msgs/GetCurrentMapInfoResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCURRENTMAPINFORESPONSE_H
#define ROBINT_MSGS_MESSAGE_GETCURRENTMAPINFORESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/MapInfo.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct GetCurrentMapInfoResponse_
{
  typedef GetCurrentMapInfoResponse_<ContainerAllocator> Type;

  GetCurrentMapInfoResponse_()
    : map_info()
    , success(false)
    , error_code(0)
    , message()  {
    }
  GetCurrentMapInfoResponse_(const ContainerAllocator& _alloc)
    : map_info(_alloc)
    , success(false)
    , error_code(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robint_msgs::MapInfo_<ContainerAllocator>  _map_info_type;
  _map_info_type map_info;

   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetCurrentMapInfoResponse_

typedef ::robint_msgs::GetCurrentMapInfoResponse_<std::allocator<void> > GetCurrentMapInfoResponse;

typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapInfoResponse > GetCurrentMapInfoResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapInfoResponse const> GetCurrentMapInfoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator2> & rhs)
{
  return lhs.map_info == rhs.map_info &&
    lhs.success == rhs.success &&
    lhs.error_code == rhs.error_code &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "130d1545ef98bef7c80e6aae666b48f8";
  }

  static const char* value(const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x130d1545ef98bef7ULL;
  static const uint64_t static_value2 = 0xc80e6aae666b48f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetCurrentMapInfoResponse";
  }

  static const char* value(const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "MapInfo map_info\n"
"bool success\n"
"uint8 error_code\n"
"string message\n"
"\n"
"================================================================================\n"
"MSG: robint_msgs/MapInfo\n"
"string uuid\n"
"string name\n"
"string floor_id\n"
"string building_id\n"
"string time\n"
"float32[] origin\n"
"uint32 width\n"
"uint32 height\n"
;
  }

  static const char* value(const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_info);
      stream.next(m.success);
      stream.next(m.error_code);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCurrentMapInfoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetCurrentMapInfoResponse_<ContainerAllocator>& v)
  {
    s << indent << "map_info: ";
    s << std::endl;
    Printer< ::robint_msgs::MapInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.map_info);
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

#endif // ROBINT_MSGS_MESSAGE_GETCURRENTMAPINFORESPONSE_H
