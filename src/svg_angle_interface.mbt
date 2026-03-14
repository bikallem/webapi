// Do not edit. This file is generated.
// MoonBit type: SVGAngle
// Specifications: SVG.idl

/// [SVGAngle](https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle)
#external
pub type SVGAngle

pub impl TJsValue for SVGAngle with to_js(self: SVGAngle) -> JsValue = "%identity"

pub impl FromJsAny for SVGAngle with from_js_any(value : JsAny) -> SVGAngle = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGAngle] SVGAngle::into(self : SVGAngle) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGAngle] SVGAngle::unsafe_into(self : SVGAngle) -> T = "%identity"

pub impl HasConstructor for SVGAngle with constructor_name() { "SVGAngle" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGAngle + HasConstructor] SVGAngle::try_into(self : SVGAngle) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn svg_angle_unit_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.unitType"

///|
#cfg(target="js")
fn svg_angle_unit_type_ffi(obj: JsValue) -> UInt {
  svg_angle_unit_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_angle_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn svg_angle_value_ffi(obj: JsValue) -> Float {
  svg_angle_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_angle_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="js")
extern "js" fn svg_angle_value_in_specified_units_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueInSpecifiedUnits"

///|
#cfg(target="js")
fn svg_angle_value_in_specified_units_ffi(obj: JsValue) -> Float {
  svg_angle_value_in_specified_units_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_angle_set_value_in_specified_units_ffi(obj: JsValue, value_in_specified_units: JsValue) -> Unit = "(obj, valueInSpecifiedUnits) => { obj.valueInSpecifiedUnits = valueInSpecifiedUnits; }"

#cfg(target="js")
extern "js" fn svg_angle_value_as_string_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.valueAsString"

///|
#cfg(target="js")
fn svg_angle_value_as_string_ffi(obj: JsValue) -> String {
  svg_angle_value_as_string_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_angle_set_value_as_string_ffi(obj: JsValue, value_as_string: JsValue) -> Unit = "(obj, valueAsString) => { obj.valueAsString = valueAsString; }"

#cfg(target="js")
extern "js" fn svg_angle_new_value_specified_units_ffi(obj: JsValue, unit_type: JsValue, value_in_specified_units: JsValue) -> Unit = "(obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(unit_type, value_in_specified_units)"

#cfg(target="js")
extern "js" fn svg_angle_convert_to_specified_units_ffi(obj: JsValue, unit_type: JsValue) -> Unit = "(obj, unit_type) => obj.convertToSpecifiedUnits(unit_type)"

#cfg(target="wasm-gc")
fn svg_angle_unit_type_ffi(obj: JsValue) -> UInt = "webapi_SVGAngle" "get_unitType"

#cfg(target="wasm-gc")
fn svg_angle_value_ffi(obj: JsValue) -> Float = "webapi_SVGAngle" "get_value"

#cfg(target="wasm-gc")
fn svg_angle_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_SVGAngle" "set_value"

#cfg(target="wasm-gc")
fn svg_angle_value_in_specified_units_ffi(obj: JsValue) -> Float = "webapi_SVGAngle" "get_valueInSpecifiedUnits"

#cfg(target="wasm-gc")
fn svg_angle_set_value_in_specified_units_ffi(obj: JsValue, value_in_specified_units: JsValue) -> Unit = "webapi_SVGAngle" "set_valueInSpecifiedUnits"

#cfg(target="wasm-gc")
fn svg_angle_value_as_string_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGAngle" "get_valueAsString"

///|
#cfg(target="wasm-gc")
fn svg_angle_value_as_string_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_angle_value_as_string_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn svg_angle_set_value_as_string_ffi(obj: JsValue, value_as_string: JsValue) -> Unit = "webapi_SVGAngle" "set_valueAsString"

#cfg(target="wasm-gc")
fn svg_angle_new_value_specified_units_ffi(obj: JsValue, unit_type: JsValue, value_in_specified_units: JsValue) -> Unit = "webapi_SVGAngle" "newValueSpecifiedUnits"

#cfg(target="wasm-gc")
fn svg_angle_convert_to_specified_units_ffi(obj: JsValue, unit_type: JsValue) -> Unit = "webapi_SVGAngle" "convertToSpecifiedUnits"