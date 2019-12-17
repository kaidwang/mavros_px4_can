// Generated by gencpp from file mavros_msgs/ParamSetRequest.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_PARAMSETREQUEST_H
#define MAVROS_MSGS_MESSAGE_PARAMSETREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mavros_msgs/ParamValue.h>

namespace mavros_msgs
{
template <class ContainerAllocator>
struct ParamSetRequest_
{
  typedef ParamSetRequest_<ContainerAllocator> Type;

  ParamSetRequest_()
    : param_id()
    , value()  {
    }
  ParamSetRequest_(const ContainerAllocator& _alloc)
    : param_id(_alloc)
    , value(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _param_id_type;
  _param_id_type param_id;

   typedef  ::mavros_msgs::ParamValue_<ContainerAllocator>  _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ParamSetRequest_

typedef ::mavros_msgs::ParamSetRequest_<std::allocator<void> > ParamSetRequest;

typedef boost::shared_ptr< ::mavros_msgs::ParamSetRequest > ParamSetRequestPtr;
typedef boost::shared_ptr< ::mavros_msgs::ParamSetRequest const> ParamSetRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros_msgs::ParamSetRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geographic_msgs': ['/opt/ros/kinetic/share/geographic_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'mavros_msgs': ['/home/nvidia/kd_px4_can/src/mavros/mavros_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a17f346bc27984b348c799c674a04d9";
  }

  static const char* value(const ::mavros_msgs::ParamSetRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a17f346bc27984bULL;
  static const uint64_t static_value2 = 0x348c799c674a04d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros_msgs/ParamSetRequest";
  }

  static const char* value(const ::mavros_msgs::ParamSetRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
string param_id\n\
mavros_msgs/ParamValue value\n\
\n\
================================================================================\n\
MSG: mavros_msgs/ParamValue\n\
# Parameter value storage type.\n\
#\n\
# Integer and float fields:\n\
#\n\
# if integer != 0: it is integer value\n\
# else if real != 0.0: it is float value\n\
# else: it is zero.\n\
\n\
int64 integer\n\
float64 real\n\
";
  }

  static const char* value(const ::mavros_msgs::ParamSetRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.param_id);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamSetRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros_msgs::ParamSetRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros_msgs::ParamSetRequest_<ContainerAllocator>& v)
  {
    s << indent << "param_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.param_id);
    s << indent << "value: ";
    s << std::endl;
    Printer< ::mavros_msgs::ParamValue_<ContainerAllocator> >::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_PARAMSETREQUEST_H
