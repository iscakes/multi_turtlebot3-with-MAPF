// Generated by gencpp from file robint_msgs/GetMapMetaDataResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETMAPMETADATARESPONSE_H
#define ROBINT_MSGS_MESSAGE_GETMAPMETADATARESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/MapMetaData.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct GetMapMetaDataResponse_
{
  typedef GetMapMetaDataResponse_<ContainerAllocator> Type;

  GetMapMetaDataResponse_()
    : info()
    , success(false)
    , message()  {
    }
  GetMapMetaDataResponse_(const ContainerAllocator& _alloc)
    : info(_alloc)
    , success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::MapMetaData_<ContainerAllocator>  _info_type;
  _info_type info;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetMapMetaDataResponse_

typedef ::robint_msgs::GetMapMetaDataResponse_<std::allocator<void> > GetMapMetaDataResponse;

typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataResponse > GetMapMetaDataResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::GetMapMetaDataResponse const> GetMapMetaDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator2> & rhs)
{
  return lhs.info == rhs.info &&
    lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "65c7a994cbc65c2d3ec981b3302cb1b5";
  }

  static const char* value(const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x65c7a994cbc65c2dULL;
  static const uint64_t static_value2 = 0x3ec981b3302cb1b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetMapMetaDataResponse";
  }

  static const char* value(const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/MapMetaData info\n"
"bool success\n"
"string message\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/MapMetaData\n"
"# This hold basic information about the characterists of the OccupancyGrid\n"
"\n"
"# The time at which the map was loaded\n"
"time map_load_time\n"
"# The map resolution [m/cell]\n"
"float32 resolution\n"
"# Map width [cells]\n"
"uint32 width\n"
"# Map height [cells]\n"
"uint32 height\n"
"# The origin of the map [m, m, rad].  This is the real-world pose of the\n"
"# cell (0,0) in the map.\n"
"geometry_msgs/Pose origin\n"
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

  static const char* value(const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.info);
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMapMetaDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetMapMetaDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "info: ";
    s << std::endl;
    Printer< ::nav_msgs::MapMetaData_<ContainerAllocator> >::stream(s, indent + "  ", v.info);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETMAPMETADATARESPONSE_H
