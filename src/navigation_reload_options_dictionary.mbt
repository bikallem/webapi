// Do not edit. This file is generated.
// MoonBit type: NavigationReloadOptions
// Specifications: html.idl

///|
#external
pub type NavigationReloadOptions

///|
pub impl TJsValue for NavigationReloadOptions with to_js(
  self : NavigationReloadOptions,
) -> JsValue = "%identity"

///|
extern "js" fn navigation_reload_options_ffi(
  info : JsValue,
  state : JsValue,
) -> NavigationReloadOptions =
  #|(info, state) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  if (state !== undefined) obj.state = state;
  #|  return obj;
  #|}

///|
pub fn NavigationReloadOptions::new(
  info? : JsValue,
  state? : JsValue,
) -> NavigationReloadOptions {
  navigation_reload_options_ffi(opt_to_js(info), opt_to_js(state))
}

///|
extern "js" fn navigation_reload_options_empty_ffi() -> NavigationReloadOptions = "() => {}"

///|
pub fn NavigationReloadOptions::empty() -> NavigationReloadOptions {
  navigation_reload_options_empty_ffi()
}
