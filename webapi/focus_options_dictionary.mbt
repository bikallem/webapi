// Do not edit. This file is generated.
// MoonBit type: FocusOptions
// Specifications: html.idl

///|
/// [FocusOptions](https://developer.mozilla.org/en-US/docs/Web/API/FocusOptions)
#external
pub type FocusOptions

///|
pub impl TJsValue for FocusOptions with to_js(self : FocusOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for FocusOptions with from_js_any(value : JsAny) -> FocusOptions = "%identity"

///|
pub fn FocusOptions::new(
  prevent_scroll? : Bool,
  focus_visible? : Bool,
) -> FocusOptions {
  focus_options_ffi(opt_to_js(prevent_scroll), opt_to_js(focus_visible))
}

///|
pub fn FocusOptions::empty() -> FocusOptions {
  focus_options_empty_ffi()
}

///|
pub fn FocusOptions::prevent_scroll(self : FocusOptions) -> Bool? {
  focus_options_get_prevent_scroll_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FocusOptions::focus_visible(self : FocusOptions) -> Bool? {
  focus_options_get_focus_visible_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions =
  #|(preventScroll, focusVisible) => {
  #|  const obj = {};
  #|  if (preventScroll !== undefined) obj.preventScroll = preventScroll;
  #|  if (focusVisible !== undefined) obj.focusVisible = focusVisible;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn focus_options_empty_ffi() -> FocusOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn focus_options_get_prevent_scroll_ffi(obj : JsValue) -> JsValue = "(obj) => obj.preventScroll"

///|
#cfg(target="js")
extern "js" fn focus_options_get_focus_visible_ffi(obj : JsValue) -> JsValue = "(obj) => obj.focusVisible"

///|
#cfg(target="wasm-gc")
fn focus_options_ffi(
  prevent_scroll : JsValue,
  focus_visible : JsValue,
) -> FocusOptions = "webapi_FocusOptions" "new"

///|
#cfg(target="wasm-gc")
fn focus_options_empty_ffi() -> FocusOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn focus_options_get_prevent_scroll_ffi(obj : JsValue) -> JsValue = "webapi_FocusOptions" "get_preventScroll"

///|
#cfg(target="wasm-gc")
fn focus_options_get_focus_visible_ffi(obj : JsValue) -> JsValue = "webapi_FocusOptions" "get_focusVisible"
