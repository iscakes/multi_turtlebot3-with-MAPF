# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/MotionState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import robint_msgs.msg

class MotionState(genpy.Message):
  _md5sum = "03bec34e1a2d7252e47f816595320a27"
  _type = "robint_msgs/MotionState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """TaskStateHeader header
string type      # "move" or "rotate"
float32 distance
float32 theta
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
"""
  __slots__ = ['header','type','distance','theta','r_state','r_feedback','finished']
  _slot_types = ['robint_msgs/TaskStateHeader','string','float32','float32','uint8','uint8','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,type,distance,theta,r_state,r_feedback,finished

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotionState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = robint_msgs.msg.TaskStateHeader()
      if self.type is None:
        self.type = ''
      if self.distance is None:
        self.distance = 0.
      if self.theta is None:
        self.theta = 0.
      if self.r_state is None:
        self.r_state = 0
      if self.r_feedback is None:
        self.r_feedback = 0
      if self.finished is None:
        self.finished = False
    else:
      self.header = robint_msgs.msg.TaskStateHeader()
      self.type = ''
      self.distance = 0.
      self.theta = 0.
      self.r_state = 0
      self.r_feedback = 0
      self.finished = False

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
      buff.write(_get_struct_B4I().pack(_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs))
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f3B().pack(_x.distance, _x.theta, _x.r_state, _x.r_feedback, _x.finished))
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
        self.header = robint_msgs.msg.TaskStateHeader()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs,) = _get_struct_B4I().unpack(str[start:end])
      self.header.activate = bool(self.header.activate)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.distance, _x.theta, _x.r_state, _x.r_feedback, _x.finished,) = _get_struct_2f3B().unpack(str[start:end])
      self.finished = bool(self.finished)
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
      buff.write(_get_struct_B4I().pack(_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs))
      _x = self.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f3B().pack(_x.distance, _x.theta, _x.r_state, _x.r_feedback, _x.finished))
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
        self.header = robint_msgs.msg.TaskStateHeader()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs,) = _get_struct_B4I().unpack(str[start:end])
      self.header.activate = bool(self.header.activate)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.distance, _x.theta, _x.r_state, _x.r_feedback, _x.finished,) = _get_struct_2f3B().unpack(str[start:end])
      self.finished = bool(self.finished)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f3B = None
def _get_struct_2f3B():
    global _struct_2f3B
    if _struct_2f3B is None:
        _struct_2f3B = struct.Struct("<2f3B")
    return _struct_2f3B
_struct_B4I = None
def _get_struct_B4I():
    global _struct_B4I
    if _struct_B4I is None:
        _struct_B4I = struct.Struct("<B4I")
    return _struct_B4I
