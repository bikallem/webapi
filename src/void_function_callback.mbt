// Do not edit. This file is generated.
// MoonBit type: VoidFunction
// Specifications: webidl.idl

///|
/// [VoidFunction](https://developer.mozilla.org/en-US/docs/Web/API/VoidFunction)
#external
pub type VoidFunction

///|
pub impl TJsValue for VoidFunction with to_js(self : VoidFunction) -> JsValue = "%identity"

///|
pub fn VoidFunction::new(f : () -> Unit) -> VoidFunction {
  void_function_ffi(js_of(f)).unsafe_cast()
}
