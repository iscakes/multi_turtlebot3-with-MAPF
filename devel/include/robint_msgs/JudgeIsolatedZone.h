// Generated by gencpp from file robint_msgs/JudgeIsolatedZone.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_JUDGEISOLATEDZONE_H
#define ROBINT_MSGS_MESSAGE_JUDGEISOLATEDZONE_H

#include <ros/service_traits.h>


#include <robint_msgs/JudgeIsolatedZoneRequest.h>
#include <robint_msgs/JudgeIsolatedZoneResponse.h>


namespace robint_msgs
{

struct JudgeIsolatedZone
{

typedef JudgeIsolatedZoneRequest Request;
typedef JudgeIsolatedZoneResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct JudgeIsolatedZone
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::JudgeIsolatedZone > {
  static const char* value()
  {
    return "511ff24d4c9d29b2fb5f70e90296cf3d";
  }

  static const char* value(const ::robint_msgs::JudgeIsolatedZone&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::JudgeIsolatedZone > {
  static const char* value()
  {
    return "robint_msgs/JudgeIsolatedZone";
  }

  static const char* value(const ::robint_msgs::JudgeIsolatedZone&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::JudgeIsolatedZoneRequest> should match
// service_traits::MD5Sum< ::robint_msgs::JudgeIsolatedZone >
template<>
struct MD5Sum< ::robint_msgs::JudgeIsolatedZoneRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::JudgeIsolatedZone >::value();
  }
  static const char* value(const ::robint_msgs::JudgeIsolatedZoneRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::JudgeIsolatedZoneRequest> should match
// service_traits::DataType< ::robint_msgs::JudgeIsolatedZone >
template<>
struct DataType< ::robint_msgs::JudgeIsolatedZoneRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::JudgeIsolatedZone >::value();
  }
  static const char* value(const ::robint_msgs::JudgeIsolatedZoneRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::JudgeIsolatedZoneResponse> should match
// service_traits::MD5Sum< ::robint_msgs::JudgeIsolatedZone >
template<>
struct MD5Sum< ::robint_msgs::JudgeIsolatedZoneResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::JudgeIsolatedZone >::value();
  }
  static const char* value(const ::robint_msgs::JudgeIsolatedZoneResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::JudgeIsolatedZoneResponse> should match
// service_traits::DataType< ::robint_msgs::JudgeIsolatedZone >
template<>
struct DataType< ::robint_msgs::JudgeIsolatedZoneResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::JudgeIsolatedZone >::value();
  }
  static const char* value(const ::robint_msgs::JudgeIsolatedZoneResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_JUDGEISOLATEDZONE_H
