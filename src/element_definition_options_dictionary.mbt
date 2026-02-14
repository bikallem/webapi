// Do not edit. This file is generated.
// MoonBit type: ElementDefinitionOptions
// Specifications: html.idl

///|
/// [ElementDefinitionOptions](https://developer.mozilla.org/en-US/docs/Web/API/ElementDefinitionOptions)
#external
pub type ElementDefinitionOptions

///|
pub impl TJsValue for ElementDefinitionOptions with to_js(
  self : ElementDefinitionOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ElementDefinitionOptions with from_js_any(value : JsAny) -> ElementDefinitionOptions = "%identity"

///|
pub fn ElementDefinitionOptions::new(
  extends? : String,
) -> ElementDefinitionOptions {
  element_definition_options_ffi(opt_to_js(extends))
}

///|
pub fn ElementDefinitionOptions::empty() -> ElementDefinitionOptions {
  element_definition_options_empty_ffi()
}

///|
pub fn ElementDefinitionOptions::extends(
  self : ElementDefinitionOptions,
) -> String? {
  let result = element_definition_options_get_extends_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
