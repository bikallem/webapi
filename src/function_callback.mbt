// Do not edit. This file is generated.
// MoonBit type: Function
// Specifications: webidl.idl

///|
/// [Function](https://developer.mozilla.org/en-US/docs/Web/API/Function)
#external
pub type Function

///|
pub impl TJsValue for Function with to_js(self : Function) -> JsValue = "%identity"

///|
extern "js" fn function_ffi(f : (JsValue) -> JsValue) -> Function = "(f) => f"

///|
pub fn Function::new(f : (JsValue) -> JsValue) -> Function {
  function_ffi(f)
}
