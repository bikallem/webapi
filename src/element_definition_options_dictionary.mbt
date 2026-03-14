// Do not edit. This file is generated.
// MoonBit type: ElementDefinitionOptions
// Specifications: html.idl

///|
/// [ElementDefinitionOptions](https://developer.mozilla.org/en-US/docs/Web/API/ElementDefinitionOptions)
#external
pub type ElementDefinitionOptions

///|
pub impl TJsValue for ElementDefinitionOptions with to_js(
  self : ElementDefinitionOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ElementDefinitionOptions with from_js_any(value : JsAny) -> ElementDefinitionOptions = "%identity"

///|
pub fn ElementDefinitionOptions::new(
  extends? : String,
) -> ElementDefinitionOptions {
  element_definition_options_ffi(opt_to_js(extends))
}

///|
pub fn ElementDefinitionOptions::empty() -> ElementDefinitionOptions {
  element_definition_options_empty_ffi()
}

///|
pub fn ElementDefinitionOptions::extends(
  self : ElementDefinitionOptions,
) -> String? {
  element_definition_options_get_extends_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn element_definition_options_ffi(
  extends : JsValue,
) -> ElementDefinitionOptions =
  #|(extends) => {
  #|  const obj = {};
  #|  if (extends !== undefined) obj.extends = extends;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn element_definition_options_empty_ffi() -> ElementDefinitionOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn element_definition_options_get_extends_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.extends"

///|
#cfg(target="wasm-gc")
fn element_definition_options_ffi(
  extends : JsValue,
) -> ElementDefinitionOptions = "webapi_ElementDefinitionOptions" "new"

///|
#cfg(target="wasm-gc")
fn element_definition_options_empty_ffi() -> ElementDefinitionOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn element_definition_options_get_extends_ffi(obj : JsValue) -> JsValue = "webapi_ElementDefinitionOptions" "get_extends"
