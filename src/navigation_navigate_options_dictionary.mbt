// Do not edit. This file is generated.
// MoonBit type: NavigationNavigateOptions
// Specifications: html.idl

///|
/// [NavigationNavigateOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationNavigateOptions)
#external
pub type NavigationNavigateOptions

///|
pub impl TJsValue for NavigationNavigateOptions with to_js(
  self : NavigationNavigateOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationNavigateOptions with from_js_any(value : JsAny) -> NavigationNavigateOptions = "%identity"

///|
pub fn NavigationNavigateOptions::new(
  info? : JsValue,
  state? : JsValue,
  history? : NavigationHistoryBehavior,
) -> NavigationNavigateOptions {
  navigation_navigate_options_ffi(
    opt_to_js(info),
    opt_to_js(state),
    opt_to_js(history),
  )
}

///|
pub fn NavigationNavigateOptions::empty() -> NavigationNavigateOptions {
  navigation_navigate_options_empty_ffi()
}

///|
pub fn NavigationNavigateOptions::info(
  self : NavigationNavigateOptions,
) -> JsValue? {
  navigation_navigate_options_get_info_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigationNavigateOptions::state(
  self : NavigationNavigateOptions,
) -> JsValue? {
  navigation_navigate_options_get_state_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigationNavigateOptions::history(
  self : NavigationNavigateOptions,
) -> NavigationHistoryBehavior? {
  navigation_navigate_options_get_history_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn navigation_navigate_options_ffi(
  info : JsValue,
  state : JsValue,
  history : JsValue,
) -> NavigationNavigateOptions =
  #|(info, state, history) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  if (state !== undefined) obj.state = state;
  #|  if (history !== undefined) obj.history = history;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn navigation_navigate_options_empty_ffi() -> NavigationNavigateOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn navigation_navigate_options_get_info_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.info"

///|
#cfg(target="js")
extern "js" fn navigation_navigate_options_get_state_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
extern "js" fn navigation_navigate_options_get_history_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.history"

///|
#cfg(target="wasm-gc")
fn navigation_navigate_options_ffi(
  info : JsValue,
  state : JsValue,
  history : JsValue,
) -> NavigationNavigateOptions = "webapi_NavigationNavigateOptions" "new"

///|
#cfg(target="wasm-gc")
fn navigation_navigate_options_empty_ffi() -> NavigationNavigateOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn navigation_navigate_options_get_info_ffi(obj : JsValue) -> JsValue = "webapi_NavigationNavigateOptions" "get_info"

///|
#cfg(target="wasm-gc")
fn navigation_navigate_options_get_state_ffi(obj : JsValue) -> JsValue = "webapi_NavigationNavigateOptions" "get_state"

///|
#cfg(target="wasm-gc")
fn navigation_navigate_options_get_history_ffi(obj : JsValue) -> JsValue = "webapi_NavigationNavigateOptions" "get_history"
