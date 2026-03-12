extern "js" fn element_creation_options_ffi(custom_element_registry: JsValue, is_: JsValue) -> ElementCreationOptions = 
#|(customElementRegistry, is) => {
#|  const obj = {};
#|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
#|  if (is !== undefined) obj.is = is;
#|  return obj;
#|}

extern "js" fn element_creation_options_empty_ffi() -> ElementCreationOptions = "() => {}"

extern "js" fn element_creation_options_get_custom_element_registry_ffi(obj: JsValue) -> JsValue = "(obj) => obj.customElementRegistry"

extern "js" fn element_creation_options_get_is_ffi(obj: JsValue) -> JsValue = "(obj) => obj.is"