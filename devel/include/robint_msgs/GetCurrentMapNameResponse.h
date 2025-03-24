// Generated by gencpp from file robint_msgs/GetCurrentMapNameResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCURRENTMAPNAMERESPONSE_H
#define ROBINT_MSGS_MESSAGE_GETCURRENTMAPNAMERESPONSE_H


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
struct GetCurrentMapNameResponse_
{
  typedef GetCurrentMapNameResponse_<ContainerAllocator> Type;

  GetCurrentMapNameResponse_()
    : name()
    , success(false)  {
    }
  GetCurrentMapNameResponse_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetCurrentMapNameResponse_

typedef ::robint_msgs::GetCurrentMapNameResponse_<std::allocator<void> > GetCurrentMapNameResponse;

typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapNameResponse > GetCurrentMapNameResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GetCurrentMapNameResponse const> GetCurrentMapNameResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f9535dd2e17d62b0cbf72cb334744629";
  }

  static const char* value(const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf9535dd2e17d62b0ULL;
  static const uint64_t static_value2 = 0xcbf72cb334744629ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetCurrentMapNameResponse";
  }

  static const char* value(const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"bool success\n"
;
  }

  static const char* value(const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCurrentMapNameResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetCurrentMapNameResponse_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETCURRENTMAPNAMERESPONSE_H
