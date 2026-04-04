// Do not edit. This file is generated.
// MoonBit type: NavigationInterceptOptions
// Specifications: html.idl

///|
/// [NavigationInterceptOptions](https://developer.mozilla.org/en-US/docs/Web/API/NavigationInterceptOptions)
#external
pub type NavigationInterceptOptions

///|
pub impl TJsValue for NavigationInterceptOptions with to_js(
  self : NavigationInterceptOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationInterceptOptions with from_js_any(
  value : JsAny,
) -> NavigationInterceptOptions = "%identity"

///|
pub fn NavigationInterceptOptions::new(
  precommit_handler? : (NavigationPrecommitController) -> JsPromise[JsValue],
  handler? : () -> JsPromise[JsValue],
  focus_reset? : NavigationFocusReset,
  scroll? : NavigationScrollBehavior,
) -> NavigationInterceptOptions {
  navigation_intercept_options_ffi(
    match precommit_handler {
      Some(v) => TJsValue::to_js(navigation_precommit_handler_ffi(v))
      None => JsValue::undefined()
    },
    match handler {
      Some(v) => TJsValue::to_js(navigation_intercept_handler_ffi(v))
      None => JsValue::undefined()
    },
    opt_to_js(focus_reset),
    opt_to_js(scroll),
  )
}

///|
pub fn NavigationInterceptOptions::empty() -> NavigationInterceptOptions {
  navigation_intercept_options_empty_ffi()
}

///|
pub fn NavigationInterceptOptions::precommit_handler(
  self : NavigationInterceptOptions,
) -> NavigationPrecommitHandler? {
  navigation_intercept_options_get_precommit_handler_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigationInterceptOptions::handler(
  self : NavigationInterceptOptions,
) -> NavigationInterceptHandler? {
  navigation_intercept_options_get_handler_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigationInterceptOptions::focus_reset(
  self : NavigationInterceptOptions,
) -> NavigationFocusReset? {
  navigation_intercept_options_get_focus_reset_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn NavigationInterceptOptions::scroll(
  self : NavigationInterceptOptions,
) -> NavigationScrollBehavior? {
  navigation_intercept_options_get_scroll_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn navigation_intercept_options_ffi(
  precommit_handler : JsValue,
  handler : JsValue,
  focus_reset : JsValue,
  scroll : JsValue,
) -> NavigationInterceptOptions =
  #|(precommitHandler, handler, focusReset, scroll) => {
  #|  const obj = {};
  #|  if (precommitHandler !== undefined) obj.precommitHandler = precommitHandler;
  #|  if (handler !== undefined) obj.handler = handler;
  #|  if (focusReset !== undefined) obj.focusReset = focusReset;
  #|  if (scroll !== undefined) obj.scroll = scroll;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn navigation_intercept_options_empty_ffi() -> NavigationInterceptOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn navigation_intercept_options_get_precommit_handler_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.precommitHandler"

///|
#cfg(target="js")
extern "js" fn navigation_intercept_options_get_handler_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.handler"

///|
#cfg(target="js")
extern "js" fn navigation_intercept_options_get_focus_reset_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.focusReset"

///|
#cfg(target="js")
extern "js" fn navigation_intercept_options_get_scroll_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.scroll"

///|
#cfg(target="wasm-gc")
fn navigation_intercept_options_ffi(
  precommit_handler : JsValue,
  handler : JsValue,
  focus_reset : JsValue,
  scroll : JsValue,
) -> NavigationInterceptOptions = "webapi_NavigationInterceptOptions" "new"

///|
#cfg(target="wasm-gc")
fn navigation_intercept_options_empty_ffi() -> NavigationInterceptOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn navigation_intercept_options_get_precommit_handler_ffi(
  obj : JsValue,
) -> JsValue = "webapi_NavigationInterceptOptions" "get_precommitHandler"

///|
#cfg(target="wasm-gc")
fn navigation_intercept_options_get_handler_ffi(obj : JsValue) -> JsValue = "webapi_NavigationInterceptOptions" "get_handler"

///|
#cfg(target="wasm-gc")
fn navigation_intercept_options_get_focus_reset_ffi(obj : JsValue) -> JsValue = "webapi_NavigationInterceptOptions" "get_focusReset"

///|
#cfg(target="wasm-gc")
fn navigation_intercept_options_get_scroll_ffi(obj : JsValue) -> JsValue = "webapi_NavigationInterceptOptions" "get_scroll"
