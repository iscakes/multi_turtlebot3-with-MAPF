# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/TrackPathCommandRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class TrackPathCommandRequest(genpy.Message):
  _md5sum = "4a7bb8eb8dbed3dbc2e8aee10544db34"
  _type = "robint_msgs/TrackPathCommandRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string path_uuid
uint8 mode
uint8 BackAndForth=0
uint8 Loop=1
int32 count
bool nav_to_start
geometry_msgs/Pose end_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  # Pseudo-constants
  START = 0
  PAUSE = 1
  CONTINUE = 2
  STOP = 3
  BackAndForth = 0
  Loop = 1

  __slots__ = ['command','path_uuid','mode','count','nav_to_start','end_pose']
  _slot_types = ['uint8','string','uint8','int32','bool','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command,path_uuid,mode,count,nav_to_start,end_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrackPathCommandRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = 0
      if self.path_uuid is None:
        self.path_uuid = ''
      if self.mode is None:
        self.mode = 0
      if self.count is None:
        self.count = 0
      if self.nav_to_start is None:
        self.nav_to_start = False
      if self.end_pose is None:
        self.end_pose = geometry_msgs.msg.Pose()
    else:
      self.command = 0
      self.path_uuid = ''
      self.mode = 0
      self.count = 0
      self.nav_to_start = False
      self.end_pose = geometry_msgs.msg.Pose()

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
      _x = self.command
      buff.write(_get_struct_B().pack(_x))
      _x = self.path_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BiB7d().pack(_x.mode, _x.count, _x.nav_to_start, _x.end_pose.position.x, _x.end_pose.position.y, _x.end_pose.position.z, _x.end_pose.orientation.x, _x.end_pose.orientation.y, _x.end_pose.orientation.z, _x.end_pose.orientation.w))
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
      if self.end_pose is None:
        self.end_pose = geometry_msgs.msg.Pose()
      end = 0
      start = end
      end += 1
      (self.command,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.path_uuid = str[start:end]
      _x = self
      start = end
      end += 62
      (_x.mode, _x.count, _x.nav_to_start, _x.end_pose.position.x, _x.end_pose.position.y, _x.end_pose.position.z, _x.end_pose.orientation.x, _x.end_pose.orientation.y, _x.end_pose.orientation.z, _x.end_pose.orientation.w,) = _get_struct_BiB7d().unpack(str[start:end])
      self.nav_to_start = bool(self.nav_to_start)
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
      _x = self.command
      buff.write(_get_struct_B().pack(_x))
      _x = self.path_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BiB7d().pack(_x.mode, _x.count, _x.nav_to_start, _x.end_pose.position.x, _x.end_pose.position.y, _x.end_pose.position.z, _x.end_pose.orientation.x, _x.end_pose.orientation.y, _x.end_pose.orientation.z, _x.end_pose.orientation.w))
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
      if self.end_pose is None:
        self.end_pose = geometry_msgs.msg.Pose()
      end = 0
      start = end
      end += 1
      (self.command,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.path_uuid = str[start:end]
      _x = self
      start = end
      end += 62
      (_x.mode, _x.count, _x.nav_to_start, _x.end_pose.position.x, _x.end_pose.position.y, _x.end_pose.position.z, _x.end_pose.orientation.x, _x.end_pose.orientation.y, _x.end_pose.orientation.z, _x.end_pose.orientation.w,) = _get_struct_BiB7d().unpack(str[start:end])
      self.nav_to_start = bool(self.nav_to_start)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_BiB7d = None
def _get_struct_BiB7d():
    global _struct_BiB7d
    if _struct_BiB7d is None:
        _struct_BiB7d = struct.Struct("<BiB7d")
    return _struct_BiB7d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/TrackPathCommandResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TrackPathCommandResponse(genpy.Message):
  _md5sum = "4ad76664b0717ddbf6142456d7398288"
  _type = "robint_msgs/TrackPathCommandResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success
uint8 error_code
string message
"""
  __slots__ = ['success','error_code','message']
  _slot_types = ['bool','uint8','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success,error_code,message

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrackPathCommandResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
      if self.error_code is None:
        self.error_code = 0
      if self.message is None:
        self.message = ''
    else:
      self.success = False
      self.error_code = 0
      self.message = ''

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
      buff.write(_get_struct_2B().pack(_x.success, _x.error_code))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      _x = self
      start = end
      end += 2
      (_x.success, _x.error_code,) = _get_struct_2B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
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
      buff.write(_get_struct_2B().pack(_x.success, _x.error_code))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      _x = self
      start = end
      end += 2
      (_x.success, _x.error_code,) = _get_struct_2B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
class TrackPathCommand(object):
  _type          = 'robint_msgs/TrackPathCommand'
  _md5sum = '6b8d1ea369c9419e81b9375c3cef4b05'
  _request_class  = TrackPathCommandRequest
  _response_class = TrackPathCommandResponse
