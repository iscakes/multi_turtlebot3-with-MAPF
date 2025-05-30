// Generated by gencpp from file robint_msgs/RecordTrajectoryCommandResponse.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_RECORDTRAJECTORYCOMMANDRESPONSE_H
#define ROBINT_MSGS_MESSAGE_RECORDTRAJECTORYCOMMANDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robint_msgs/PathWithPoint.h>

namespace robint_msgs
{
template <class ContainerAllocator>
struct RecordTrajectoryCommandResponse_
{
  typedef RecordTrajectoryCommandResponse_<ContainerAllocator> Type;

  RecordTrajectoryCommandResponse_()
    : coordinate_mode(0)
    , trajectory()
    , success(false)
    , error_code(0)
    , message()  {
    }
  RecordTrajectoryCommandResponse_(const ContainerAllocator& _alloc)
    : coordinate_mode(0)
    , trajectory(_alloc)
    , success(false)
    , error_code(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _coordinate_mode_type;
  _coordinate_mode_type coordinate_mode;

   typedef  ::robint_msgs::PathWithPoint_<ContainerAllocator>  _trajectory_type;
  _trajectory_type trajectory;

   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;



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


  typedef boost::shared_ptr< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RecordTrajectoryCommandResponse_

typedef ::robint_msgs::RecordTrajectoryCommandResponse_<std::allocator<void> > RecordTrajectoryCommandResponse;

typedef boost::shared_ptr< ::robint_msgs::RecordTrajectoryCommandResponse > RecordTrajectoryCommandResponsePtr;
typedef boost::shared_ptr< ::robint_msgs::RecordTrajectoryCommandResponse const> RecordTrajectoryCommandResponseConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.coordinate_mode == rhs.coordinate_mode &&
    lhs.trajectory == rhs.trajectory &&
    lhs.success == rhs.success &&
    lhs.error_code == rhs.error_code &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator1> & lhs, const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a2e9362736e22c25a24bcd3ba47556e";
  }

  static const char* value(const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a2e9362736e22c2ULL;
  static const uint64_t static_value2 = 0x5a24bcd3ba47556eULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/RecordTrajectoryCommandResponse";
  }

  static const char* value(const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 coordinate_mode\n"
"uint8 WORLD=0\n"
"uint8 IMAGE=1\n"
"PathWithPoint trajectory\n"
"bool success\n"
"uint8 error_code\n"
"string message\n"
"\n"
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

  static const char* value(const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.coordinate_mode);
      stream.next(m.trajectory);
      stream.next(m.success);
      stream.next(m.error_code);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecordTrajectoryCommandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::RecordTrajectoryCommandResponse_<ContainerAllocator>& v)
  {
    s << indent << "coordinate_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.coordinate_mode);
    s << indent << "trajectory: ";
    s << std::endl;
    Printer< ::robint_msgs::PathWithPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.trajectory);
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

#endif // ROBINT_MSGS_MESSAGE_RECORDTRAJECTORYCOMMANDRESPONSE_H
