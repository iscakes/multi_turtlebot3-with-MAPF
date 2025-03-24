# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/HumanMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import robint_msgs.msg
import std_msgs.msg

class HumanMsg(genpy.Message):
  _md5sum = "aa008a33f57c2fa0495cfd1ccd404ddc"
  _type = "robint_msgs/HumanMsg"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
string id
string name
geometry_msgs/Point32 center_of_world
RectWithConfidence body_rect
RectWithConfidence face_rect
bool is_within_security_line

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: robint_msgs/RectWithConfidence
int32 x
int32 y
int32 width
int32 height
float32 confidence
"""
  __slots__ = ['header','id','name','center_of_world','body_rect','face_rect','is_within_security_line']
  _slot_types = ['std_msgs/Header','string','string','geometry_msgs/Point32','robint_msgs/RectWithConfidence','robint_msgs/RectWithConfidence','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,id,name,center_of_world,body_rect,face_rect,is_within_security_line

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HumanMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.id is None:
        self.id = ''
      if self.name is None:
        self.name = ''
      if self.center_of_world is None:
        self.center_of_world = geometry_msgs.msg.Point32()
      if self.body_rect is None:
        self.body_rect = robint_msgs.msg.RectWithConfidence()
      if self.face_rect is None:
        self.face_rect = robint_msgs.msg.RectWithConfidence()
      if self.is_within_security_line is None:
        self.is_within_security_line = False
    else:
      self.header = std_msgs.msg.Header()
      self.id = ''
      self.name = ''
      self.center_of_world = geometry_msgs.msg.Point32()
      self.body_rect = robint_msgs.msg.RectWithConfidence()
      self.face_rect = robint_msgs.msg.RectWithConfidence()
      self.is_within_security_line = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3f4if4ifB().pack(_x.center_of_world.x, _x.center_of_world.y, _x.center_of_world.z, _x.body_rect.x, _x.body_rect.y, _x.body_rect.width, _x.body_rect.height, _x.body_rect.confidence, _x.face_rect.x, _x.face_rect.y, _x.face_rect.width, _x.face_rect.height, _x.face_rect.confidence, _x.is_within_security_line))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.center_of_world is None:
        self.center_of_world = geometry_msgs.msg.Point32()
      if self.body_rect is None:
        self.body_rect = robint_msgs.msg.RectWithConfidence()
      if self.face_rect is None:
        self.face_rect = robint_msgs.msg.RectWithConfidence()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 53
      (_x.center_of_world.x, _x.center_of_world.y, _x.center_of_world.z, _x.body_rect.x, _x.body_rect.y, _x.body_rect.width, _x.body_rect.height, _x.body_rect.confidence, _x.face_rect.x, _x.face_rect.y, _x.face_rect.width, _x.face_rect.height, _x.face_rect.confidence, _x.is_within_security_line,) = _get_struct_3f4if4ifB().unpack(str[start:end])
      self.is_within_security_line = bool(self.is_within_security_line)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3f4if4ifB().pack(_x.center_of_world.x, _x.center_of_world.y, _x.center_of_world.z, _x.body_rect.x, _x.body_rect.y, _x.body_rect.width, _x.body_rect.height, _x.body_rect.confidence, _x.face_rect.x, _x.face_rect.y, _x.face_rect.width, _x.face_rect.height, _x.face_rect.confidence, _x.is_within_security_line))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.center_of_world is None:
        self.center_of_world = geometry_msgs.msg.Point32()
      if self.body_rect is None:
        self.body_rect = robint_msgs.msg.RectWithConfidence()
      if self.face_rect is None:
        self.face_rect = robint_msgs.msg.RectWithConfidence()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      _x = self
      start = end
      end += 53
      (_x.center_of_world.x, _x.center_of_world.y, _x.center_of_world.z, _x.body_rect.x, _x.body_rect.y, _x.body_rect.width, _x.body_rect.height, _x.body_rect.confidence, _x.face_rect.x, _x.face_rect.y, _x.face_rect.width, _x.face_rect.height, _x.face_rect.confidence, _x.is_within_security_line,) = _get_struct_3f4if4ifB().unpack(str[start:end])
      self.is_within_security_line = bool(self.is_within_security_line)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f4if4ifB = None
def _get_struct_3f4if4ifB():
    global _struct_3f4if4ifB
    if _struct_3f4if4ifB is None:
        _struct_3f4if4ifB = struct.Struct("<3f4if4ifB")
    return _struct_3f4if4ifB
