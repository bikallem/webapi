// Auto-generated MoonBit bindings for ImportNodeOptions dictionary

// Do not edit manually

///|
#external
pub type ImportNodeOptions

///|
pub impl TJsValue for ImportNodeOptions with to_js(self : ImportNodeOptions) -> JsValue = "%identity"

///|
fn import_node_options_ffi(custom_element_registry : JsValue, self_only : JsValue) -> ImportNodeOptions = "webapi_ImportNodeOptions" "new"

///|
pub fn ImportNodeOptions::new(
  custom_element_registry? : JsValue,
  self_only? : Bool = false
) -> ImportNodeOptions {
  let custom_element_registry_js = opt_to_js(custom_element_registry)
  import_node_options_ffi(custom_element_registry_js, TJsValue::to_js(self_only))
}

///|
pub fn ImportNodeOptions::empty() -> ImportNodeOptions = "webapi_Dictionary" "empty"