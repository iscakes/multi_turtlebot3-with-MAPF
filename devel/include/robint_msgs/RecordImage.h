// Generated by gencpp from file robint_msgs/RecordImage.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_RECORDIMAGE_H
#define ROBINT_MSGS_MESSAGE_RECORDIMAGE_H

#include <ros/service_traits.h>


#include <robint_msgs/RecordImageRequest.h>
#include <robint_msgs/RecordImageResponse.h>


namespace robint_msgs
{

struct RecordImage
{

typedef RecordImageRequest Request;
typedef RecordImageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RecordImage
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::RecordImage > {
  static const char* value()
  {
    return "773a71c89a6b14108e80ced63f2ba488";
  }

  static const char* value(const ::robint_msgs::RecordImage&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::RecordImage > {
  static const char* value()
  {
    return "robint_msgs/RecordImage";
  }

  static const char* value(const ::robint_msgs::RecordImage&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::RecordImageRequest> should match
// service_traits::MD5Sum< ::robint_msgs::RecordImage >
template<>
struct MD5Sum< ::robint_msgs::RecordImageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::RecordImage >::value();
  }
  static const char* value(const ::robint_msgs::RecordImageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::RecordImageRequest> should match
// service_traits::DataType< ::robint_msgs::RecordImage >
template<>
struct DataType< ::robint_msgs::RecordImageRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::RecordImage >::value();
  }
  static const char* value(const ::robint_msgs::RecordImageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::RecordImageResponse> should match
// service_traits::MD5Sum< ::robint_msgs::RecordImage >
template<>
struct MD5Sum< ::robint_msgs::RecordImageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::RecordImage >::value();
  }
  static const char* value(const ::robint_msgs::RecordImageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::RecordImageResponse> should match
// service_traits::DataType< ::robint_msgs::RecordImage >
template<>
struct DataType< ::robint_msgs::RecordImageResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::RecordImage >::value();
  }
  static const char* value(const ::robint_msgs::RecordImageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_RECORDIMAGE_H
