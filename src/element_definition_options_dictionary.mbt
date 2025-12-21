///|
#external
pub type ElementDefinitionOptions

///|
pub impl TJsValue for ElementDefinitionOptions with to_js(
  self : ElementDefinitionOptions,
) -> JsValue = "%identity"

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
pub fn ElementDefinitionOptions::new(
  extends? : String,
) -> ElementDefinitionOptions {
  element_definition_options_ffi(opt_to_js(extends))
}

///|
extern "js" fn element_definition_options_empty_ffi() -> ElementDefinitionOptions = "() => {}"

///|
pub fn ElementDefinitionOptions::empty() -> ElementDefinitionOptions {
  element_definition_options_empty_ffi()
}
