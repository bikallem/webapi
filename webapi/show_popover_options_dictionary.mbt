// Do not edit. This file is generated.
// MoonBit type: ShowPopoverOptions
// Specifications: html.idl

///|
/// [ShowPopoverOptions](https://developer.mozilla.org/en-US/docs/Web/API/ShowPopoverOptions)
#external
pub type ShowPopoverOptions

///|
pub impl TJsValue for ShowPopoverOptions with to_js(self : ShowPopoverOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ShowPopoverOptions with from_js_any(value : JsAny) -> ShowPopoverOptions = "%identity"

///|
pub fn ShowPopoverOptions::new(source? : &THTMLElement) -> ShowPopoverOptions {
  show_popover_options_ffi(opt_to_js(source))
}

///|
pub fn ShowPopoverOptions::empty() -> ShowPopoverOptions {
  show_popover_options_empty_ffi()
}

///|
pub fn ShowPopoverOptions::source(self : ShowPopoverOptions) -> HTMLElement? {
  show_popover_options_get_source_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn show_popover_options_ffi(source : JsValue) -> ShowPopoverOptions =
  #|(source) => {
  #|  const obj = {};
  #|  if (source !== undefined) obj.source = source;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn show_popover_options_empty_ffi() -> ShowPopoverOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn show_popover_options_get_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="wasm-gc")
fn show_popover_options_ffi(source : JsValue) -> ShowPopoverOptions = "webapi_ShowPopoverOptions" "new"

///|
#cfg(target="wasm-gc")
fn show_popover_options_empty_ffi() -> ShowPopoverOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn show_popover_options_get_source_ffi(obj : JsValue) -> JsValue = "webapi_ShowPopoverOptions" "get_source"
