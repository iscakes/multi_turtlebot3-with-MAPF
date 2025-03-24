// Generated by gencpp from file robint_msgs/AutoChargeCommand.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_AUTOCHARGECOMMAND_H
#define ROBINT_MSGS_MESSAGE_AUTOCHARGECOMMAND_H

#include <ros/service_traits.h>


#include <robint_msgs/AutoChargeCommandRequest.h>
#include <robint_msgs/AutoChargeCommandResponse.h>


namespace robint_msgs
{

struct AutoChargeCommand
{

typedef AutoChargeCommandRequest Request;
typedef AutoChargeCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AutoChargeCommand
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::AutoChargeCommand > {
  static const char* value()
  {
    return "bc442fa2df82c02e5566eb785d8d6270";
  }

  static const char* value(const ::robint_msgs::AutoChargeCommand&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::AutoChargeCommand > {
  static const char* value()
  {
    return "robint_msgs/AutoChargeCommand";
  }

  static const char* value(const ::robint_msgs::AutoChargeCommand&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::AutoChargeCommandRequest> should match
// service_traits::MD5Sum< ::robint_msgs::AutoChargeCommand >
template<>
struct MD5Sum< ::robint_msgs::AutoChargeCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AutoChargeCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoChargeCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AutoChargeCommandRequest> should match
// service_traits::DataType< ::robint_msgs::AutoChargeCommand >
template<>
struct DataType< ::robint_msgs::AutoChargeCommandRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AutoChargeCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoChargeCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::AutoChargeCommandResponse> should match
// service_traits::MD5Sum< ::robint_msgs::AutoChargeCommand >
template<>
struct MD5Sum< ::robint_msgs::AutoChargeCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AutoChargeCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoChargeCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AutoChargeCommandResponse> should match
// service_traits::DataType< ::robint_msgs::AutoChargeCommand >
template<>
struct DataType< ::robint_msgs::AutoChargeCommandResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AutoChargeCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoChargeCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_AUTOCHARGECOMMAND_H
