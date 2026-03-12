// Do not edit. This file is generated.
// MoonBit type: TogglePopoverOptions
// Specifications: html.idl

///|
/// [TogglePopoverOptions](https://developer.mozilla.org/en-US/docs/Web/API/TogglePopoverOptions)
#external
pub type TogglePopoverOptions

///|
pub impl TJsValue for TogglePopoverOptions with to_js(
  self : TogglePopoverOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for TogglePopoverOptions with from_js_any(value : JsAny) -> TogglePopoverOptions = "%identity"

///|
pub fn TogglePopoverOptions::new(
  source? : &THTMLElement,
  force? : Bool,
) -> TogglePopoverOptions {
  toggle_popover_options_ffi(opt_to_js(source), opt_to_js(force))
}

///|
pub fn TogglePopoverOptions::empty() -> TogglePopoverOptions {
  toggle_popover_options_empty_ffi()
}

///|
pub fn TogglePopoverOptions::source(
  self : TogglePopoverOptions,
) -> HTMLElement? {
  toggle_popover_options_get_source_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn TogglePopoverOptions::force(self : TogglePopoverOptions) -> Bool? {
  toggle_popover_options_get_force_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn toggle_popover_options_ffi(
  source : JsValue,
  force : JsValue,
) -> TogglePopoverOptions =
  #|(source, force) => {
  #|  const obj = {};
  #|  if (source !== undefined) obj.source = source;
  #|  if (force !== undefined) obj.force = force;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn toggle_popover_options_empty_ffi() -> TogglePopoverOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn toggle_popover_options_get_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
extern "js" fn toggle_popover_options_get_force_ffi(obj : JsValue) -> JsValue = "(obj) => obj.force"

///|
#cfg(target="wasm-gc")
fn toggle_popover_options_ffi(
  source : JsValue,
  force : JsValue,
) -> TogglePopoverOptions = "webapi_TogglePopoverOptions" "new"

///|
#cfg(target="wasm-gc")
fn toggle_popover_options_empty_ffi() -> TogglePopoverOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn toggle_popover_options_get_source_ffi(obj : JsValue) -> JsValue = "webapi_TogglePopoverOptions" "get_source"

///|
#cfg(target="wasm-gc")
fn toggle_popover_options_get_force_ffi(obj : JsValue) -> JsValue = "webapi_TogglePopoverOptions" "get_force"
