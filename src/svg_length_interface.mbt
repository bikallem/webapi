// Do not edit. This file is generated.
// MoonBit type: SVGLength
// Specifications: SVG.idl

/// [SVGLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength)
#external
pub type SVGLength

pub impl TJsValue for SVGLength with to_js(self: SVGLength) -> JsValue = "%identity"

pub impl FromJsAny for SVGLength with from_js_any(value : JsAny) -> SVGLength = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGLength] SVGLength::into(self : SVGLength) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGLength] SVGLength::unsafe_into(self : SVGLength) -> T = "%identity"

pub impl HasConstructor for SVGLength with constructor_name() { "SVGLength" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGLength + HasConstructor] SVGLength::try_into(self : SVGLength) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGLength for SVGLength

pub const SVG_LENGTH_SVG_LENGTHTYPE_UNKNOWN: UInt = 0

pub const SVG_LENGTH_SVG_LENGTHTYPE_NUMBER: UInt = 1

pub const SVG_LENGTH_SVG_LENGTHTYPE_PERCENTAGE: UInt = 2

pub const SVG_LENGTH_SVG_LENGTHTYPE_EMS: UInt = 3

pub const SVG_LENGTH_SVG_LENGTHTYPE_EXS: UInt = 4

pub const SVG_LENGTH_SVG_LENGTHTYPE_PX: UInt = 5

pub const SVG_LENGTH_SVG_LENGTHTYPE_CM: UInt = 6

pub const SVG_LENGTH_SVG_LENGTHTYPE_MM: UInt = 7

pub const SVG_LENGTH_SVG_LENGTHTYPE_IN: UInt = 8

pub const SVG_LENGTH_SVG_LENGTHTYPE_PT: UInt = 9

pub const SVG_LENGTH_SVG_LENGTHTYPE_PC: UInt = 10

/// [SVGLength](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength) interface.
pub trait TSVGLength: TJsValue {
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

/// [SVGLength.unitType](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/unitType)
impl TSVGLength with unit_type(self : Self) -> UInt {
  svg_length_unit_type_ffi(TJsValue::to_js(self))
}

/// [SVGLength.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/value)
impl TSVGLength with value(self : Self) -> Float {
  svg_length_value_ffi(TJsValue::to_js(self))
}

/// [SVGLength.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/value)
impl TSVGLength with set_value(self : Self, 
value : Float) -> Unit {
  svg_length_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [SVGLength.valueInSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/valueInSpecifiedUnits)
impl TSVGLength with value_in_specified_units(self : Self) -> Float {
  svg_length_value_in_specified_units_ffi(TJsValue::to_js(self))
}

/// [SVGLength.valueInSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/valueInSpecifiedUnits)
impl TSVGLength with set_value_in_specified_units(self : Self, 
value_in_specified_units : Float) -> Unit {
  svg_length_set_value_in_specified_units_ffi(TJsValue::to_js(self), TJsValue::to_js(value_in_specified_units))
}

/// [SVGLength.valueAsString](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/valueAsString)
impl TSVGLength with value_as_string(self : Self) -> String {
  svg_length_value_as_string_ffi(TJsValue::to_js(self))
}

/// [SVGLength.valueAsString](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/valueAsString)
impl TSVGLength with set_value_as_string(self : Self, 
value_as_string : String) -> Unit {
  svg_length_set_value_as_string_ffi(TJsValue::to_js(self), TJsValue::to_js(value_as_string))
}

/// [SVGLength.newValueSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/newValueSpecifiedUnits)
impl TSVGLength with new_value_specified_units(self : Self, 
unit_type : UInt, 
value_in_specified_units : Float) -> Unit {
  svg_length_new_value_specified_units_ffi(TJsValue::to_js(self), TJsValue::to_js(unit_type), TJsValue::to_js(value_in_specified_units))
}

/// [SVGLength.convertToSpecifiedUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGLength/convertToSpecifiedUnits)
impl TSVGLength with convert_to_specified_units(self : Self, 
unit_type : UInt) -> Unit {
  svg_length_convert_to_specified_units_ffi(TJsValue::to_js(self), TJsValue::to_js(unit_type))
}

#cfg(target="js")
extern "js" fn svg_length_unit_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.unitType"

///|
#cfg(target="js")
fn svg_length_unit_type_ffi(obj: JsValue) -> UInt {
  svg_length_unit_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_length_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn svg_length_value_ffi(obj: JsValue) -> Float {
  svg_length_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_length_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn svg_length_value_in_specified_units_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueInSpecifiedUnits"

///|
#cfg(target="js")
fn svg_length_value_in_specified_units_ffi(obj: JsValue) -> Float {
  svg_length_value_in_specified_units_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_length_set_value_in_specified_units_ffi(obj: JsValue, value_in_specified_units: JsValue) -> Unit = "(obj, valueInSpecifiedUnits) => { obj.valueInSpecifiedUnits = valueInSpecifiedUnits; }"

#cfg(target="js")
extern "js" fn svg_length_value_as_string_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueAsString"

///|
#cfg(target="js")
fn svg_length_value_as_string_ffi(obj: JsValue) -> String {
  svg_length_value_as_string_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_length_set_value_as_string_ffi(obj: JsValue, value_as_string: JsValue) -> Unit = "(obj, valueAsString) => { obj.valueAsString = valueAsString; }"

#cfg(target="js")
extern "js" fn svg_length_new_value_specified_units_ffi(obj: JsValue, unit_type: JsValue, value_in_specified_units: JsValue) -> Unit = "(obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(unit_type, value_in_specified_units)"

#cfg(target="js")
extern "js" fn svg_length_convert_to_specified_units_ffi(obj: JsValue, unit_type: JsValue) -> Unit = "(obj, unit_type) => obj.convertToSpecifiedUnits(unit_type)"

#cfg(target="wasm-gc")
fn svg_length_unit_type_ffi(obj: JsValue) -> UInt = "webapi_SVGLength" "get_unitType"

#cfg(target="wasm-gc")
fn svg_length_value_ffi(obj: JsValue) -> Float = "webapi_SVGLength" "get_value"

#cfg(target="wasm-gc")
fn svg_length_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_SVGLength" "set_value"

#cfg(target="wasm-gc")
fn svg_length_value_in_specified_units_ffi(obj: JsValue) -> Float = "webapi_SVGLength" "get_valueInSpecifiedUnits"

#cfg(target="wasm-gc")
fn svg_length_set_value_in_specified_units_ffi(obj: JsValue, value_in_specified_units: JsValue) -> Unit = "webapi_SVGLength" "set_valueInSpecifiedUnits"

#cfg(target="wasm-gc")
fn svg_length_value_as_string_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGLength" "get_valueAsString"

///|
#cfg(target="wasm-gc")
fn svg_length_value_as_string_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_length_value_as_string_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn svg_length_set_value_as_string_ffi(obj: JsValue, value_as_string: JsValue) -> Unit = "webapi_SVGLength" "set_valueAsString"

#cfg(target="wasm-gc")
fn svg_length_new_value_specified_units_ffi(obj: JsValue, unit_type: JsValue, value_in_specified_units: JsValue) -> Unit = "webapi_SVGLength" "newValueSpecifiedUnits"

#cfg(target="wasm-gc")
fn svg_length_convert_to_specified_units_ffi(obj: JsValue, unit_type: JsValue) -> Unit = "webapi_SVGLength" "convertToSpecifiedUnits"