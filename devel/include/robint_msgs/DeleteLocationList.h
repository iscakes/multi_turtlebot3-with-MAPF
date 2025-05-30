// Generated by gencpp from file robint_msgs/DeleteLocationList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_DELETELOCATIONLIST_H
#define ROBINT_MSGS_MESSAGE_DELETELOCATIONLIST_H

#include <ros/service_traits.h>


#include <robint_msgs/DeleteLocationListRequest.h>
#include <robint_msgs/DeleteLocationListResponse.h>


namespace robint_msgs
{

struct DeleteLocationList
{

typedef DeleteLocationListRequest Request;
typedef DeleteLocationListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DeleteLocationList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::DeleteLocationList > {
  static const char* value()
  {
    return "a5384e6972f15cf311e3fd436279ad0f";
  }

  static const char* value(const ::robint_msgs::DeleteLocationList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::DeleteLocationList > {
  static const char* value()
  {
    return "robint_msgs/DeleteLocationList";
  }

  static const char* value(const ::robint_msgs::DeleteLocationList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::DeleteLocationListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::DeleteLocationList >
template<>
struct MD5Sum< ::robint_msgs::DeleteLocationListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::DeleteLocationList >::value();
  }
  static const char* value(const ::robint_msgs::DeleteLocationListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::DeleteLocationListRequest> should match
// service_traits::DataType< ::robint_msgs::DeleteLocationList >
template<>
struct DataType< ::robint_msgs::DeleteLocationListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::DeleteLocationList >::value();
  }
  static const char* value(const ::robint_msgs::DeleteLocationListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::DeleteLocationListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::DeleteLocationList >
template<>
struct MD5Sum< ::robint_msgs::DeleteLocationListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::DeleteLocationList >::value();
  }
  static const char* value(const ::robint_msgs::DeleteLocationListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::DeleteLocationListResponse> should match
// service_traits::DataType< ::robint_msgs::DeleteLocationList >
template<>
struct DataType< ::robint_msgs::DeleteLocationListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::DeleteLocationList >::value();
  }
  static const char* value(const ::robint_msgs::DeleteLocationListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_DELETELOCATIONLIST_H
