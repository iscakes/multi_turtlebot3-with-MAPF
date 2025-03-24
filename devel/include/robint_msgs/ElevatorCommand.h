// Generated by gencpp from file robint_msgs/ElevatorCommand.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ELEVATORCOMMAND_H
#define ROBINT_MSGS_MESSAGE_ELEVATORCOMMAND_H

#include <ros/service_traits.h>


#include <robint_msgs/ElevatorCommandRequest.h>
#include <robint_msgs/ElevatorCommandResponse.h>


namespace robint_msgs
{

struct ElevatorCommand
{

typedef ElevatorCommandRequest Request;
typedef ElevatorCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ElevatorCommand
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::ElevatorCommand > {
  static const char* value()
  {
    return "9a22b904fab44aebf95061c294dbce34";
  }

  static const char* value(const ::robint_msgs::ElevatorCommand&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::ElevatorCommand > {
  static const char* value()
  {
    return "robint_msgs/ElevatorCommand";
  }

  static const char* value(const ::robint_msgs::ElevatorCommand&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::ElevatorCommandRequest> should match
// service_traits::MD5Sum< ::robint_msgs::ElevatorCommand >
template<>
struct MD5Sum< ::robint_msgs::ElevatorCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::ElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::ElevatorCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::ElevatorCommandRequest> should match
// service_traits::DataType< ::robint_msgs::ElevatorCommand >
template<>
struct DataType< ::robint_msgs::ElevatorCommandRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::ElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::ElevatorCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::ElevatorCommandResponse> should match
// service_traits::MD5Sum< ::robint_msgs::ElevatorCommand >
template<>
struct MD5Sum< ::robint_msgs::ElevatorCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::ElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::ElevatorCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::ElevatorCommandResponse> should match
// service_traits::DataType< ::robint_msgs::ElevatorCommand >
template<>
struct DataType< ::robint_msgs::ElevatorCommandResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::ElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::ElevatorCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ELEVATORCOMMAND_H
