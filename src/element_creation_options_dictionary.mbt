// Do not edit. This file is generated.
// MoonBit type: ElementCreationOptions
// Specifications: dom.idl

/// [ElementCreationOptions](https://developer.mozilla.org/en-US/docs/Web/API/ElementCreationOptions)
#external
pub type ElementCreationOptions

pub impl TJsValue for ElementCreationOptions with to_js(self: ElementCreationOptions) -> JsValue = "%identity"

pub fn ElementCreationOptions::new(custom_element_registry? : &TCustomElementRegistry, 
is_? : String) -> ElementCreationOptions {
  element_creation_options_ffi(opt_to_js(custom_element_registry), opt_to_js(is_))
}

pub fn ElementCreationOptions::empty() -> ElementCreationOptions { element_creation_options_empty_ffi() }