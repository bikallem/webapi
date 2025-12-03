// Auto-generated MoonBit bindings for AssignedNodesOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary AssignedNodesOptions {
//   boolean flatten = false;
// };

///|
#external
pub type AssignedNodesOptions

///|
pub impl TJsValue for AssignedNodesOptions with to_js(self : AssignedNodesOptions) -> JsValue = "%identity"

///|
fn assigned_nodes_options_ffi(flatten : JsValue) -> AssignedNodesOptions = "webapi_AssignedNodesOptions" "new"

///|
pub fn AssignedNodesOptions::new(
  flatten? : Bool = false
) -> AssignedNodesOptions {
  assigned_nodes_options_ffi(TJsValue::to_js(flatten))
}

///|
pub fn AssignedNodesOptions::empty() -> AssignedNodesOptions = "webapi_Dictionary" "empty"