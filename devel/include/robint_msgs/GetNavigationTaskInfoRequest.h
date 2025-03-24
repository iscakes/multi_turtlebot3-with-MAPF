// Generated by gencpp from file robint_msgs/GetNavigationTaskInfoRequest.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETNAVIGATIONTASKINFOREQUEST_H
#define ROBINT_MSGS_MESSAGE_GETNAVIGATIONTASKINFOREQUEST_H


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
struct GetNavigationTaskInfoRequest_
{
  typedef GetNavigationTaskInfoRequest_<ContainerAllocator> Type;

  GetNavigationTaskInfoRequest_()
    : target_loc_uuid()
    , target_pose()  {
    }
  GetNavigationTaskInfoRequest_(const ContainerAllocator& _alloc)
    : target_loc_uuid(_alloc)
    , target_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _target_loc_uuid_type;
  _target_loc_uuid_type target_loc_uuid;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;





  typedef boost::shared_ptr< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetNavigationTaskInfoRequest_

typedef ::robint_msgs::GetNavigationTaskInfoRequest_<std::allocator<void> > GetNavigationTaskInfoRequest;

typedef boost::shared_ptr< ::robint_msgs::GetNavigationTaskInfoRequest > GetNavigationTaskInfoRequestPtr;
typedef boost::shared_ptr< ::robint_msgs::GetNavigationTaskInfoRequest const> GetNavigationTaskInfoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator2> & rhs)
{
  return lhs.target_loc_uuid == rhs.target_loc_uuid &&
    lhs.target_pose == rhs.target_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator1> & lhs, const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7d9d811cea4944569ef95864ffc0b1e6";
  }

  static const char* value(const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7d9d811cea494456ULL;
  static const uint64_t static_value2 = 0x9ef95864ffc0b1e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/GetNavigationTaskInfoRequest";
  }

  static const char* value(const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string target_loc_uuid\n"
"geometry_msgs/Pose target_pose\n"
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

  static const char* value(const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_loc_uuid);
      stream.next(m.target_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetNavigationTaskInfoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::GetNavigationTaskInfoRequest_<ContainerAllocator>& v)
  {
    s << indent << "target_loc_uuid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.target_loc_uuid);
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETNAVIGATIONTASKINFOREQUEST_H
