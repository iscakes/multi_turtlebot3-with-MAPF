// Generated by gencpp from file robint_msgs/ServoCommand.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_SERVOCOMMAND_H
#define ROBINT_MSGS_MESSAGE_SERVOCOMMAND_H


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
struct ServoCommand_
{
  typedef ServoCommand_<ContainerAllocator> Type;

  ServoCommand_()
    : servo_ID()
    , angle(0)
    , runningtime(0)  {
    }
  ServoCommand_(const ContainerAllocator& _alloc)
    : servo_ID(_alloc)
    , angle(0)
    , runningtime(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _servo_ID_type;
  _servo_ID_type servo_ID;

   typedef int16_t _angle_type;
  _angle_type angle;

   typedef int16_t _runningtime_type;
  _runningtime_type runningtime;





  typedef boost::shared_ptr< ::robint_msgs::ServoCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robint_msgs::ServoCommand_<ContainerAllocator> const> ConstPtr;

}; // struct ServoCommand_

typedef ::robint_msgs::ServoCommand_<std::allocator<void> > ServoCommand;

typedef boost::shared_ptr< ::robint_msgs::ServoCommand > ServoCommandPtr;
typedef boost::shared_ptr< ::robint_msgs::ServoCommand const> ServoCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robint_msgs::ServoCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robint_msgs::ServoCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robint_msgs::ServoCommand_<ContainerAllocator1> & lhs, const ::robint_msgs::ServoCommand_<ContainerAllocator2> & rhs)
{
  return lhs.servo_ID == rhs.servo_ID &&
    lhs.angle == rhs.angle &&
    lhs.runningtime == rhs.runningtime;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robint_msgs::ServoCommand_<ContainerAllocator1> & lhs, const ::robint_msgs::ServoCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robint_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ServoCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robint_msgs::ServoCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ServoCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robint_msgs::ServoCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ServoCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robint_msgs::ServoCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robint_msgs::ServoCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "055df8167a6869ba237fd86867a5bca5";
  }

  static const char* value(const ::robint_msgs::ServoCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x055df8167a6869baULL;
  static const uint64_t static_value2 = 0x237fd86867a5bca5ULL;
};

template<class ContainerAllocator>
struct DataType< ::robint_msgs::ServoCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robint_msgs/ServoCommand";
  }

  static const char* value(const ::robint_msgs::ServoCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robint_msgs::ServoCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string servo_ID\n"
"int16 angle\n"
"int16 runningtime\n"
;
  }

  static const char* value(const ::robint_msgs::ServoCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robint_msgs::ServoCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.servo_ID);
      stream.next(m.angle);
      stream.next(m.runningtime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServoCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robint_msgs::ServoCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robint_msgs::ServoCommand_<ContainerAllocator>& v)
  {
    s << indent << "servo_ID: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.servo_ID);
    s << indent << "angle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.angle);
    s << indent << "runningtime: ";
    Printer<int16_t>::stream(s, indent + "  ", v.runningtime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_SERVOCOMMAND_H
