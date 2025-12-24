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
extern "js" fn svg_length_unit_type_ffi(obj : JsValue) -> UInt = "(obj) => obj.unitType"

///|
impl TSVGLength with unit_type(self : Self) -> UInt {
  svg_length_unit_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_value_ffi(obj : JsValue) -> Float = "(obj) => obj.value"

///|
impl TSVGLength with value(self : Self) -> Float {
  svg_length_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl TSVGLength with set_value(self : Self, value : Float) -> Unit {
  svg_length_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
extern "js" fn svg_length_value_in_specified_units_ffi(obj : JsValue) -> Float = "(obj) => obj.valueInSpecifiedUnits"

///|
impl TSVGLength with value_in_specified_units(self : Self) -> Float {
  svg_length_value_in_specified_units_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_set_value_in_specified_units_ffi(
  obj : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "(obj, valueInSpecifiedUnits) => { obj.valueInSpecifiedUnits = valueInSpecifiedUnits; }"

///|
impl TSVGLength with set_value_in_specified_units(
  self : Self,
  value_in_specified_units : Float,
) -> Unit {
  svg_length_set_value_in_specified_units_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_in_specified_units),
  )
}

///|
extern "js" fn svg_length_value_as_string_ffi(obj : JsValue) -> String = "(obj) => obj.valueAsString"

///|
impl TSVGLength with value_as_string(self : Self) -> String {
  svg_length_value_as_string_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_length_set_value_as_string_ffi(
  obj : JsValue,
  value_as_string : JsValue,
) -> Unit = "(obj, valueAsString) => { obj.valueAsString = valueAsString; }"

///|
impl TSVGLength with set_value_as_string(self : Self, value_as_string : String) -> Unit {
  svg_length_set_value_as_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_as_string),
  )
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
