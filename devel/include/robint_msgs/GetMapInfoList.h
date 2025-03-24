// Generated by gencpp from file robint_msgs/GetMapInfoList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETMAPINFOLIST_H
#define ROBINT_MSGS_MESSAGE_GETMAPINFOLIST_H

#include <ros/service_traits.h>


#include <robint_msgs/GetMapInfoListRequest.h>
#include <robint_msgs/GetMapInfoListResponse.h>


namespace robint_msgs
{

struct GetMapInfoList
{

typedef GetMapInfoListRequest Request;
typedef GetMapInfoListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetMapInfoList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetMapInfoList > {
  static const char* value()
  {
    return "57f05d6fb9592a3ccafd77c7df55a4c2";
  }

  static const char* value(const ::robint_msgs::GetMapInfoList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetMapInfoList > {
  static const char* value()
  {
    return "robint_msgs/GetMapInfoList";
  }

  static const char* value(const ::robint_msgs::GetMapInfoList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetMapInfoListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetMapInfoList >
template<>
struct MD5Sum< ::robint_msgs::GetMapInfoListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetMapInfoList >::value();
  }
  static const char* value(const ::robint_msgs::GetMapInfoListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetMapInfoListRequest> should match
// service_traits::DataType< ::robint_msgs::GetMapInfoList >
template<>
struct DataType< ::robint_msgs::GetMapInfoListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetMapInfoList >::value();
  }
  static const char* value(const ::robint_msgs::GetMapInfoListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetMapInfoListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetMapInfoList >
template<>
struct MD5Sum< ::robint_msgs::GetMapInfoListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetMapInfoList >::value();
  }
  static const char* value(const ::robint_msgs::GetMapInfoListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetMapInfoListResponse> should match
// service_traits::DataType< ::robint_msgs::GetMapInfoList >
template<>
struct DataType< ::robint_msgs::GetMapInfoListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetMapInfoList >::value();
  }
  static const char* value(const ::robint_msgs::GetMapInfoListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETMAPINFOLIST_H
