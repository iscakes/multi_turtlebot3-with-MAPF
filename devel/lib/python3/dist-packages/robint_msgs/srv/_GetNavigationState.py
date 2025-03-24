# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/GetNavigationStateRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetNavigationStateRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "robint_msgs/GetNavigationStateRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetNavigationStateRequest, self).__init__(*args, **kwds)

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
      pass
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
      end = 0
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
      pass
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
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/GetNavigationStateResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import robint_msgs.msg

class GetNavigationStateResponse(genpy.Message):
  _md5sum = "f3610dd921b0fb5ea6025bf47fc93512"
  _type = "robint_msgs/GetNavigationStateResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """NavigationState navigation_state
bool result

================================================================================
MSG: robint_msgs/NavigationState
TaskStateHeader header 
string goal_name
string location_name
string goal_group_uuid
string state
string feedback
uint8 r_state
uint8 r_feedback
bool reached
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
"""
  __slots__ = ['navigation_state','result']
  _slot_types = ['robint_msgs/NavigationState','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       navigation_state,result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetNavigationStateResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.navigation_state is None:
        self.navigation_state = robint_msgs.msg.NavigationState()
      if self.result is None:
        self.result = False
    else:
      self.navigation_state = robint_msgs.msg.NavigationState()
      self.result = False

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
      buff.write(_get_struct_B4I().pack(_x.navigation_state.header.activate, _x.navigation_state.header.start_time.secs, _x.navigation_state.header.start_time.nsecs, _x.navigation_state.header.stop_time.secs, _x.navigation_state.header.stop_time.nsecs))
      _x = self.navigation_state.goal_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.location_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.goal_group_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.feedback
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4B().pack(_x.navigation_state.r_state, _x.navigation_state.r_feedback, _x.navigation_state.reached, _x.result))
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
      if self.navigation_state is None:
        self.navigation_state = robint_msgs.msg.NavigationState()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.navigation_state.header.activate, _x.navigation_state.header.start_time.secs, _x.navigation_state.header.start_time.nsecs, _x.navigation_state.header.stop_time.secs, _x.navigation_state.header.stop_time.nsecs,) = _get_struct_B4I().unpack(str[start:end])
      self.navigation_state.header.activate = bool(self.navigation_state.header.activate)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.goal_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.goal_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.location_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.location_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.goal_group_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.goal_group_uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.feedback = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.feedback = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.navigation_state.r_state, _x.navigation_state.r_feedback, _x.navigation_state.reached, _x.result,) = _get_struct_4B().unpack(str[start:end])
      self.navigation_state.reached = bool(self.navigation_state.reached)
      self.result = bool(self.result)
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
      buff.write(_get_struct_B4I().pack(_x.navigation_state.header.activate, _x.navigation_state.header.start_time.secs, _x.navigation_state.header.start_time.nsecs, _x.navigation_state.header.stop_time.secs, _x.navigation_state.header.stop_time.nsecs))
      _x = self.navigation_state.goal_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.location_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.goal_group_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.navigation_state.feedback
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4B().pack(_x.navigation_state.r_state, _x.navigation_state.r_feedback, _x.navigation_state.reached, _x.result))
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
      if self.navigation_state is None:
        self.navigation_state = robint_msgs.msg.NavigationState()
      end = 0
      _x = self
      start = end
      end += 17
      (_x.navigation_state.header.activate, _x.navigation_state.header.start_time.secs, _x.navigation_state.header.start_time.nsecs, _x.navigation_state.header.stop_time.secs, _x.navigation_state.header.stop_time.nsecs,) = _get_struct_B4I().unpack(str[start:end])
      self.navigation_state.header.activate = bool(self.navigation_state.header.activate)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.goal_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.goal_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.location_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.location_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.goal_group_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.goal_group_uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.navigation_state.feedback = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.navigation_state.feedback = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.navigation_state.r_state, _x.navigation_state.r_feedback, _x.navigation_state.reached, _x.result,) = _get_struct_4B().unpack(str[start:end])
      self.navigation_state.reached = bool(self.navigation_state.reached)
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4B = None
def _get_struct_4B():
    global _struct_4B
    if _struct_4B is None:
        _struct_4B = struct.Struct("<4B")
    return _struct_4B
_struct_B4I = None
def _get_struct_B4I():
    global _struct_B4I
    if _struct_B4I is None:
        _struct_B4I = struct.Struct("<B4I")
    return _struct_B4I
class GetNavigationState(object):
  _type          = 'robint_msgs/GetNavigationState'
  _md5sum = 'f3610dd921b0fb5ea6025bf47fc93512'
  _request_class  = GetNavigationStateRequest
  _response_class = GetNavigationStateResponse
