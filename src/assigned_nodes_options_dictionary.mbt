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
extern "js" fn assigned_nodes_options_ffi(
  flatten : JsValue,
) -> AssignedNodesOptions =
  #|(flatten) => {
  #|  const obj = {};
  #|  if (flatten !== undefined) obj.flatten = flatten;
  #|  return obj;
  #|}

///|
pub fn AssignedNodesOptions::new(
  flatten? : Bool = false,
) -> AssignedNodesOptions {
  assigned_nodes_options_ffi(TJsValue::to_js(flatten))
}

///|
extern "js" fn assigned_nodes_options_empty_ffi() -> AssignedNodesOptions = "() => {}"

///|
pub fn AssignedNodesOptions::empty() -> AssignedNodesOptions {
  assigned_nodes_options_empty_ffi()
}
