// Do not edit. This file is generated.
// MoonBit type: FullscreenOptions
// Specifications: fullscreen.idl

/// [FullscreenOptions](https://developer.mozilla.org/en-US/docs/Web/API/FullscreenOptions)
#external
pub type FullscreenOptions

pub impl TJsValue for FullscreenOptions with to_js(self: FullscreenOptions) -> JsValue = "%identity"

pub fn FullscreenOptions::new(navigation_ui? : FullscreenNavigationUI = FullscreenNavigationUI::Auto) -> FullscreenOptions {
  fullscreen_options_ffi(TJsValue::to_js(navigation_ui))
}

pub fn FullscreenOptions::empty() -> FullscreenOptions { fullscreen_options_empty_ffi() }