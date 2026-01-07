// Do not edit. This file is generated.
// MoonBit type: SVGAngle
// Specifications: SVG.idl

///|
/// [SVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle)
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
/// [SVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle) interface.
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
/// [SVGAngle.unitType](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/unitType)
impl TSVGAngle with unit_type(self : Self) -> UInt {
  svg_angle_unit_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_value_ffi(obj : JsValue) -> Float = "(obj) => obj.value"

///|
/// [SVGAngle.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/value)
impl TSVGAngle with value(self : Self) -> Float {
  svg_angle_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
/// [SVGAngle.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/value)
impl TSVGAngle with set_value(self : Self, value : Float) -> Unit {
  svg_angle_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
extern "js" fn svg_angle_value_in_specified_units_ffi(obj : JsValue) -> Float = "(obj) => obj.valueInSpecifiedUnits"

///|
/// [SVGAngle.valueInSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueInSpecifiedUnits)
impl TSVGAngle with value_in_specified_units(self : Self) -> Float {
  svg_angle_value_in_specified_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_set_value_in_specified_units_ffi(
  obj : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "(obj, valueInSpecifiedUnits) => { obj.valueInSpecifiedUnits = valueInSpecifiedUnits; }"

///|
/// [SVGAngle.valueInSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueInSpecifiedUnits)
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
/// [SVGAngle.valueAsString](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueAsString)
impl TSVGAngle with value_as_string(self : Self) -> String {
  svg_angle_value_as_string_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_angle_set_value_as_string_ffi(
  obj : JsValue,
  value_as_string : JsValue,
) -> Unit = "(obj, valueAsString) => { obj.valueAsString = valueAsString; }"

///|
/// [SVGAngle.valueAsString](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueAsString)
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
) -> Unit = "(obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(unit_type, value_in_specified_units)"

///|
/// [SVGAngle.newValueSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/newValueSpecifiedUnits)
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
) -> Unit = "(obj, unit_type) => obj.convertToSpecifiedUnits(unit_type)"

///|
/// [SVGAngle.convertToSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/convertToSpecifiedUnits)
impl TSVGAngle with convert_to_specified_units(self : Self, unit_type : UInt) -> Unit {
  svg_angle_convert_to_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(unit_type),
  )
}
