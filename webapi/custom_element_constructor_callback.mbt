// Do not edit. This file is generated.
// MoonBit type: CustomElementConstructor
// Specifications: html.idl

///|
/// [CustomElementConstructor](https://developer.mozilla.org/en-US/docs/Web/API/CustomElementConstructor)
#external
pub type CustomElementConstructor

///|
pub impl TJsValue for CustomElementConstructor with to_js(
  self : CustomElementConstructor,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CustomElementConstructor with from_js_any(value : JsAny) -> CustomElementConstructor = "%identity"

///|
pub fn CustomElementConstructor::new(
  callback : () -> HTMLElement,
) -> CustomElementConstructor {
  custom_element_constructor_ffi(callback)
}
