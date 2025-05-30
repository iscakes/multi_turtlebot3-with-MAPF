// Generated by gencpp from file robint_msgs/GetVirtualWallList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETVIRTUALWALLLIST_H
#define ROBINT_MSGS_MESSAGE_GETVIRTUALWALLLIST_H

#include <ros/service_traits.h>


#include <robint_msgs/GetVirtualWallListRequest.h>
#include <robint_msgs/GetVirtualWallListResponse.h>


namespace robint_msgs
{

struct GetVirtualWallList
{

typedef GetVirtualWallListRequest Request;
typedef GetVirtualWallListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetVirtualWallList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetVirtualWallList > {
  static const char* value()
  {
    return "97620b03c4f2a28bcc6888c4a51a4cc2";
  }

  static const char* value(const ::robint_msgs::GetVirtualWallList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetVirtualWallList > {
  static const char* value()
  {
    return "robint_msgs/GetVirtualWallList";
  }

  static const char* value(const ::robint_msgs::GetVirtualWallList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetVirtualWallListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetVirtualWallList >
template<>
struct MD5Sum< ::robint_msgs::GetVirtualWallListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetVirtualWallList >::value();
  }
  static const char* value(const ::robint_msgs::GetVirtualWallListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetVirtualWallListRequest> should match
// service_traits::DataType< ::robint_msgs::GetVirtualWallList >
template<>
struct DataType< ::robint_msgs::GetVirtualWallListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetVirtualWallList >::value();
  }
  static const char* value(const ::robint_msgs::GetVirtualWallListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetVirtualWallListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetVirtualWallList >
template<>
struct MD5Sum< ::robint_msgs::GetVirtualWallListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetVirtualWallList >::value();
  }
  static const char* value(const ::robint_msgs::GetVirtualWallListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetVirtualWallListResponse> should match
// service_traits::DataType< ::robint_msgs::GetVirtualWallList >
template<>
struct DataType< ::robint_msgs::GetVirtualWallListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetVirtualWallList >::value();
  }
  static const char* value(const ::robint_msgs::GetVirtualWallListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETVIRTUALWALLLIST_H
