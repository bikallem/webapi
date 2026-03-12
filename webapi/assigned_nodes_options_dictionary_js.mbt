extern "js" fn assigned_nodes_options_ffi(flatten: JsValue) -> AssignedNodesOptions = 
#|(flatten) => {
#|  const obj = {};
#|  if (flatten !== undefined) obj.flatten = flatten;
#|  return obj;
#|}

extern "js" fn assigned_nodes_options_empty_ffi() -> AssignedNodesOptions = "() => {}"

extern "js" fn assigned_nodes_options_get_flatten_ffi(obj: JsValue) -> JsValue = "(obj) => obj.flatten"