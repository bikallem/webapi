// Do not edit. This file is generated.
// MoonBit type: CloseWatcherOptions
// Specifications: html.idl

///|
/// [CloseWatcherOptions](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcherOptions)
#external
pub type CloseWatcherOptions

///|
pub impl TJsValue for CloseWatcherOptions with to_js(self : CloseWatcherOptions) -> JsValue = "%identity"

///|
pub impl FromJsAny for CloseWatcherOptions with from_js_any(value : JsAny) -> CloseWatcherOptions = "%identity"

///|
pub fn CloseWatcherOptions::new(signal? : &TAbortSignal) -> CloseWatcherOptions {
  close_watcher_options_ffi(opt_to_js(signal))
}

///|
pub fn CloseWatcherOptions::empty() -> CloseWatcherOptions {
  close_watcher_options_empty_ffi()
}

///|
pub fn CloseWatcherOptions::signal(self : CloseWatcherOptions) -> AbortSignal? {
  close_watcher_options_get_signal_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn close_watcher_options_ffi(
  signal : JsValue,
) -> CloseWatcherOptions =
  #|(signal) => {
  #|  const obj = {};
  #|  if (signal !== undefined) obj.signal = signal;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn close_watcher_options_empty_ffi() -> CloseWatcherOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn close_watcher_options_get_signal_ffi(obj : JsValue) -> JsValue = "(obj) => obj.signal"

///|
#cfg(target="wasm-gc")
fn close_watcher_options_ffi(signal : JsValue) -> CloseWatcherOptions = "webapi_CloseWatcherOptions" "new"

///|
#cfg(target="wasm-gc")
fn close_watcher_options_empty_ffi() -> CloseWatcherOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn close_watcher_options_get_signal_ffi(obj : JsValue) -> JsValue = "webapi_CloseWatcherOptions" "get_signal"
