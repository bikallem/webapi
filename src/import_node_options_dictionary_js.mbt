extern "js" fn import_node_options_ffi(custom_element_registry: JsValue, self_only: JsValue) -> ImportNodeOptions = 
#|(customElementRegistry, selfOnly) => {
#|  const obj = {};
#|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
#|  if (selfOnly !== undefined) obj.selfOnly = selfOnly;
#|  return obj;
#|}

extern "js" fn import_node_options_empty_ffi() -> ImportNodeOptions = "() => {}"