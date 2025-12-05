// Auto-generated MoonBit bindings for ElementCreationOptions dictionary

// Do not edit manually

///|
#external
pub type ElementCreationOptions

///|
pub impl TJsValue for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
fn element_creation_options_ffi(
  custom_element_registry : JsValue,
  is_ : JsValue,
) -> ElementCreationOptions = "webapi_ElementCreationOptions" "new"

///|
pub fn ElementCreationOptions::new(
  custom_element_registry? : JsValue,
  is_? : String,
) -> ElementCreationOptions {
  let custom_element_registry_js = opt_to_js(custom_element_registry)
  let is__js = opt_to_js(is_)
  element_creation_options_ffi(custom_element_registry_js, is__js)
}

///|
pub fn ElementCreationOptions::empty() -> ElementCreationOptions = "webapi_Dictionary" "empty"
