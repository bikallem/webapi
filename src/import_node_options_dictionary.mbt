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
  self_only? : Bool = false,
) -> ImportNodeOptions {
  import_node_options_ffi(
    opt_to_js(custom_element_registry),
    TJsValue::to_js(self_only),
  )
}

///|
pub fn ImportNodeOptions::empty() -> ImportNodeOptions {
  import_node_options_empty_ffi()
}
