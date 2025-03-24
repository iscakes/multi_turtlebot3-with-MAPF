// Generated by gencpp from file robint_msgs/GetCurrentTaskState.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCURRENTTASKSTATE_H
#define ROBINT_MSGS_MESSAGE_GETCURRENTTASKSTATE_H

#include <ros/service_traits.h>


#include <robint_msgs/GetCurrentTaskStateRequest.h>
#include <robint_msgs/GetCurrentTaskStateResponse.h>


namespace robint_msgs
{

struct GetCurrentTaskState
{

typedef GetCurrentTaskStateRequest Request;
typedef GetCurrentTaskStateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCurrentTaskState
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetCurrentTaskState > {
  static const char* value()
  {
    return "0454dfaa757e94ce272e735ea4f5d978";
  }

  static const char* value(const ::robint_msgs::GetCurrentTaskState&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetCurrentTaskState > {
  static const char* value()
  {
    return "robint_msgs/GetCurrentTaskState";
  }

  static const char* value(const ::robint_msgs::GetCurrentTaskState&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskStateRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskState >
template<>
struct MD5Sum< ::robint_msgs::GetCurrentTaskStateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetCurrentTaskState >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskStateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetCurrentTaskStateRequest> should match
// service_traits::DataType< ::robint_msgs::GetCurrentTaskState >
template<>
struct DataType< ::robint_msgs::GetCurrentTaskStateRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetCurrentTaskState >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskStateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskStateResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskState >
template<>
struct MD5Sum< ::robint_msgs::GetCurrentTaskStateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetCurrentTaskState >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskStateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetCurrentTaskStateResponse> should match
// service_traits::DataType< ::robint_msgs::GetCurrentTaskState >
template<>
struct DataType< ::robint_msgs::GetCurrentTaskStateResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetCurrentTaskState >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskStateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETCURRENTTASKSTATE_H
