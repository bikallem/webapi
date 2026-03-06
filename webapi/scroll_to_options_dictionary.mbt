// Do not edit. This file is generated.
// MoonBit type: ScrollToOptions
// Specifications: cssom-view.idl

///|
/// [ScrollToOptions](https://developer.mozilla.org/en-US/docs/Web/API/ScrollToOptions)
#external
pub type ScrollToOptions

///|
pub impl TJsValue for ScrollToOptions with to_js(self : ScrollToOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for ScrollToOptions with from_js_any(value : JsAny) -> ScrollToOptions = "%identity"

///|
pub fn ScrollToOptions::new(
  behavior? : ScrollBehavior,
  left? : Double,
  top? : Double,
) -> ScrollToOptions {
  scroll_to_options_ffi(opt_to_js(behavior), opt_to_js(left), opt_to_js(top))
}

///|
pub fn ScrollToOptions::empty() -> ScrollToOptions {
  scroll_to_options_empty_ffi()
}

///|
pub fn ScrollToOptions::behavior(self : ScrollToOptions) -> ScrollBehavior? {
  scroll_to_options_get_behavior_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ScrollToOptions::left(self : ScrollToOptions) -> Double? {
  scroll_to_options_get_left_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ScrollToOptions::top(self : ScrollToOptions) -> Double? {
  scroll_to_options_get_top_ffi(TJsValue::to_js(self)).to_option_prim()
}
