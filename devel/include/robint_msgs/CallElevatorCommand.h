// Generated by gencpp from file robint_msgs/CallElevatorCommand.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_CALLELEVATORCOMMAND_H
#define ROBINT_MSGS_MESSAGE_CALLELEVATORCOMMAND_H

#include <ros/service_traits.h>


#include <robint_msgs/CallElevatorCommandRequest.h>
#include <robint_msgs/CallElevatorCommandResponse.h>


namespace robint_msgs
{

struct CallElevatorCommand
{

typedef CallElevatorCommandRequest Request;
typedef CallElevatorCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CallElevatorCommand
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::CallElevatorCommand > {
  static const char* value()
  {
    return "76382a8f79198018adfe306bd305cb26";
  }

  static const char* value(const ::robint_msgs::CallElevatorCommand&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::CallElevatorCommand > {
  static const char* value()
  {
    return "robint_msgs/CallElevatorCommand";
  }

  static const char* value(const ::robint_msgs::CallElevatorCommand&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::CallElevatorCommandRequest> should match
// service_traits::MD5Sum< ::robint_msgs::CallElevatorCommand >
template<>
struct MD5Sum< ::robint_msgs::CallElevatorCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::CallElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::CallElevatorCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::CallElevatorCommandRequest> should match
// service_traits::DataType< ::robint_msgs::CallElevatorCommand >
template<>
struct DataType< ::robint_msgs::CallElevatorCommandRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::CallElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::CallElevatorCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::CallElevatorCommandResponse> should match
// service_traits::MD5Sum< ::robint_msgs::CallElevatorCommand >
template<>
struct MD5Sum< ::robint_msgs::CallElevatorCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::CallElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::CallElevatorCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::CallElevatorCommandResponse> should match
// service_traits::DataType< ::robint_msgs::CallElevatorCommand >
template<>
struct DataType< ::robint_msgs::CallElevatorCommandResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::CallElevatorCommand >::value();
  }
  static const char* value(const ::robint_msgs::CallElevatorCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_CALLELEVATORCOMMAND_H
