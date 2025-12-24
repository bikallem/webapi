///|
#external
pub type SVGAngle

///|
pub impl TJsValue for SVGAngle with to_js(self : SVGAngle) -> JsValue = "%identity"

///|
pub fn[T : TSVGAngle] SVGAngle::into(self : SVGAngle) -> T = "%identity"

///|
pub impl TSVGAngle for SVGAngle

///|
pub const SVG_ANGLE_SVG_ANGLETYPE_UNKNOWN : UInt = 0

///|
pub const SVG_ANGLE_SVG_ANGLETYPE_UNSPECIFIED : UInt = 1

///|
pub const SVG_ANGLE_SVG_ANGLETYPE_DEG : UInt = 2

///|
pub const SVG_ANGLE_SVG_ANGLETYPE_RAD : UInt = 3

///|
pub const SVG_ANGLE_SVG_ANGLETYPE_GRAD : UInt = 4

///|
pub trait TSVGAngle: TJsValue {
  new_value_specified_units(
    self : Self,
    unit_type : UInt,
    value_in_specified_units : Float,
  ) -> Unit = _
  convert_to_specified_units(self : Self, unit_type : UInt) -> Unit = _
}

///|
extern "js" fn svg_angle_new_value_specified_units_ffi(
  obj : JsValue,
  unit_type : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "(obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(obj, unit_type, value_in_specified_units)"

///|
impl TSVGAngle with new_value_specified_units(
  self : Self,
  unit_type : UInt,
  value_in_specified_units : Float,
) -> Unit {
  svg_angle_new_value_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(unit_type),
    TJsValue::to_js(value_in_specified_units),
  )
}

///|
extern "js" fn svg_angle_convert_to_specified_units_ffi(
  obj : JsValue,
  unit_type : JsValue,
) -> Unit = "(obj, unit_type) => obj.convertToSpecifiedUnits(obj, unit_type)"

///|
impl TSVGAngle with convert_to_specified_units(self : Self, unit_type : UInt) -> Unit {
  svg_angle_convert_to_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(unit_type),
  )
}
