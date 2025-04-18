// Generated by gencpp from file robint_msgs/GetNavigationTaskInfo.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETNAVIGATIONTASKINFO_H
#define ROBINT_MSGS_MESSAGE_GETNAVIGATIONTASKINFO_H

#include <ros/service_traits.h>


#include <robint_msgs/GetNavigationTaskInfoRequest.h>
#include <robint_msgs/GetNavigationTaskInfoResponse.h>


namespace robint_msgs
{

struct GetNavigationTaskInfo
{

typedef GetNavigationTaskInfoRequest Request;
typedef GetNavigationTaskInfoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNavigationTaskInfo
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetNavigationTaskInfo > {
  static const char* value()
  {
    return "a25a07781fce6ba03ac72f05d14c575a";
  }

  static const char* value(const ::robint_msgs::GetNavigationTaskInfo&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetNavigationTaskInfo > {
  static const char* value()
  {
    return "robint_msgs/GetNavigationTaskInfo";
  }

  static const char* value(const ::robint_msgs::GetNavigationTaskInfo&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetNavigationTaskInfoRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetNavigationTaskInfo >
template<>
struct MD5Sum< ::robint_msgs::GetNavigationTaskInfoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetNavigationTaskInfo >::value();
  }
  static const char* value(const ::robint_msgs::GetNavigationTaskInfoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetNavigationTaskInfoRequest> should match
// service_traits::DataType< ::robint_msgs::GetNavigationTaskInfo >
template<>
struct DataType< ::robint_msgs::GetNavigationTaskInfoRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetNavigationTaskInfo >::value();
  }
  static const char* value(const ::robint_msgs::GetNavigationTaskInfoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetNavigationTaskInfoResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetNavigationTaskInfo >
template<>
struct MD5Sum< ::robint_msgs::GetNavigationTaskInfoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetNavigationTaskInfo >::value();
  }
  static const char* value(const ::robint_msgs::GetNavigationTaskInfoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetNavigationTaskInfoResponse> should match
// service_traits::DataType< ::robint_msgs::GetNavigationTaskInfo >
template<>
struct DataType< ::robint_msgs::GetNavigationTaskInfoResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetNavigationTaskInfo >::value();
  }
  static const char* value(const ::robint_msgs::GetNavigationTaskInfoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETNAVIGATIONTASKINFO_H
