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
extern "js" fn custom_element_constructor_ffi(
  f : () -> HTMLElement,
) -> CustomElementConstructor = "(f) => f"

///|
pub fn CustomElementConstructor::new(
  f : () -> HTMLElement,
) -> CustomElementConstructor {
  custom_element_constructor_ffi(f)
}
