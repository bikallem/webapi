// Do not edit. This file is generated.
// MoonBit type: NavigationReloadOptions
// Specifications: html.idl

/// [NavigationReloadOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationReloadOptions)
#external
pub type NavigationReloadOptions

pub impl TJsValue for NavigationReloadOptions with to_js(self: NavigationReloadOptions) -> JsValue = "%identity"

pub impl FromJsAny for NavigationReloadOptions with from_js_any(value : JsAny) -> NavigationReloadOptions = "%identity"

pub fn NavigationReloadOptions::new(info? : JsValue, 
state? : JsValue) -> NavigationReloadOptions {
  navigation_reload_options_ffi(opt_to_js(info), opt_to_js(state))
}

pub fn NavigationReloadOptions::empty() -> NavigationReloadOptions { navigation_reload_options_empty_ffi() }

pub fn NavigationReloadOptions::info(self : NavigationReloadOptions) -> JsValue? {
  navigation_reload_options_get_info_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NavigationReloadOptions::state(self : NavigationReloadOptions) -> JsValue? {
  navigation_reload_options_get_state_ffi(TJsValue::to_js(self)).to_option()
}