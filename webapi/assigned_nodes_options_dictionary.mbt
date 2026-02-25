// Do not edit. This file is generated.
// MoonBit type: AssignedNodesOptions
// Specifications: html.idl

///|
/// [AssignedNodesOptions](https://developer.mozilla.org/en-US/docs/Web/API/AssignedNodesOptions)
#external
pub type AssignedNodesOptions

///|
pub impl TJsValue for AssignedNodesOptions with to_js(
  self : AssignedNodesOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for AssignedNodesOptions with from_js_any(value : JsAny) -> AssignedNodesOptions = "%identity"

///|
pub fn AssignedNodesOptions::new(
  flatten? : Bool = false,
) -> AssignedNodesOptions {
  assigned_nodes_options_ffi(TJsValue::to_js(flatten))
}

///|
pub fn AssignedNodesOptions::empty() -> AssignedNodesOptions {
  assigned_nodes_options_empty_ffi()
}

///|
pub fn AssignedNodesOptions::flatten(self : AssignedNodesOptions) -> Bool? {
  assigned_nodes_options_get_flatten_ffi(TJsValue::to_js(self)).to_option_prim()
}
