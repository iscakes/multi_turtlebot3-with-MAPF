// Generated by gencpp from file robint_msgs/GetRelativePose.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_GETRELATIVEPOSE_H
#define ROBINT_MSGS_MESSAGE_GETRELATIVEPOSE_H

#include <ros/service_traits.h>


#include <robint_msgs/GetRelativePoseRequest.h>
#include <robint_msgs/GetRelativePoseResponse.h>


namespace robint_msgs
{

struct GetRelativePose
{

typedef GetRelativePoseRequest Request;
typedef GetRelativePoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetRelativePose
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::GetRelativePose > {
  static const char* value()
  {
    return "730a98302b89166d77bd7dc42fb7f13a";
  }

  static const char* value(const ::robint_msgs::GetRelativePose&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::GetRelativePose > {
  static const char* value()
  {
    return "robint_msgs/GetRelativePose";
  }

  static const char* value(const ::robint_msgs::GetRelativePose&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::GetRelativePoseRequest> should match
// service_traits::MD5Sum< ::robint_msgs::GetRelativePose >
template<>
struct MD5Sum< ::robint_msgs::GetRelativePoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetRelativePose >::value();
  }
  static const char* value(const ::robint_msgs::GetRelativePoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetRelativePoseRequest> should match
// service_traits::DataType< ::robint_msgs::GetRelativePose >
template<>
struct DataType< ::robint_msgs::GetRelativePoseRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetRelativePose >::value();
  }
  static const char* value(const ::robint_msgs::GetRelativePoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::GetRelativePoseResponse> should match
// service_traits::MD5Sum< ::robint_msgs::GetRelativePose >
template<>
struct MD5Sum< ::robint_msgs::GetRelativePoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::GetRelativePose >::value();
  }
  static const char* value(const ::robint_msgs::GetRelativePoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::GetRelativePoseResponse> should match
// service_traits::DataType< ::robint_msgs::GetRelativePose >
template<>
struct DataType< ::robint_msgs::GetRelativePoseResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::GetRelativePose >::value();
  }
  static const char* value(const ::robint_msgs::GetRelativePoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_GETRELATIVEPOSE_H
