///|
#external
pub type ImportNodeOptions

///|
pub impl TJsValue for ImportNodeOptions with to_js(self : ImportNodeOptions) -> JsValue = "%identity"

///|
extern "js" fn import_node_options_ffi(
  custom_element_registry : JsValue,
  self_only : JsValue,
) -> ImportNodeOptions =
  #|(customElementRegistry, selfOnly) => {
  #|  const obj = {};
  #|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
  #|  if (selfOnly !== undefined) obj.selfOnly = selfOnly;
  #|  return obj;
  #|}

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
extern "js" fn import_node_options_empty_ffi() -> ImportNodeOptions = "() => {}"

///|
pub fn ImportNodeOptions::empty() -> ImportNodeOptions {
  import_node_options_empty_ffi()
}
