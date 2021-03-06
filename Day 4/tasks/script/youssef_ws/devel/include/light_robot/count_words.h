// Generated by gencpp from file light_robot/count_words.msg
// DO NOT EDIT!


#ifndef LIGHT_ROBOT_MESSAGE_COUNT_WORDS_H
#define LIGHT_ROBOT_MESSAGE_COUNT_WORDS_H

#include <ros/service_traits.h>


#include <light_robot/count_wordsRequest.h>
#include <light_robot/count_wordsResponse.h>


namespace light_robot
{

struct count_words
{

typedef count_wordsRequest Request;
typedef count_wordsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct count_words
} // namespace light_robot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::light_robot::count_words > {
  static const char* value()
  {
    return "a72516dd6f0c89c765a5e6ee697ada54";
  }

  static const char* value(const ::light_robot::count_words&) { return value(); }
};

template<>
struct DataType< ::light_robot::count_words > {
  static const char* value()
  {
    return "light_robot/count_words";
  }

  static const char* value(const ::light_robot::count_words&) { return value(); }
};


// service_traits::MD5Sum< ::light_robot::count_wordsRequest> should match 
// service_traits::MD5Sum< ::light_robot::count_words > 
template<>
struct MD5Sum< ::light_robot::count_wordsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::light_robot::count_words >::value();
  }
  static const char* value(const ::light_robot::count_wordsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::light_robot::count_wordsRequest> should match 
// service_traits::DataType< ::light_robot::count_words > 
template<>
struct DataType< ::light_robot::count_wordsRequest>
{
  static const char* value()
  {
    return DataType< ::light_robot::count_words >::value();
  }
  static const char* value(const ::light_robot::count_wordsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::light_robot::count_wordsResponse> should match 
// service_traits::MD5Sum< ::light_robot::count_words > 
template<>
struct MD5Sum< ::light_robot::count_wordsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::light_robot::count_words >::value();
  }
  static const char* value(const ::light_robot::count_wordsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::light_robot::count_wordsResponse> should match 
// service_traits::DataType< ::light_robot::count_words > 
template<>
struct DataType< ::light_robot::count_wordsResponse>
{
  static const char* value()
  {
    return DataType< ::light_robot::count_words >::value();
  }
  static const char* value(const ::light_robot::count_wordsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LIGHT_ROBOT_MESSAGE_COUNT_WORDS_H
