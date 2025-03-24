// Generated by gencpp from file robint_msgs/GetCruiseTaskInfoRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCRUISETASKINFOREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETCRUISETASKINFOREQUEST_H


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
struct GetCruiseTaskInfoRequest_
{
  typedef GetCruiseTaskInfoRequest_<ContainerAllocator> Type;

  GetCruiseTaskInfoRequest_()
    : task_uuid()
    , task_name()
    , start_location_uuid()
    , end_location_uuid()  {
    }
  GetCruiseTaskInfoRequest_(const ContainerAllocator& _alloc)
    : task_uuid(_alloc)
    , task_name(_alloc)
    , start_location_uuid(_alloc)
    , end_location_uuid(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _task_uuid_type;
  _task_uuid_type task_uuid;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _task_name_type;
  _task_name_type task_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _start_location_uuid_type;
  _start_location_uuid_type start_location_uuid;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _end_location_uuid_type;
  _end_location_uuid_type end_location_uuid;





  typedef boost::shared_ptr< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetCruiseTaskInfoRequest_

typedef ::robint_msgs::GetCruiseTaskInfoRequest_<std::allocator<void> > GetCruiseTaskInfoRequest;

typedef boost::shared_ptr< ::robint_msgs::GetCruiseTaskInfoRequest > GetCruiseTaskInfoRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetCruiseTaskInfoRequest const> GetCruiseTaskInfoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator2> & rhs)
{
  return lhs.task_uuid == rhs.task_uuid &&
    lhs.task_name == rhs.task_name &&
    lhs.start_location_uuid == rhs.start_location_uuid &&
    lhs.end_location_uuid == rhs.end_location_uuid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "553cbf1545f596de71234871d0e9d7a6";
  }

  static const char* value(const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x553cbf1545f596deULL;
  static const uint64_t static_value2 = 0x71234871d0e9d7a6ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetCruiseTaskInfoRequest";
  }

  static const char* value(const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string task_uuid\n"
"string task_name\n"
"string start_location_uuid\n"
"string end_location_uuid\n"
;
  }

  static const char* value(const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_uuid);
      stream.next(m.task_name);
      stream.next(m.start_location_uuid);
      stream.next(m.end_location_uuid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCruiseTaskInfoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetCruiseTaskInfoRequest_<ContainerAllocator>& v)
  {
    s << indent << "task_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.task_uuid);
    s << indent << "task_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.task_name);
    s << indent << "start_location_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.start_location_uuid);
    s << indent << "end_location_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.end_location_uuid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETCRUISETASKINFOREQUEST_H
