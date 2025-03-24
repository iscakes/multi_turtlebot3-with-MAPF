// Generated by gencpp from file robint_msgs/AddCleaningAreaListRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ADDCLEANINGAREALISTREQUEST_H
#define ROBINT_MSGS_MESSAGE_ADDCLEANINGAREALISTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/CleaningArea.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct AddCleaningAreaListRequest_
{
  typedef AddCleaningAreaListRequest_<ContainerAllocator> Type;

  AddCleaningAreaListRequest_()
    : map_uuid()
    , coordinate_mode(0)
    , area_list()  {
    }
  AddCleaningAreaListRequest_(const ContainerAllocator& _alloc)
    : map_uuid(_alloc)
    , coordinate_mode(0)
    , area_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_uuid_type;
  _map_uuid_type map_uuid;

   typedef uint8_t _coordinate_mode_type;
  _coordinate_mode_type coordinate_mode;

   typedef std::vector< ::robint_msgs::CleaningArea_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::robint_msgs::CleaningArea_<ContainerAllocator> >> _area_list_type;
  _area_list_type area_list;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(WORLD)
  #undef WORLD
#endif
#if defined(_WIN32) && defined(IMAGE)
  #undef IMAGE
#endif

  enum {
    WORLD = 0u,
    IMAGE = 1u,
  };


  typedef boost::shared_ptr< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddCleaningAreaListRequest_

typedef ::robint_msgs::AddCleaningAreaListRequest_<std::allocator<void> > AddCleaningAreaListRequest;

typedef boost::shared_ptr< ::robint_msgs::AddCleaningAreaListRequest > AddCleaningAreaListRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::AddCleaningAreaListRequest const> AddCleaningAreaListRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_uuid == rhs.map_uuid &&
    lhs.coordinate_mode == rhs.coordinate_mode &&
    lhs.area_list == rhs.area_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a8b99e4449c3c494f214da9d26aae34";
  }

  static const char* value(const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a8b99e4449c3c49ULL;
  static const uint64_t static_value2 = 0x4f214da9d26aae34ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/AddCleaningAreaListRequest";
  }

  static const char* value(const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_uuid\n"
"uint8 coordinate_mode\n"
"uint8 WORLD=0\n"
"uint8 IMAGE=1\n"
"CleaningArea[] area_list\n"
"\n"
"================================================================================\n"
"MSG: robint_msgs/CleaningArea\n"
"string uuid\n"
"string name\n"
"string map_uuid\n"
"string group_uuid\n"
"string coverage_method\n"
"PathWithPoint contour\n"
"PathWithPoint[] paths\n"
"PathWithPoint[] holes\n"
"================================================================================\n"
"MSG: robint_msgs/PathWithPoint\n"
"uint32 id\n"
"string type\n"
"geometry_msgs/Point[] points\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_uuid);
      stream.next(m.coordinate_mode);
      stream.next(m.area_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddCleaningAreaListRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::AddCleaningAreaListRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_uuid);
    s << indent << "coordinate_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.coordinate_mode);
    s << indent << "area_list[]" << std::endl;
    for (size_t i = 0; i < v.area_list.size(); ++i)
    {
      s << indent << "  area_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robint_msgs::CleaningArea_<ContainerAllocator> >::stream(s, indent + "    ", v.area_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ADDCLEANINGAREALISTREQUEST_H
