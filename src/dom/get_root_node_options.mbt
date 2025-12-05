// Auto-generated MoonBit bindings for GetRootNodeOptions dictionary

// Do not edit manually

///|
#external
pub type GetRootNodeOptions

///|
pub impl TJsValue for GetRootNodeOptions with to_js(self : GetRootNodeOptions) -> JsValue = "%identity"

///|
fn get_root_node_options_ffi(composed : JsValue) -> GetRootNodeOptions = "webapi_GetRootNodeOptions" "new"

///|
pub fn GetRootNodeOptions::new(composed? : Bool = false) -> GetRootNodeOptions {
  get_root_node_options_ffi(TJsValue::to_js(composed))
}

///|
pub fn GetRootNodeOptions::empty() -> GetRootNodeOptions = "webapi_Dictionary" "empty"
