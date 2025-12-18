// Auto-generated MoonBit bindings for ImportNodeOptions dictionary
// Do not edit manually

#external
pub type ImportNodeOptions

pub impl TJsValue for ImportNodeOptions with to_js(self: ImportNodeOptions) -> JsValue = "%identity"


fn import_node_options_ffi(custom_element_registry : JsValue, self_only : JsValue) -> ImportNodeOptions = "webapi_ImportNodeOptions" "new"


pub fn ImportNodeOptions::new(
  custom_element_registry? : CustomElementRegistry,
  self_only? : Bool? : Bool = false) -> ImportNodeOptions {
    import_node_options_ffi(
      opt_to_js(custom_element_registry)
     ,TJsValue::to_js(self_only)
    )
}


pub fn ImportNodeOptions::empty() -> ImportNodeOptions = "webapi_Dictionary" "empty"