// Do not edit. This file is generated.
// MoonBit type: ImportNodeOptions
// Specifications: dom.idl

///|
/// [ImportNodeOptions](https://developer.mozilla.org/en-US/docs/Web/API/ImportNodeOptions)
#external
pub type ImportNodeOptions

///|
pub impl TJsValue for ImportNodeOptions with to_js(self : ImportNodeOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ImportNodeOptions with from_js_any(value : JsAny) -> ImportNodeOptions = "%identity"

///|
pub fn ImportNodeOptions::new(
  custom_element_registry? : &TCustomElementRegistry,
  self_only? : Bool,
) -> ImportNodeOptions {
  import_node_options_ffi(
    opt_to_js(custom_element_registry),
    opt_to_js(self_only),
  )
}

///|
pub fn ImportNodeOptions::empty() -> ImportNodeOptions {
  import_node_options_empty_ffi()
}

///|
pub fn ImportNodeOptions::custom_element_registry(
  self : ImportNodeOptions,
) -> CustomElementRegistry? {
  import_node_options_get_custom_element_registry_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ImportNodeOptions::self_only(self : ImportNodeOptions) -> Bool? {
  import_node_options_get_self_only_ffi(TJsValue::to_js(self)).to_option_prim()
}
