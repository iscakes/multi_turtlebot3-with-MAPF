// Generated by gencpp from file robint_msgs/GetLocationList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETLOCATIONLIST_H
#define ROBINT_MSGS_MESSAGE_GETLOCATIONLIST_H

#include <ros/service_traits.h>


#include <robint_msgs/GetLocationListRequest.h>
#include <robint_msgs/GetLocationListResponse.h>


namespace robint_msgs
{

struct GetLocationList
{

typedef GetLocationListRequest Request;
typedef GetLocationListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLocationList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetLocationList > {
  static const char* value()
  {
    return "99bdb46f323a7f571c135d2543eb7b49";
  }

  static const char* value(const ::robint_msgs::GetLocationList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetLocationList > {
  static const char* value()
  {
    return "robint_msgs/GetLocationList";
  }

  static const char* value(const ::robint_msgs::GetLocationList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetLocationListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetLocationList >
template<>
struct MD5Sum< ::robint_msgs::GetLocationListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetLocationList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetLocationListRequest> should match
// service_traits::DataType< ::robint_msgs::GetLocationList >
template<>
struct DataType< ::robint_msgs::GetLocationListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetLocationList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetLocationListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetLocationList >
template<>
struct MD5Sum< ::robint_msgs::GetLocationListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetLocationList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetLocationListResponse> should match
// service_traits::DataType< ::robint_msgs::GetLocationList >
template<>
struct DataType< ::robint_msgs::GetLocationListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetLocationList >::value();
  }
  static const char* value(const ::robint_msgs::GetLocationListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETLOCATIONLIST_H
