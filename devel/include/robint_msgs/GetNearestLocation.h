// Generated by gencpp from file robint_msgs/GetNearestLocation.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETNEARESTLOCATION_H
#define ROBINT_MSGS_MESSAGE_GETNEARESTLOCATION_H

#include <ros/service_traits.h>


#include <robint_msgs/GetNearestLocationRequest.h>
#include <robint_msgs/GetNearestLocationResponse.h>


namespace robint_msgs
{

struct GetNearestLocation
{

typedef GetNearestLocationRequest Request;
typedef GetNearestLocationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNearestLocation
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetNearestLocation > {
  static const char* value()
  {
    return "59217832930e4065f5b4a461141cabcf";
  }

  static const char* value(const ::robint_msgs::GetNearestLocation&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetNearestLocation > {
  static const char* value()
  {
    return "robint_msgs/GetNearestLocation";
  }

  static const char* value(const ::robint_msgs::GetNearestLocation&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetNearestLocationRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetNearestLocation >
template<>
struct MD5Sum< ::robint_msgs::GetNearestLocationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetNearestLocation >::value();
  }
  static const char* value(const ::robint_msgs::GetNearestLocationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetNearestLocationRequest> should match
// service_traits::DataType< ::robint_msgs::GetNearestLocation >
template<>
struct DataType< ::robint_msgs::GetNearestLocationRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetNearestLocation >::value();
  }
  static const char* value(const ::robint_msgs::GetNearestLocationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetNearestLocationResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetNearestLocation >
template<>
struct MD5Sum< ::robint_msgs::GetNearestLocationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetNearestLocation >::value();
  }
  static const char* value(const ::robint_msgs::GetNearestLocationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetNearestLocationResponse> should match
// service_traits::DataType< ::robint_msgs::GetNearestLocation >
template<>
struct DataType< ::robint_msgs::GetNearestLocationResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetNearestLocation >::value();
  }
  static const char* value(const ::robint_msgs::GetNearestLocationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETNEARESTLOCATION_H
