///|
extern "js" fn element_creation_options_ffi(
  custom_element_registry : JsValue,
  is_ : JsValue,
) -> ElementCreationOptions =
  #|(customElementRegistry, is) => {
  #|  const obj = {};
  #|  if (customElementRegistry !== undefined) obj.customElementRegistry = customElementRegistry;
  #|  if (is !== undefined) obj.is = is;
  #|  return obj;
  #|}

///|
extern "js" fn element_creation_options_empty_ffi() -> ElementCreationOptions = "() => {}"
