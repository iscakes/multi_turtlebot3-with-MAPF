// Generated by gencpp from file robint_msgs/ReviseMapRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_REVISEMAPREQUEST_H
#define ROBINT_MSGS_MESSAGE_REVISEMAPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/MapData.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct ReviseMapRequest_
{
  typedef ReviseMapRequest_<ContainerAllocator> Type;

  ReviseMapRequest_()
    : map_name()
    , map()  {
    }
  ReviseMapRequest_(const ContainerAllocator& _alloc)
    : map_name(_alloc)
    , map(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_name_type;
  _map_name_type map_name;

   typedef  ::robint_msgs::MapData_<ContainerAllocator>  _map_type;
  _map_type map;





  typedef boost::shared_ptr< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReviseMapRequest_

typedef ::robint_msgs::ReviseMapRequest_<std::allocator<void> > ReviseMapRequest;

typedef boost::shared_ptr< ::robint_msgs::ReviseMapRequest > ReviseMapRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::ReviseMapRequest const> ReviseMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::ReviseMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::ReviseMapRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::ReviseMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_name == rhs.map_name &&
    lhs.map == rhs.map;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::ReviseMapRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::ReviseMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "76b5fa0c8f2e51c5f22b834d8f1769ae";
  }

  static const char* value(const ::robint_msgs::ReviseMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x76b5fa0c8f2e51c5ULL;
  static const uint64_t static_value2 = 0xf22b834d8f1769aeULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/ReviseMapRequest";
  }

  static const char* value(const ::robint_msgs::ReviseMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_name\n"
"MapData map\n"
"\n"
"================================================================================\n"
"MSG: robint_msgs/MapData\n"
"string name\n"
"string time\n"
"nav_msgs/OccupancyGrid data\n"
"================================================================================\n"
"MSG: nav_msgs/OccupancyGrid\n"
"# This represents a 2-D grid map, in which each cell represents the probability of\n"
"# occupancy.\n"
"\n"
"Header header \n"
"\n"
"#MetaData for the map\n"
"MapMetaData info\n"
"\n"
"# The map data, in row-major order, starting with (0,0).  Occupancy\n"
"# probabilities are in the range [0,100].  Unknown is -1.\n"
"int8[] data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
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

  static const char* value(const ::robint_msgs::ReviseMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_name);
      stream.next(m.map);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReviseMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::ReviseMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::ReviseMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_name);
    s << indent << "map: ";
    s << std::endl;
    Printer< ::robint_msgs::MapData_<ContainerAllocator> >::stream(s, indent + "  ", v.map);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_REVISEMAPREQUEST_H
