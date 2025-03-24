// Generated by gencpp from file robint_msgs/AddCleaningPath.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ADDCLEANINGPATH_H
#define ROBINT_MSGS_MESSAGE_ADDCLEANINGPATH_H

#include <ros/service_traits.h>


#include <robint_msgs/AddCleaningPathRequest.h>
#include <robint_msgs/AddCleaningPathResponse.h>


namespace robint_msgs
{

struct AddCleaningPath
{

typedef AddCleaningPathRequest Request;
typedef AddCleaningPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddCleaningPath
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::AddCleaningPath > {
  static const char* value()
  {
    return "2e6f689ab7f8b77edcc78db3d63bc3d6";
  }

  static const char* value(const ::robint_msgs::AddCleaningPath&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::AddCleaningPath > {
  static const char* value()
  {
    return "robint_msgs/AddCleaningPath";
  }

  static const char* value(const ::robint_msgs::AddCleaningPath&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::AddCleaningPathRequest> should match
// service_traits::MD5Sum< ::robint_msgs::AddCleaningPath >
template<>
struct MD5Sum< ::robint_msgs::AddCleaningPathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AddCleaningPath >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningPathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AddCleaningPathRequest> should match
// service_traits::DataType< ::robint_msgs::AddCleaningPath >
template<>
struct DataType< ::robint_msgs::AddCleaningPathRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AddCleaningPath >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningPathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::AddCleaningPathResponse> should match
// service_traits::MD5Sum< ::robint_msgs::AddCleaningPath >
template<>
struct MD5Sum< ::robint_msgs::AddCleaningPathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AddCleaningPath >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningPathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AddCleaningPathResponse> should match
// service_traits::DataType< ::robint_msgs::AddCleaningPath >
template<>
struct DataType< ::robint_msgs::AddCleaningPathResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AddCleaningPath >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningPathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ADDCLEANINGPATH_H
