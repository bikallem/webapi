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
extern "js" fn import_node_options_empty_ffi() -> ImportNodeOptions = "() => {}"

///|
extern "js" fn import_node_options_get_custom_element_registry_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.customElementRegistry"

///|
extern "js" fn import_node_options_get_self_only_ffi(obj : JsValue) -> JsValue = "(obj) => obj.selfOnly"
