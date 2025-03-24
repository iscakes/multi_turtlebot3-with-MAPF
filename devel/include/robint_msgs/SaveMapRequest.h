// Generated by gencpp from file robint_msgs/SaveMapRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_SAVEMAPREQUEST_H
#define ROBINT_MSGS_MESSAGE_SAVEMAPREQUEST_H


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
struct SaveMapRequest_
{
  typedef SaveMapRequest_<ContainerAllocator> Type;

  SaveMapRequest_()
    : map_name()
    , floor_id()
    , building_id()
    , time()  {
    }
  SaveMapRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , floor_id(_alloc)
    , building_id(_alloc)
    , time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _floor_id_type;
  _floor_id_type floor_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _building_id_type;
  _building_id_type building_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::robint_msgs::SaveMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::SaveMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveMapRequest_

typedef ::robint_msgs::SaveMapRequest_<std::allocator<void> > SaveMapRequest;

typedef boost::shared_ptr< ::robint_msgs::SaveMapRequest > SaveMapRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::SaveMapRequest const> SaveMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::SaveMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::SaveMapRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::SaveMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.floor_id == rhs.floor_id &&
    lhs.building_id == rhs.building_id &&
    lhs.time == rhs.time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::SaveMapRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::SaveMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::SaveMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::SaveMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::SaveMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "79c2c0ba530c79f65ca3ae1114c6f0bd";
  }

  static const char* value(const ::robint_msgs::SaveMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x79c2c0ba530c79f6ULL;
  static const uint64_t static_value2 = 0x5ca3ae1114c6f0bdULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/SaveMapRequest";
  }

  static const char* value(const ::robint_msgs::SaveMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"string floor_id\n"
"string building_id\n"
"string time\n"
;
  }

  static const char* value(const ::robint_msgs::SaveMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.floor_id);
      stream.next(m.building_id);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::SaveMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::SaveMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "floor_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.floor_id);
    s << indent << "building_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.building_id);
    s << indent << "time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_SAVEMAPREQUEST_H
