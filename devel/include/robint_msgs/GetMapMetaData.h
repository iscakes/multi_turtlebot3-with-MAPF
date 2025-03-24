// Generated by gencpp from file robint_msgs/GetMapMetaData.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETMAPMETADATA_H
#define ROBINT_MSGS_MESSAGE_GETMAPMETADATA_H

#include <ros/service_traits.h>


#include <robint_msgs/GetMapMetaDataRequest.h>
#include <robint_msgs/GetMapMetaDataResponse.h>


namespace robint_msgs
{

struct GetMapMetaData
{

typedef GetMapMetaDataRequest Request;
typedef GetMapMetaDataResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetMapMetaData
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetMapMetaData > {
  static const char* value()
  {
    return "4b57def2d4ddfc8e6f492e3341a1f1ac";
  }

  static const char* value(const ::robint_msgs::GetMapMetaData&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetMapMetaData > {
  static const char* value()
  {
    return "robint_msgs/GetMapMetaData";
  }

  static const char* value(const ::robint_msgs::GetMapMetaData&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetMapMetaDataRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetMapMetaData >
template<>
struct MD5Sum< ::robint_msgs::GetMapMetaDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetMapMetaData >::value();
  }
  static const char* value(const ::robint_msgs::GetMapMetaDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetMapMetaDataRequest> should match
// service_traits::DataType< ::robint_msgs::GetMapMetaData >
template<>
struct DataType< ::robint_msgs::GetMapMetaDataRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetMapMetaData >::value();
  }
  static const char* value(const ::robint_msgs::GetMapMetaDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetMapMetaDataResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetMapMetaData >
template<>
struct MD5Sum< ::robint_msgs::GetMapMetaDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetMapMetaData >::value();
  }
  static const char* value(const ::robint_msgs::GetMapMetaDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetMapMetaDataResponse> should match
// service_traits::DataType< ::robint_msgs::GetMapMetaData >
template<>
struct DataType< ::robint_msgs::GetMapMetaDataResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetMapMetaData >::value();
  }
  static const char* value(const ::robint_msgs::GetMapMetaDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETMAPMETADATA_H
