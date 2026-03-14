// Do not edit. This file is generated.
// MoonBit type: FullscreenOptions
// Specifications: fullscreen.idl

/// [FullscreenOptions](https://developer.mozilla.org/en-US/docs/Web/API/FullscreenOptions)
#external
pub type FullscreenOptions

pub impl TJsValue for FullscreenOptions with to_js(self: FullscreenOptions) -> JsValue = "%identity"

pub impl FromJsAny for FullscreenOptions with from_js_any(value : JsAny) -> FullscreenOptions = "%identity"

pub fn FullscreenOptions::new(navigation_ui? : FullscreenNavigationUI) -> FullscreenOptions {
  fullscreen_options_ffi(opt_to_js(navigation_ui))
}

pub fn FullscreenOptions::empty() -> FullscreenOptions { fullscreen_options_empty_ffi() }

pub fn FullscreenOptions::navigation_ui(self : FullscreenOptions) -> FullscreenNavigationUI? {
  fullscreen_options_get_navigation_ui_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn fullscreen_options_ffi(navigation_ui: JsValue) -> FullscreenOptions = 
#|(navigationUI) => {
#|  const obj = {};
#|  if (navigationUI !== undefined) obj.navigationUI = navigationUI;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn fullscreen_options_empty_ffi() -> FullscreenOptions = "() => {}"

#cfg(target="js")
extern "js" fn fullscreen_options_get_navigation_ui_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigationUI"

#cfg(target="wasm-gc")
fn fullscreen_options_ffi(navigation_ui: JsValue) -> FullscreenOptions = "webapi_FullscreenOptions" "new"

#cfg(target="wasm-gc")
fn fullscreen_options_empty_ffi() -> FullscreenOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn fullscreen_options_get_navigation_ui_ffi(obj: JsValue) -> JsValue = "webapi_FullscreenOptions" "get_navigationUI"