// Do not edit. This file is generated.
// MoonBit type: SVGNumber
// Specifications: SVG.idl

///|
/// [SVGNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber)
#external
pub type SVGNumber

///|
pub impl TJsValue for SVGNumber with to_js(self : SVGNumber) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGNumber with from_js_any(value : JsAny) -> SVGNumber = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGNumber] SVGNumber::into(self : SVGNumber) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGNumber] SVGNumber::unsafe_into(self : SVGNumber) -> T = "%identity"

///|
pub impl HasConstructor for SVGNumber with constructor_name() {
  "SVGNumber"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGNumber + HasConstructor] SVGNumber::try_into(
  self : SVGNumber,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGNumber for SVGNumber

///|
/// [SVGNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber) interface.
pub trait TSVGNumber: TJsValue {
  value(self : Self) -> Float = _
  set_value(self : Self, value : Float) -> Unit = _
}

///|
/// [SVGNumber.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber/value)
impl TSVGNumber with value(self : Self) -> Float {
  svg_number_value_ffi(TJsValue::to_js(self))
}

///|
/// [SVGNumber.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber/value)
impl TSVGNumber with set_value(self : Self, value : Float) -> Unit {
  svg_number_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
#cfg(target="js")
extern "js" fn svg_number_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn svg_number_value_ffi(obj : JsValue) -> Float {
  svg_number_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_number_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="wasm-gc")
fn svg_number_value_ffi(obj : JsValue) -> Float = "webapi_SVGNumber" "get_value"

///|
#cfg(target="wasm-gc")
fn svg_number_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_SVGNumber" "set_value"
