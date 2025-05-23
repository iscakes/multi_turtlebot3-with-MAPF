// Generated by gencpp from file robint_msgs/AddMapList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ADDMAPLIST_H
#define ROBINT_MSGS_MESSAGE_ADDMAPLIST_H

#include <ros/service_traits.h>


#include <robint_msgs/AddMapListRequest.h>
#include <robint_msgs/AddMapListResponse.h>


namespace robint_msgs
{

struct AddMapList
{

typedef AddMapListRequest Request;
typedef AddMapListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddMapList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::AddMapList > {
  static const char* value()
  {
    return "7377a14f5bd2306faf16013588b937bd";
  }

  static const char* value(const ::robint_msgs::AddMapList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::AddMapList > {
  static const char* value()
  {
    return "robint_msgs/AddMapList";
  }

  static const char* value(const ::robint_msgs::AddMapList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::AddMapListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::AddMapList >
template<>
struct MD5Sum< ::robint_msgs::AddMapListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AddMapList >::value();
  }
  static const char* value(const ::robint_msgs::AddMapListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AddMapListRequest> should match
// service_traits::DataType< ::robint_msgs::AddMapList >
template<>
struct DataType< ::robint_msgs::AddMapListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AddMapList >::value();
  }
  static const char* value(const ::robint_msgs::AddMapListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::AddMapListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::AddMapList >
template<>
struct MD5Sum< ::robint_msgs::AddMapListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AddMapList >::value();
  }
  static const char* value(const ::robint_msgs::AddMapListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AddMapListResponse> should match
// service_traits::DataType< ::robint_msgs::AddMapList >
template<>
struct DataType< ::robint_msgs::AddMapListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AddMapList >::value();
  }
  static const char* value(const ::robint_msgs::AddMapListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ADDMAPLIST_H
