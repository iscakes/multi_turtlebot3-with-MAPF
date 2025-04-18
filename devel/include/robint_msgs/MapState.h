// Generated by gencpp from file robint_msgs/MapState.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_MAPSTATE_H
#define ROBINT_MSGS_MESSAGE_MAPSTATE_H


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
struct MapState_
{
  typedef MapState_<ContainerAllocator> Type;

  MapState_()
    : floor_id(0)  {
    }
  MapState_(const ContainerAllocator& _alloc)
    : floor_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _floor_id_type;
  _floor_id_type floor_id;





  typedef boost::shared_ptr< ::robint_msgs::MapState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::MapState_<ContainerAllocator> const> ConstPtr;

}; // struct MapState_

typedef ::robint_msgs::MapState_<std::allocator<void> > MapState;

typedef boost::shared_ptr< ::robint_msgs::MapState > MapStatePtr;
typedef boost::shared_ptr< ::robint_msgs::MapState const> MapStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::MapState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::MapState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::MapState_<ContainerAllocator1> & lhs, const ::robint_msgs::MapState_<ContainerAllocator2> & rhs)
{
  return lhs.floor_id == rhs.floor_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::MapState_<ContainerAllocator1> & lhs, const ::robint_msgs::MapState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::MapState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::MapState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::MapState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::MapState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::MapState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::MapState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::MapState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91a758fc98f221cf5356ea3023ec3f39";
  }

  static const char* value(const ::robint_msgs::MapState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91a758fc98f221cfULL;
  static const uint64_t static_value2 = 0x5356ea3023ec3f39ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::MapState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/MapState";
  }

  static const char* value(const ::robint_msgs::MapState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::MapState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 floor_id\n"
;
  }

  static const char* value(const ::robint_msgs::MapState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::MapState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.floor_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::MapState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::MapState_<ContainerAllocator>& v)
  {
    s << indent << "floor_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.floor_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_MAPSTATE_H
