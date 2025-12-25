// Do not edit. This file is generated.
// MoonBit type: GetRootNodeOptions
// Specifications: dom.idl

///|
#external
pub type GetRootNodeOptions

///|
pub impl TJsValue for GetRootNodeOptions with to_js(self : GetRootNodeOptions) -> JsValue = "%identity"

///|
extern "js" fn get_root_node_options_ffi(
  composed : JsValue,
) -> GetRootNodeOptions =
  #|(composed) => {
  #|  const obj = {};
  #|  if (composed !== undefined) obj.composed = composed;
  #|  return obj;
  #|}

///|
pub fn GetRootNodeOptions::new(composed? : Bool = false) -> GetRootNodeOptions {
  get_root_node_options_ffi(TJsValue::to_js(composed))
}

///|
extern "js" fn get_root_node_options_empty_ffi() -> GetRootNodeOptions = "() => {}"

///|
pub fn GetRootNodeOptions::empty() -> GetRootNodeOptions {
  get_root_node_options_empty_ffi()
}
