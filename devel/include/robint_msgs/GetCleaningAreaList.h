// Generated by gencpp from file robint_msgs/GetCleaningAreaList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETCLEANINGAREALIST_H
#define ROBINT_MSGS_MESSAGE_GETCLEANINGAREALIST_H

#include <ros/service_traits.h>


#include <robint_msgs/GetCleaningAreaListRequest.h>
#include <robint_msgs/GetCleaningAreaListResponse.h>


namespace robint_msgs
{

struct GetCleaningAreaList
{

typedef GetCleaningAreaListRequest Request;
typedef GetCleaningAreaListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCleaningAreaList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetCleaningAreaList > {
  static const char* value()
  {
    return "553fc9d22a1c98218e5830b3a4d1e80c";
  }

  static const char* value(const ::robint_msgs::GetCleaningAreaList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetCleaningAreaList > {
  static const char* value()
  {
    return "robint_msgs/GetCleaningAreaList";
  }

  static const char* value(const ::robint_msgs::GetCleaningAreaList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetCleaningAreaListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetCleaningAreaList >
template<>
struct MD5Sum< ::robint_msgs::GetCleaningAreaListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::GetCleaningAreaListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetCleaningAreaListRequest> should match
// service_traits::DataType< ::robint_msgs::GetCleaningAreaList >
template<>
struct DataType< ::robint_msgs::GetCleaningAreaListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::GetCleaningAreaListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetCleaningAreaListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetCleaningAreaList >
template<>
struct MD5Sum< ::robint_msgs::GetCleaningAreaListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::GetCleaningAreaListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetCleaningAreaListResponse> should match
// service_traits::DataType< ::robint_msgs::GetCleaningAreaList >
template<>
struct DataType< ::robint_msgs::GetCleaningAreaListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::GetCleaningAreaListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETCLEANINGAREALIST_H
