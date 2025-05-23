# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robint_msgs/ExplorationGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ExplorationGoal(genpy.Message):
  _md5sum = "e071b18ba3db984910845497c9be477d"
  _type = "robint_msgs/ExplorationGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 map_originX
float32 map_originY
uint32 map_width
uint32 map_height
float32 map_resolution
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['map_originX','map_originY','map_width','map_height','map_resolution','points']
  _slot_types = ['float32','float32','uint32','uint32','float32','geometry_msgs/Point[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       map_originX,map_originY,map_width,map_height,map_resolution,points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ExplorationGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.map_originX is None:
        self.map_originX = 0.
      if self.map_originY is None:
        self.map_originY = 0.
      if self.map_width is None:
        self.map_width = 0
      if self.map_height is None:
        self.map_height = 0
      if self.map_resolution is None:
        self.map_resolution = 0.
      if self.points is None:
        self.points = []
    else:
      self.map_originX = 0.
      self.map_originY = 0.
      self.map_width = 0
      self.map_height = 0
      self.map_resolution = 0.
      self.points = []

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
      buff.write(_get_struct_2f2If().pack(_x.map_originX, _x.map_originY, _x.map_width, _x.map_height, _x.map_resolution))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
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
      if self.points is None:
        self.points = None
      end = 0
      _x = self
      start = end
      end += 20
      (_x.map_originX, _x.map_originY, _x.map_width, _x.map_height, _x.map_resolution,) = _get_struct_2f2If().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
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
      buff.write(_get_struct_2f2If().pack(_x.map_originX, _x.map_originY, _x.map_width, _x.map_height, _x.map_resolution))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
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
      if self.points is None:
        self.points = None
      end = 0
      _x = self
      start = end
      end += 20
      (_x.map_originX, _x.map_originY, _x.map_width, _x.map_height, _x.map_resolution,) = _get_struct_2f2If().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f2If = None
def _get_struct_2f2If():
    global _struct_2f2If
    if _struct_2f2If is None:
        _struct_2f2If = struct.Struct("<2f2If")
    return _struct_2f2If
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
