# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/MoveIntoElevatorState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import robint_msgs.msg

class MoveIntoElevatorState(genpy.Message):
  _md5sum = "ac65603dd5cc05b9fc0d411a352bf89a"
  _type = "robint_msgs/MoveIntoElevatorState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """TaskStateHeader header
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
"""
  __slots__ = ['header','r_state','r_feedback','finished']
  _slot_types = ['robint_msgs/TaskStateHeader','uint8','uint8','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,r_state,r_feedback,finished

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveIntoElevatorState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = robint_msgs.msg.TaskStateHeader()
      if self.r_state is None:
        self.r_state = 0
      if self.r_feedback is None:
        self.r_feedback = 0
      if self.finished is None:
        self.finished = False
    else:
      self.header = robint_msgs.msg.TaskStateHeader()
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
      buff.write(_get_struct_B4I3B().pack(_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs, _x.r_state, _x.r_feedback, _x.finished))
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
      end += 20
      (_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs, _x.r_state, _x.r_feedback, _x.finished,) = _get_struct_B4I3B().unpack(str[start:end])
      self.header.activate = bool(self.header.activate)
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
      buff.write(_get_struct_B4I3B().pack(_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs, _x.r_state, _x.r_feedback, _x.finished))
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
      end += 20
      (_x.header.activate, _x.header.start_time.secs, _x.header.start_time.nsecs, _x.header.stop_time.secs, _x.header.stop_time.nsecs, _x.r_state, _x.r_feedback, _x.finished,) = _get_struct_B4I3B().unpack(str[start:end])
      self.header.activate = bool(self.header.activate)
      self.finished = bool(self.finished)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B4I3B = None
def _get_struct_B4I3B():
    global _struct_B4I3B
    if _struct_B4I3B is None:
        _struct_B4I3B = struct.Struct("<B4I3B")
    return _struct_B4I3B
