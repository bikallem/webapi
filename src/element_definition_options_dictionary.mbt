// Do not edit. This file is generated.
// MoonBit type: ElementDefinitionOptions
// Specifications: html.idl

/// [ElementDefinitionOptions](https://developer.mozilla.org/en-US/docs/Web/API/ElementDefinitionOptions)
#external
pub type ElementDefinitionOptions

pub impl TJsValue for ElementDefinitionOptions with to_js(self: ElementDefinitionOptions) -> JsValue = "%identity"

pub fn ElementDefinitionOptions::new(extends? : String) -> ElementDefinitionOptions {
  element_definition_options_ffi(opt_to_js(extends))
}

pub fn ElementDefinitionOptions::empty() -> ElementDefinitionOptions { element_definition_options_empty_ffi() }