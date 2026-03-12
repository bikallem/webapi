// Do not edit. This file is generated.
// MoonBit type: SVGAngle
// Specifications: SVG.idl

/// [SVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle)
#external
pub type SVGAngle

pub impl TJsValue for SVGAngle with to_js(self: SVGAngle) -> JsValue = "%identity"

pub impl FromJsAny for SVGAngle with from_js_any(value : JsAny) -> SVGAngle = "%identity"

pub fn[T: TSVGAngle] SVGAngle::into(self : SVGAngle) -> T = "%identity"

pub impl TSVGAngle for SVGAngle

pub const SVG_ANGLE_SVG_ANGLETYPE_UNKNOWN: UInt = 0

pub const SVG_ANGLE_SVG_ANGLETYPE_UNSPECIFIED: UInt = 1

pub const SVG_ANGLE_SVG_ANGLETYPE_DEG: UInt = 2

pub const SVG_ANGLE_SVG_ANGLETYPE_RAD: UInt = 3

pub const SVG_ANGLE_SVG_ANGLETYPE_GRAD: UInt = 4

/// [SVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle) interface.
pub trait TSVGAngle: TJsValue {
  unit_type(self : Self) -> UInt = _
  value(self : Self) -> Float = _
  set_value(self : Self, value : Float) -> Unit = _
  value_in_specified_units(self : Self) -> Float = _
  set_value_in_specified_units(self : Self, value_in_specified_units : Float) -> Unit = _
  value_as_string(self : Self) -> String = _
  set_value_as_string(self : Self, value_as_string : String) -> Unit = _
  new_value_specified_units(self : Self, unit_type : UInt, value_in_specified_units : Float) -> Unit = _
  convert_to_specified_units(self : Self, unit_type : UInt) -> Unit = _
}

/// [SVGAngle.unitType](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/unitType)
impl TSVGAngle with unit_type(self : Self) -> UInt {
  svg_angle_unit_type_ffi(TJsValue::to_js(self))
}

/// [SVGAngle.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/value)
impl TSVGAngle with value(self : Self) -> Float {
  svg_angle_value_ffi(TJsValue::to_js(self))
}

/// [SVGAngle.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/value)
impl TSVGAngle with set_value(self : Self, 
value : Float) -> Unit {
  svg_angle_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [SVGAngle.valueInSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueInSpecifiedUnits)
impl TSVGAngle with value_in_specified_units(self : Self) -> Float {
  svg_angle_value_in_specified_units_ffi(TJsValue::to_js(self))
}

/// [SVGAngle.valueInSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueInSpecifiedUnits)
impl TSVGAngle with set_value_in_specified_units(self : Self, 
value_in_specified_units : Float) -> Unit {
  svg_angle_set_value_in_specified_units_ffi(TJsValue::to_js(self), TJsValue::to_js(value_in_specified_units))
}

/// [SVGAngle.valueAsString](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueAsString)
impl TSVGAngle with value_as_string(self : Self) -> String {
  svg_angle_value_as_string_ffi(TJsValue::to_js(self))
}

/// [SVGAngle.valueAsString](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/valueAsString)
impl TSVGAngle with set_value_as_string(self : Self, 
value_as_string : String) -> Unit {
  svg_angle_set_value_as_string_ffi(TJsValue::to_js(self), TJsValue::to_js(value_as_string))
}

/// [SVGAngle.newValueSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/newValueSpecifiedUnits)
impl TSVGAngle with new_value_specified_units(self : Self, 
unit_type : UInt, 
value_in_specified_units : Float) -> Unit {
  svg_angle_new_value_specified_units_ffi(TJsValue::to_js(self), TJsValue::to_js(unit_type), TJsValue::to_js(value_in_specified_units))
}

/// [SVGAngle.convertToSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle/convertToSpecifiedUnits)
impl TSVGAngle with convert_to_specified_units(self : Self, 
unit_type : UInt) -> Unit {
  svg_angle_convert_to_specified_units_ffi(TJsValue::to_js(self), TJsValue::to_js(unit_type))
}