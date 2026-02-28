// Do not edit. This file is generated.
// MoonBit type: NavigationPreloadState
// Specifications: service-workers.idl

///|
/// [NavigationPreloadState](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadState)
#external
pub type NavigationPreloadState

///|
pub impl TJsValue for NavigationPreloadState with to_js(
  self : NavigationPreloadState,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationPreloadState with from_js_any(value : JsAny) -> NavigationPreloadState = "%identity"

///|
pub fn NavigationPreloadState::new(
  enabled? : Bool = false,
  header_value? : String,
) -> NavigationPreloadState {
  navigation_preload_state_ffi(
    TJsValue::to_js(enabled),
    opt_to_js(header_value),
  )
}

///|
pub fn NavigationPreloadState::empty() -> NavigationPreloadState {
  navigation_preload_state_empty_ffi()
}

///|
pub fn NavigationPreloadState::enabled(self : NavigationPreloadState) -> Bool? {
  navigation_preload_state_get_enabled_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NavigationPreloadState::header_value(
  self : NavigationPreloadState,
) -> String? {
  navigation_preload_state_get_header_value_ffi(TJsValue::to_js(self)).to_option_prim()
}
