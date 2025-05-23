# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/IsolatedZoneList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import robint_msgs.msg

class IsolatedZoneList(genpy.Message):
  _md5sum = "2be48a82e856075e1d4177e40252d0e1"
  _type = "robint_msgs/IsolatedZoneList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """IsolatedZone[] zone_list

================================================================================
MSG: robint_msgs/IsolatedZone
Zone zone
IsolatedWait[] wait_points
string next_task
================================================================================
MSG: robint_msgs/Zone
string uuid
string name
string map_uuid
string group_uuid
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: robint_msgs/IsolatedWait
geometry_msgs/Pose pose
string uuid
bool direct
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['zone_list']
  _slot_types = ['robint_msgs/IsolatedZone[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       zone_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IsolatedZoneList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.zone_list is None:
        self.zone_list = []
    else:
      self.zone_list = []

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
      length = len(self.zone_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.zone_list:
        _v1 = val1.zone
        _x = _v1.uuid
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.map_uuid
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.group_uuid
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v1.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v1.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.points:
          _x = val3
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.wait_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.wait_points:
          _v2 = val2.pose
          _v3 = _v2.position
          _x = _v3
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v4 = _v2.orientation
          _x = _v4
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          _x = val2.uuid
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.direct
          buff.write(_get_struct_B().pack(_x))
        _x = val1.next_task
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
      if self.zone_list is None:
        self.zone_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.zone_list = []
      for i in range(0, length):
        val1 = robint_msgs.msg.IsolatedZone()
        _v5 = val1.zone
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.uuid = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v5.uuid = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v5.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.map_uuid = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v5.map_uuid = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.group_uuid = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v5.group_uuid = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v5.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v5.points = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point()
          _x = val3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v5.points.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.wait_points = []
        for i in range(0, length):
          val2 = robint_msgs.msg.IsolatedWait()
          _v6 = val2.pose
          _v7 = _v6.position
          _x = _v7
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v8 = _v6.orientation
          _x = _v8
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.uuid = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.uuid = str[start:end]
          start = end
          end += 1
          (val2.direct,) = _get_struct_B().unpack(str[start:end])
          val2.direct = bool(val2.direct)
          val1.wait_points.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.next_task = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.next_task = str[start:end]
        self.zone_list.append(val1)
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
      length = len(self.zone_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.zone_list:
        _v9 = val1.zone
        _x = _v9.uuid
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v9.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v9.map_uuid
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v9.group_uuid
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v9.type
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v9.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v9.points:
          _x = val3
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        length = len(val1.wait_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.wait_points:
          _v10 = val2.pose
          _v11 = _v10.position
          _x = _v11
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v12 = _v10.orientation
          _x = _v12
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          _x = val2.uuid
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.direct
          buff.write(_get_struct_B().pack(_x))
        _x = val1.next_task
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
      if self.zone_list is None:
        self.zone_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.zone_list = []
      for i in range(0, length):
        val1 = robint_msgs.msg.IsolatedZone()
        _v13 = val1.zone
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.uuid = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v13.uuid = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v13.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.map_uuid = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v13.map_uuid = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.group_uuid = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v13.group_uuid = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.type = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v13.type = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v13.points = []
        for i in range(0, length):
          val3 = geometry_msgs.msg.Point()
          _x = val3
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v13.points.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.wait_points = []
        for i in range(0, length):
          val2 = robint_msgs.msg.IsolatedWait()
          _v14 = val2.pose
          _v15 = _v14.position
          _x = _v15
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v16 = _v14.orientation
          _x = _v16
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.uuid = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.uuid = str[start:end]
          start = end
          end += 1
          (val2.direct,) = _get_struct_B().unpack(str[start:end])
          val2.direct = bool(val2.direct)
          val1.wait_points.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.next_task = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.next_task = str[start:end]
        self.zone_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
