// Generated by gencpp from file robint_msgs/AddCleaningAreaList.msg
// DO NOT EDIT!


#ifndef ROBINT_MSGS_MESSAGE_ADDCLEANINGAREALIST_H
#define ROBINT_MSGS_MESSAGE_ADDCLEANINGAREALIST_H

#include <ros/service_traits.h>


#include <robint_msgs/AddCleaningAreaListRequest.h>
#include <robint_msgs/AddCleaningAreaListResponse.h>


namespace robint_msgs
{

struct AddCleaningAreaList
{

typedef AddCleaningAreaListRequest Request;
typedef AddCleaningAreaListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddCleaningAreaList
} // namespace robint_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robint_msgs::AddCleaningAreaList > {
  static const char* value()
  {
    return "2ac1fb955365c2de28133c632c2401b1";
  }

  static const char* value(const ::robint_msgs::AddCleaningAreaList&) { return value(); }
};

template<>
struct DataType< ::robint_msgs::AddCleaningAreaList > {
  static const char* value()
  {
    return "robint_msgs/AddCleaningAreaList";
  }

  static const char* value(const ::robint_msgs::AddCleaningAreaList&) { return value(); }
};


// service_traits::MD5Sum< ::robint_msgs::AddCleaningAreaListRequest> should match
// service_traits::MD5Sum< ::robint_msgs::AddCleaningAreaList >
template<>
struct MD5Sum< ::robint_msgs::AddCleaningAreaListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AddCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningAreaListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AddCleaningAreaListRequest> should match
// service_traits::DataType< ::robint_msgs::AddCleaningAreaList >
template<>
struct DataType< ::robint_msgs::AddCleaningAreaListRequest>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AddCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningAreaListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robint_msgs::AddCleaningAreaListResponse> should match
// service_traits::MD5Sum< ::robint_msgs::AddCleaningAreaList >
template<>
struct MD5Sum< ::robint_msgs::AddCleaningAreaListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robint_msgs::AddCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningAreaListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robint_msgs::AddCleaningAreaListResponse> should match
// service_traits::DataType< ::robint_msgs::AddCleaningAreaList >
template<>
struct DataType< ::robint_msgs::AddCleaningAreaListResponse>
{
  static const char* value()
  {
    return DataType< ::robint_msgs::AddCleaningAreaList >::value();
  }
  static const char* value(const ::robint_msgs::AddCleaningAreaListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBINT_MSGS_MESSAGE_ADDCLEANINGAREALIST_H
