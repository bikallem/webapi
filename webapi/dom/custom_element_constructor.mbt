// Auto-generated MoonBit bindings for CustomElementConstructor callback

// Do not edit manually

//
// WebIDL Callback:
// callback CustomElementConstructor = HTMLElement ();

///|
#external
pub type CustomElementConstructor

///|
pub impl TJsValue for CustomElementConstructor with to_js(
  self : CustomElementConstructor,
) -> JsValue = "%identity"

///|
fn custom_element_constructor_new_ffi(
  f : () -> HTMLElement,
) -> CustomElementConstructor = "webapi_CustomElementConstructor" "new"

///|
pub fn CustomElementConstructor::new(
  f : () -> HTMLElement,
) -> CustomElementConstructor {
  custom_element_constructor_new_ffi(f)
}
