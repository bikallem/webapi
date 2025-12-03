// Auto-generated MoonBit bindings for CloseWatcherOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary CloseWatcherOptions {
//   AbortSignal signal;
// };

///|
#external
pub type CloseWatcherOptions

///|
pub impl TJsValue for CloseWatcherOptions with to_js(self : CloseWatcherOptions) -> JsValue = "%identity"

///|
fn close_watcher_options_ffi(signal : JsValue) -> CloseWatcherOptions = "webapi_CloseWatcherOptions" "new"

///|
pub fn CloseWatcherOptions::new(
  signal? : AbortSignal
) -> CloseWatcherOptions {
  let signal_js = opt_to_js(signal)
  close_watcher_options_ffi(signal_js)
}

///|
pub fn CloseWatcherOptions::empty() -> CloseWatcherOptions = "webapi_Dictionary" "empty"