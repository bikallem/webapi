// Do not edit. This file is generated.
// MoonBit type: SVGAngle
// Specifications: SVG.idl

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
  unit_type(self : Self) -> UInt = _
  value(self : Self) -> Float = _
  set_value(self : Self, value : Float) -> Unit = _
  value_in_specified_units(self : Self) -> Float = _
  set_value_in_specified_units(self : Self, value_in_specified_units : Float) -> Unit = _
  value_as_string(self : Self) -> String = _
  set_value_as_string(self : Self, value_as_string : String) -> Unit = _
  new_value_specified_units(
    self : Self,
    unit_type : UInt,
    value_in_specified_units : Float,
  ) -> Unit = _
  convert_to_specified_units(self : Self, unit_type : UInt) -> Unit = _
}

///|
extern "js" fn svg_angle_unit_type_ffi(obj : JsValue) -> UInt = "(obj) => obj.unitType"

///|
impl TSVGAngle with unit_type(self : Self) -> UInt {
  svg_angle_unit_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_value_ffi(obj : JsValue) -> Float = "(obj) => obj.value"

///|
impl TSVGAngle with value(self : Self) -> Float {
  svg_angle_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl TSVGAngle with set_value(self : Self, value : Float) -> Unit {
  svg_angle_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
extern "js" fn svg_angle_value_in_specified_units_ffi(obj : JsValue) -> Float = "(obj) => obj.valueInSpecifiedUnits"

///|
impl TSVGAngle with value_in_specified_units(self : Self) -> Float {
  svg_angle_value_in_specified_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_set_value_in_specified_units_ffi(
  obj : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "(obj, valueInSpecifiedUnits) => { obj.valueInSpecifiedUnits = value_in_specified_units; }"

///|
impl TSVGAngle with set_value_in_specified_units(
  self : Self,
  value_in_specified_units : Float,
) -> Unit {
  svg_angle_set_value_in_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_in_specified_units),
  )
}

///|
extern "js" fn svg_angle_value_as_string_ffi(obj : JsValue) -> String = "(obj) => obj.valueAsString"

///|
impl TSVGAngle with value_as_string(self : Self) -> String {
  svg_angle_value_as_string_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_set_value_as_string_ffi(
  obj : JsValue,
  value_as_string : JsValue,
) -> Unit = "(obj, valueAsString) => { obj.valueAsString = value_as_string; }"

///|
impl TSVGAngle with set_value_as_string(self : Self, value_as_string : String) -> Unit {
  svg_angle_set_value_as_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_as_string),
  )
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
