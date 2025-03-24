# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/CleaningCommandRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class CleaningCommandRequest(genpy.Message):
  _md5sum = "e374fa9e40a69c7a806539d57179d209"
  _type = "robint_msgs/CleaningCommandRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 command       # 'Start', 'Pause', 'Resume', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 RESUME=2
uint8 STOP=3
string cleaning_area_uuid
bool resume_unfinished_task
bool save_cleaning_process
bool enable_track_contour
int32 loop_count
float64 track_back_dist
bool enable_break_point
geometry_msgs/PoseStamped break_robot_pose
string break_subtask
int32 break_loop_index

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
  RESUME = 2
  STOP = 3

  __slots__ = ['command','cleaning_area_uuid','resume_unfinished_task','save_cleaning_process','enable_track_contour','loop_count','track_back_dist','enable_break_point','break_robot_pose','break_subtask','break_loop_index']
  _slot_types = ['uint8','string','bool','bool','bool','int32','float64','bool','geometry_msgs/PoseStamped','string','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command,cleaning_area_uuid,resume_unfinished_task,save_cleaning_process,enable_track_contour,loop_count,track_back_dist,enable_break_point,break_robot_pose,break_subtask,break_loop_index

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CleaningCommandRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = 0
      if self.cleaning_area_uuid is None:
        self.cleaning_area_uuid = ''
      if self.resume_unfinished_task is None:
        self.resume_unfinished_task = False
      if self.save_cleaning_process is None:
        self.save_cleaning_process = False
      if self.enable_track_contour is None:
        self.enable_track_contour = False
      if self.loop_count is None:
        self.loop_count = 0
      if self.track_back_dist is None:
        self.track_back_dist = 0.
      if self.enable_break_point is None:
        self.enable_break_point = False
      if self.break_robot_pose is None:
        self.break_robot_pose = geometry_msgs.msg.PoseStamped()
      if self.break_subtask is None:
        self.break_subtask = ''
      if self.break_loop_index is None:
        self.break_loop_index = 0
    else:
      self.command = 0
      self.cleaning_area_uuid = ''
      self.resume_unfinished_task = False
      self.save_cleaning_process = False
      self.enable_track_contour = False
      self.loop_count = 0
      self.track_back_dist = 0.
      self.enable_break_point = False
      self.break_robot_pose = geometry_msgs.msg.PoseStamped()
      self.break_subtask = ''
      self.break_loop_index = 0

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
      _x = self.cleaning_area_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3BidB3I().pack(_x.resume_unfinished_task, _x.save_cleaning_process, _x.enable_track_contour, _x.loop_count, _x.track_back_dist, _x.enable_break_point, _x.break_robot_pose.header.seq, _x.break_robot_pose.header.stamp.secs, _x.break_robot_pose.header.stamp.nsecs))
      _x = self.break_robot_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.break_robot_pose.pose.position.x, _x.break_robot_pose.pose.position.y, _x.break_robot_pose.pose.position.z, _x.break_robot_pose.pose.orientation.x, _x.break_robot_pose.pose.orientation.y, _x.break_robot_pose.pose.orientation.z, _x.break_robot_pose.pose.orientation.w))
      _x = self.break_subtask
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.break_loop_index
      buff.write(_get_struct_i().pack(_x))
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
      if self.break_robot_pose is None:
        self.break_robot_pose = geometry_msgs.msg.PoseStamped()
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
        self.cleaning_area_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cleaning_area_uuid = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.resume_unfinished_task, _x.save_cleaning_process, _x.enable_track_contour, _x.loop_count, _x.track_back_dist, _x.enable_break_point, _x.break_robot_pose.header.seq, _x.break_robot_pose.header.stamp.secs, _x.break_robot_pose.header.stamp.nsecs,) = _get_struct_3BidB3I().unpack(str[start:end])
      self.resume_unfinished_task = bool(self.resume_unfinished_task)
      self.save_cleaning_process = bool(self.save_cleaning_process)
      self.enable_track_contour = bool(self.enable_track_contour)
      self.enable_break_point = bool(self.enable_break_point)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.break_robot_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.break_robot_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.break_robot_pose.pose.position.x, _x.break_robot_pose.pose.position.y, _x.break_robot_pose.pose.position.z, _x.break_robot_pose.pose.orientation.x, _x.break_robot_pose.pose.orientation.y, _x.break_robot_pose.pose.orientation.z, _x.break_robot_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.break_subtask = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.break_subtask = str[start:end]
      start = end
      end += 4
      (self.break_loop_index,) = _get_struct_i().unpack(str[start:end])
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
      _x = self.cleaning_area_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3BidB3I().pack(_x.resume_unfinished_task, _x.save_cleaning_process, _x.enable_track_contour, _x.loop_count, _x.track_back_dist, _x.enable_break_point, _x.break_robot_pose.header.seq, _x.break_robot_pose.header.stamp.secs, _x.break_robot_pose.header.stamp.nsecs))
      _x = self.break_robot_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.break_robot_pose.pose.position.x, _x.break_robot_pose.pose.position.y, _x.break_robot_pose.pose.position.z, _x.break_robot_pose.pose.orientation.x, _x.break_robot_pose.pose.orientation.y, _x.break_robot_pose.pose.orientation.z, _x.break_robot_pose.pose.orientation.w))
      _x = self.break_subtask
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.break_loop_index
      buff.write(_get_struct_i().pack(_x))
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
      if self.break_robot_pose is None:
        self.break_robot_pose = geometry_msgs.msg.PoseStamped()
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
        self.cleaning_area_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cleaning_area_uuid = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.resume_unfinished_task, _x.save_cleaning_process, _x.enable_track_contour, _x.loop_count, _x.track_back_dist, _x.enable_break_point, _x.break_robot_pose.header.seq, _x.break_robot_pose.header.stamp.secs, _x.break_robot_pose.header.stamp.nsecs,) = _get_struct_3BidB3I().unpack(str[start:end])
      self.resume_unfinished_task = bool(self.resume_unfinished_task)
      self.save_cleaning_process = bool(self.save_cleaning_process)
      self.enable_track_contour = bool(self.enable_track_contour)
      self.enable_break_point = bool(self.enable_break_point)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.break_robot_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.break_robot_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.break_robot_pose.pose.position.x, _x.break_robot_pose.pose.position.y, _x.break_robot_pose.pose.position.z, _x.break_robot_pose.pose.orientation.x, _x.break_robot_pose.pose.orientation.y, _x.break_robot_pose.pose.orientation.z, _x.break_robot_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.break_subtask = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.break_subtask = str[start:end]
      start = end
      end += 4
      (self.break_loop_index,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3BidB3I = None
def _get_struct_3BidB3I():
    global _struct_3BidB3I
    if _struct_3BidB3I is None:
        _struct_3BidB3I = struct.Struct("<3BidB3I")
    return _struct_3BidB3I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/CleaningCommandResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CleaningCommandResponse(genpy.Message):
  _md5sum = "4ad76664b0717ddbf6142456d7398288"
  _type = "robint_msgs/CleaningCommandResponse"
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
      super(CleaningCommandResponse, self).__init__(*args, **kwds)
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
class CleaningCommand(object):
  _type          = 'robint_msgs/CleaningCommand'
  _md5sum = '53d75104790d5d4f0b3ebfae9d23803e'
  _request_class  = CleaningCommandRequest
  _response_class = CleaningCommandResponse
