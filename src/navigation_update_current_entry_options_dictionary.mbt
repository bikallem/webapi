// Do not edit. This file is generated.
// MoonBit type: NavigationUpdateCurrentEntryOptions
// Specifications: html.idl

/// [NavigationUpdateCurrentEntryOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationUpdateCurrentEntryOptions)
#external
pub type NavigationUpdateCurrentEntryOptions

pub impl TJsValue for NavigationUpdateCurrentEntryOptions with to_js(self: NavigationUpdateCurrentEntryOptions) -> JsValue = "%identity"

pub impl FromJsAny for NavigationUpdateCurrentEntryOptions with from_js_any(value : JsAny) -> NavigationUpdateCurrentEntryOptions = "%identity"

pub fn NavigationUpdateCurrentEntryOptions::new(state : JsValue) -> NavigationUpdateCurrentEntryOptions {
  navigation_update_current_entry_options_ffi(TJsValue::to_js(state))
}

pub fn NavigationUpdateCurrentEntryOptions::empty() -> NavigationUpdateCurrentEntryOptions { navigation_update_current_entry_options_empty_ffi() }

pub fn NavigationUpdateCurrentEntryOptions::state(self : NavigationUpdateCurrentEntryOptions) -> JsValue {
  navigation_update_current_entry_options_get_state_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn navigation_update_current_entry_options_ffi(state: JsValue) -> NavigationUpdateCurrentEntryOptions = 
#|(state) => {
#|  const obj = {};
#|  if (state !== undefined) obj.state = state;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn navigation_update_current_entry_options_empty_ffi() -> NavigationUpdateCurrentEntryOptions = "() => {}"

#cfg(target="js")
extern "js" fn navigation_update_current_entry_options_get_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
fn navigation_update_current_entry_options_get_state_ffi(obj: JsValue) -> JsValue {
  navigation_update_current_entry_options_get_state_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn navigation_update_current_entry_options_ffi(state: JsValue) -> NavigationUpdateCurrentEntryOptions = "webapi_NavigationUpdateCurrentEntryOptions" "new"

#cfg(target="wasm-gc")
fn navigation_update_current_entry_options_empty_ffi() -> NavigationUpdateCurrentEntryOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn navigation_update_current_entry_options_get_state_ffi(obj: JsValue) -> JsValue = "webapi_NavigationUpdateCurrentEntryOptions" "get_state"