///|
#external
pub type SVGLength

///|
pub impl TJsValue for SVGLength with to_js(self : SVGLength) -> JsValue = "%identity"

///|
pub fn[T : TSVGLength] SVGLength::into(self : SVGLength) -> T = "%identity"

///|
pub impl TSVGLength for SVGLength

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_UNKNOWN : UInt = 0

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_NUMBER : UInt = 1

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_PERCENTAGE : UInt = 2

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_EMS : UInt = 3

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_EXS : UInt = 4

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_PX : UInt = 5

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_CM : UInt = 6

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_MM : UInt = 7

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_IN : UInt = 8

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_PT : UInt = 9

///|
pub const SVG_LENGTH_SVG_LENGTHTYPE_PC : UInt = 10

///|
pub trait TSVGLength: TJsValue {
  new_value_specified_units(
    self : Self,
    unit_type : UInt,
    value_in_specified_units : Float,
  ) -> Unit = _
  convert_to_specified_units(self : Self, unit_type : UInt) -> Unit = _
}

///|
extern "js" fn svg_length_new_value_specified_units_ffi(
  obj : JsValue,
  unit_type : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "(obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(obj, unit_type, value_in_specified_units)"

///|
impl TSVGLength with new_value_specified_units(
  self : Self,
  unit_type : UInt,
  value_in_specified_units : Float,
) -> Unit {
  svg_length_new_value_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(unit_type),
    TJsValue::to_js(value_in_specified_units),
  )
}

///|
extern "js" fn svg_length_convert_to_specified_units_ffi(
  obj : JsValue,
  unit_type : JsValue,
) -> Unit = "(obj, unit_type) => obj.convertToSpecifiedUnits(obj, unit_type)"

///|
impl TSVGLength with convert_to_specified_units(self : Self, unit_type : UInt) -> Unit {
  svg_length_convert_to_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(unit_type),
  )
}
