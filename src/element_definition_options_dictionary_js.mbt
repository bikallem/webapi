///|
extern "js" fn element_definition_options_ffi(
  extends : JsValue,
) -> ElementDefinitionOptions =
  #|(extends) => {
  #|  const obj = {};
  #|  if (extends !== undefined) obj.extends = extends;
  #|  return obj;
  #|}

///|
extern "js" fn element_definition_options_empty_ffi() -> ElementDefinitionOptions = "() => {}"

///|
extern "js" fn element_definition_options_get_extends_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.extends"
