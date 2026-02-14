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
