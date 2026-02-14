// Do not edit. This file is generated.
// MoonBit type: ElementCreationOptions
// Specifications: dom.idl

///|
/// [ElementCreationOptions](https://developer.mozilla.org/en-US/docs/Web/API/ElementCreationOptions)
#external
pub type ElementCreationOptions

///|
pub impl TJsValue for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ElementCreationOptions with from_js_any(value : JsAny) -> ElementCreationOptions = "%identity"

///|
pub fn ElementCreationOptions::new(
  custom_element_registry? : &TCustomElementRegistry,
  is_? : String,
) -> ElementCreationOptions {
  element_creation_options_ffi(
    opt_to_js(custom_element_registry),
    opt_to_js(is_),
  )
}

///|
pub fn ElementCreationOptions::empty() -> ElementCreationOptions {
  element_creation_options_empty_ffi()
}

///|
pub fn ElementCreationOptions::custom_element_registry(
  self : ElementCreationOptions,
) -> CustomElementRegistry? {
  let result = element_creation_options_get_custom_element_registry_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn ElementCreationOptions::is_(self : ElementCreationOptions) -> String? {
  let result = element_creation_options_get_is_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
