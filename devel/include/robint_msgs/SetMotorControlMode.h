// Generated by gencpp from file robint_msgs/SetMotorControlMode.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_SETMOTORCONTROLMODE_H
#define ROBINT_MSGS_MESSAGE_SETMOTORCONTROLMODE_H

#include <ros/service_traits.h>


#include <robint_msgs/SetMotorControlModeRequest.h>
#include <robint_msgs/SetMotorControlModeResponse.h>


namespace robint_msgs
{

struct SetMotorControlMode
{

typedef SetMotorControlModeRequest Request;
typedef SetMotorControlModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetMotorControlMode
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::SetMotorControlMode > {
  static const char* value()
  {
    return "b40f8acade9ef49cd514ae09c667e3fe";
  }

  static const char* value(const ::robint_msgs::SetMotorControlMode&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::SetMotorControlMode > {
  static const char* value()
  {
    return "robint_msgs/SetMotorControlMode";
  }

  static const char* value(const ::robint_msgs::SetMotorControlMode&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::SetMotorControlModeRequest> should match
// service_traits::MD5Sum< ::robint_msgs::SetMotorControlMode >
template<>
struct MD5Sum< ::robint_msgs::SetMotorControlModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::SetMotorControlMode >::value();
  }
  static const char* value(const ::robint_msgs::SetMotorControlModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::SetMotorControlModeRequest> should match
// service_traits::DataType< ::robint_msgs::SetMotorControlMode >
template<>
struct DataType< ::robint_msgs::SetMotorControlModeRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::SetMotorControlMode >::value();
  }
  static const char* value(const ::robint_msgs::SetMotorControlModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::SetMotorControlModeResponse> should match
// service_traits::MD5Sum< ::robint_msgs::SetMotorControlMode >
template<>
struct MD5Sum< ::robint_msgs::SetMotorControlModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::SetMotorControlMode >::value();
  }
  static const char* value(const ::robint_msgs::SetMotorControlModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::SetMotorControlModeResponse> should match
// service_traits::DataType< ::robint_msgs::SetMotorControlMode >
template<>
struct DataType< ::robint_msgs::SetMotorControlModeResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::SetMotorControlMode >::value();
  }
  static const char* value(const ::robint_msgs::SetMotorControlModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_SETMOTORCONTROLMODE_H
