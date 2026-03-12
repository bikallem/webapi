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
extern "js" fn get_root_node_options_empty_ffi() -> GetRootNodeOptions = "() => {}"

///|
extern "js" fn get_root_node_options_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"
