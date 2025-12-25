// Do not edit. This file is generated.
// MoonBit type: ElementCreationOptions
// Specifications: dom.idl

///|
#external
pub type ElementCreationOptions

///|
pub impl TJsValue for ElementCreationOptions with to_js(
  self : ElementCreationOptions,
) -> JsValue = "%identity"

///|
extern "js" fn element_creation_options_ffi(
  custom_element_registry : JsValue,
  is_ : JsValue,
) -> ElementCreationOptions =
  #|(customElementRegistry, is) => {
  #|  const obj = {};
  #|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
  #|  if (is !== undefined) obj.is = is;
  #|  return obj;
  #|}

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
extern "js" fn element_creation_options_empty_ffi() -> ElementCreationOptions = "() => {}"

///|
pub fn ElementCreationOptions::empty() -> ElementCreationOptions {
  element_creation_options_empty_ffi()
}
