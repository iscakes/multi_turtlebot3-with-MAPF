// Generated by gencpp from file robint_msgs/GetNearestLocationRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETNEARESTLOCATIONREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETNEARESTLOCATIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct GetNearestLocationRequest_
{
  typedef GetNearestLocationRequest_<ContainerAllocator> Type;

  GetNearestLocationRequest_()
    : map_name()
    , location_name()
    , location_uuid()
    , pose()  {
    }
  GetNearestLocationRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , location_name(_alloc)
    , location_uuid(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_name_type;
  _location_name_type location_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _location_uuid_type;
  _location_uuid_type location_uuid;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetNearestLocationRequest_

typedef ::robint_msgs::GetNearestLocationRequest_<std::allocator<void> > GetNearestLocationRequest;

typedef boost::shared_ptr< ::robint_msgs::GetNearestLocationRequest > GetNearestLocationRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetNearestLocationRequest const> GetNearestLocationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.location_name == rhs.location_name &&
    lhs.location_uuid == rhs.location_uuid &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33f810ef8705ec161a84d30ee08a8432";
  }

  static const char* value(const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33f810ef8705ec16ULL;
  static const uint64_t static_value2 = 0x1a84d30ee08a8432ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetNearestLocationRequest";
  }

  static const char* value(const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"string location_name\n"
"string location_uuid\n"
"geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.location_name);
      stream.next(m.location_uuid);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetNearestLocationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetNearestLocationRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "location_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_name);
    s << indent << "location_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.location_uuid);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETNEARESTLOCATIONREQUEST_H
