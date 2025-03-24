// Generated by gencpp from file robint_msgs/GetLocationNameList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETLOCATIONNAMELIST_H
#define ROBINT_MSGS_MESSAGE_GETLOCATIONNAMELIST_H

#include <ros/service_traits.h>


#include <robint_msgs/GetLocationNameListRequest.h>
#include <robint_msgs/GetLocationNameListResponse.h>


namespace robint_msgs
{

struct GetLocationNameList
{

typedef GetLocationNameListRequest Request;
typedef GetLocationNameListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLocationNameList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetLocationNameList > {
  static const char* value()
  {
    return "bb2a629baa6b7acd53d72d954cb25dd5";
  }

  static const char* value(const ::robint_msgs::GetLocationNameList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetLocationNameList > {
  static const char* value()
  {
    return "robint_msgs/GetLocationNameList";
  }

  static const char* value(const ::robint_msgs::GetLocationNameList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetLocationNameListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetLocationNameList >
template<>
struct MD5Sum< ::robint_msgs::GetLocationNameListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetLocationNameList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationNameListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetLocationNameListRequest> should match
// service_traits::DataType< ::robint_msgs::GetLocationNameList >
template<>
struct DataType< ::robint_msgs::GetLocationNameListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetLocationNameList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationNameListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetLocationNameListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetLocationNameList >
template<>
struct MD5Sum< ::robint_msgs::GetLocationNameListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetLocationNameList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationNameListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetLocationNameListResponse> should match
// service_traits::DataType< ::robint_msgs::GetLocationNameList >
template<>
struct DataType< ::robint_msgs::GetLocationNameListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetLocationNameList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationNameListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETLOCATIONNAMELIST_H
