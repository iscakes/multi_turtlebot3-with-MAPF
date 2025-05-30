// Generated by gencpp from file robint_msgs/GetCurrentTaskName.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCURRENTTASKNAME_H
#define ROBINT_MSGS_MESSAGE_GETCURRENTTASKNAME_H

#include <ros/service_traits.h>


#include <robint_msgs/GetCurrentTaskNameRequest.h>
#include <robint_msgs/GetCurrentTaskNameResponse.h>


namespace robint_msgs
{

struct GetCurrentTaskName
{

typedef GetCurrentTaskNameRequest Request;
typedef GetCurrentTaskNameResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCurrentTaskName
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetCurrentTaskName > {
  static const char* value()
  {
    return "f9535dd2e17d62b0cbf72cb334744629";
  }

  static const char* value(const ::robint_msgs::GetCurrentTaskName&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetCurrentTaskName > {
  static const char* value()
  {
    return "robint_msgs/GetCurrentTaskName";
  }

  static const char* value(const ::robint_msgs::GetCurrentTaskName&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskNameRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskName >
template<>
struct MD5Sum< ::robint_msgs::GetCurrentTaskNameRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetCurrentTaskName >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskNameRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetCurrentTaskNameRequest> should match
// service_traits::DataType< ::robint_msgs::GetCurrentTaskName >
template<>
struct DataType< ::robint_msgs::GetCurrentTaskNameRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetCurrentTaskName >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskNameRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskNameResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetCurrentTaskName >
template<>
struct MD5Sum< ::robint_msgs::GetCurrentTaskNameResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetCurrentTaskName >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskNameResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetCurrentTaskNameResponse> should match
// service_traits::DataType< ::robint_msgs::GetCurrentTaskName >
template<>
struct DataType< ::robint_msgs::GetCurrentTaskNameResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetCurrentTaskName >::value();
  }
  static const char* value(const ::robint_msgs::GetCurrentTaskNameResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETCURRENTTASKNAME_H
