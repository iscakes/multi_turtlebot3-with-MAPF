# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/GetCleaningTaskInfoRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetCleaningTaskInfoRequest(genpy.Message):
  _md5sum = "186f708c24b77a27052347ba5bb44319"
  _type = "robint_msgs/GetCleaningTaskInfoRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string area_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
"""
  # Pseudo-constants
  IMAGE = 0
  WORLD = 1

  __slots__ = ['area_uuid','coordinate_mode']
  _slot_types = ['string','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       area_uuid,coordinate_mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetCleaningTaskInfoRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.area_uuid is None:
        self.area_uuid = ''
      if self.coordinate_mode is None:
        self.coordinate_mode = 0
    else:
      self.area_uuid = ''
      self.coordinate_mode = 0

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
      _x = self.area_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.coordinate_mode
      buff.write(_get_struct_B().pack(_x))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area_uuid = str[start:end]
      start = end
      end += 1
      (self.coordinate_mode,) = _get_struct_B().unpack(str[start:end])
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
      _x = self.area_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.coordinate_mode
      buff.write(_get_struct_B().pack(_x))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area_uuid = str[start:end]
      start = end
      end += 1
      (self.coordinate_mode,) = _get_struct_B().unpack(str[start:end])
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
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/GetCleaningTaskInfoResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import robint_msgs.msg

class GetCleaningTaskInfoResponse(genpy.Message):
  _md5sum = "bb414feb26552a563b1b167c1a57d926"
  _type = "robint_msgs/GetCleaningTaskInfoResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """CleaningArea area
bool robot_is_inside_area
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/CleaningArea
string uuid
string name
string map_uuid
string group_uuid
string coverage_method
PathWithPoint contour
PathWithPoint[] paths
PathWithPoint[] holes
================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['area','robot_is_inside_area','success','error_code','message']
  _slot_types = ['robint_msgs/CleaningArea','bool','bool','uint8','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       area,robot_is_inside_area,success,error_code,message

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetCleaningTaskInfoResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.area is None:
        self.area = robint_msgs.msg.CleaningArea()
      if self.robot_is_inside_area is None:
        self.robot_is_inside_area = False
      if self.success is None:
        self.success = False
      if self.error_code is None:
        self.error_code = 0
      if self.message is None:
        self.message = ''
    else:
      self.area = robint_msgs.msg.CleaningArea()
      self.robot_is_inside_area = False
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
      _x = self.area.uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.map_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.group_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.coverage_method
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.contour.id
      buff.write(_get_struct_I().pack(_x))
      _x = self.area.contour.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.area.contour.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.area.contour.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.area.paths)
      buff.write(_struct_I.pack(length))
      for val1 in self.area.paths:
        _x = val1.id
        buff.write(_get_struct_I().pack(_x))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.area.holes)
      buff.write(_struct_I.pack(length))
      for val1 in self.area.holes:
        _x = val1.id
        buff.write(_get_struct_I().pack(_x))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3B().pack(_x.robot_is_inside_area, _x.success, _x.error_code))
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
      if self.area is None:
        self.area = robint_msgs.msg.CleaningArea()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.map_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.map_uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.group_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.group_uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.coverage_method = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.coverage_method = str[start:end]
      start = end
      end += 4
      (self.area.contour.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.contour.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.contour.type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.area.contour.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.area.contour.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.area.paths = []
      for i in range(0, length):
        val1 = robint_msgs.msg.PathWithPoint()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.points.append(val2)
        self.area.paths.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.area.holes = []
      for i in range(0, length):
        val1 = robint_msgs.msg.PathWithPoint()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.points.append(val2)
        self.area.holes.append(val1)
      _x = self
      start = end
      end += 3
      (_x.robot_is_inside_area, _x.success, _x.error_code,) = _get_struct_3B().unpack(str[start:end])
      self.robot_is_inside_area = bool(self.robot_is_inside_area)
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
      _x = self.area.uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.map_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.group_uuid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.coverage_method
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.area.contour.id
      buff.write(_get_struct_I().pack(_x))
      _x = self.area.contour.type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.area.contour.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.area.contour.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.area.paths)
      buff.write(_struct_I.pack(length))
      for val1 in self.area.paths:
        _x = val1.id
        buff.write(_get_struct_I().pack(_x))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.area.holes)
      buff.write(_struct_I.pack(length))
      for val1 in self.area.holes:
        _x = val1.id
        buff.write(_get_struct_I().pack(_x))
        _x = val1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3B().pack(_x.robot_is_inside_area, _x.success, _x.error_code))
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
      if self.area is None:
        self.area = robint_msgs.msg.CleaningArea()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.map_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.map_uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.group_uuid = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.group_uuid = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.coverage_method = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.coverage_method = str[start:end]
      start = end
      end += 4
      (self.area.contour.id,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.area.contour.type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.area.contour.type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.area.contour.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.area.contour.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.area.paths = []
      for i in range(0, length):
        val1 = robint_msgs.msg.PathWithPoint()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.points.append(val2)
        self.area.paths.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.area.holes = []
      for i in range(0, length):
        val1 = robint_msgs.msg.PathWithPoint()
        start = end
        end += 4
        (val1.id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          val1.points.append(val2)
        self.area.holes.append(val1)
      _x = self
      start = end
      end += 3
      (_x.robot_is_inside_area, _x.success, _x.error_code,) = _get_struct_3B().unpack(str[start:end])
      self.robot_is_inside_area = bool(self.robot_is_inside_area)
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
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class GetCleaningTaskInfo(object):
  _type          = 'robint_msgs/GetCleaningTaskInfo'
  _md5sum = '2c13b4f1da851ed54f7a178d55630472'
  _request_class  = GetCleaningTaskInfoRequest
  _response_class = GetCleaningTaskInfoResponse
