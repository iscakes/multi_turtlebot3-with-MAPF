// Generated by gencpp from file robint_msgs/AutoCruiseCommand.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_AUTOCRUISECOMMAND_H
#define ROBINT_MSGS_MESSAGE_AUTOCRUISECOMMAND_H

#include <ros/service_traits.h>


#include <robint_msgs/AutoCruiseCommandRequest.h>
#include <robint_msgs/AutoCruiseCommandResponse.h>


namespace robint_msgs
{

struct AutoCruiseCommand
{

typedef AutoCruiseCommandRequest Request;
typedef AutoCruiseCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AutoCruiseCommand
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::AutoCruiseCommand > {
  static const char* value()
  {
    return "13b775ca1ec1ffd6cc417222cb8e4b2e";
  }

  static const char* value(const ::robint_msgs::AutoCruiseCommand&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::AutoCruiseCommand > {
  static const char* value()
  {
    return "robint_msgs/AutoCruiseCommand";
  }

  static const char* value(const ::robint_msgs::AutoCruiseCommand&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::AutoCruiseCommandRequest> should match
// service_traits::MD5Sum< ::robint_msgs::AutoCruiseCommand >
template<>
struct MD5Sum< ::robint_msgs::AutoCruiseCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AutoCruiseCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoCruiseCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AutoCruiseCommandRequest> should match
// service_traits::DataType< ::robint_msgs::AutoCruiseCommand >
template<>
struct DataType< ::robint_msgs::AutoCruiseCommandRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AutoCruiseCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoCruiseCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::AutoCruiseCommandResponse> should match
// service_traits::MD5Sum< ::robint_msgs::AutoCruiseCommand >
template<>
struct MD5Sum< ::robint_msgs::AutoCruiseCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AutoCruiseCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoCruiseCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AutoCruiseCommandResponse> should match
// service_traits::DataType< ::robint_msgs::AutoCruiseCommand >
template<>
struct DataType< ::robint_msgs::AutoCruiseCommandResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AutoCruiseCommand >::value();
  }
  static const char* value(const ::robint_msgs::AutoCruiseCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_AUTOCRUISECOMMAND_H
