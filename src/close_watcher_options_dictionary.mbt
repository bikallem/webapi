// Auto-generated MoonBit bindings for CloseWatcherOptions dictionary
// Do not edit manually

#external
pub type CloseWatcherOptions

pub impl TJsValue for CloseWatcherOptions with to_js(self: CloseWatcherOptions) -> JsValue = "%identity"


fn close_watcher_options_ffi(signal : JsValue) -> CloseWatcherOptions = "webapi_CloseWatcherOptions" "new"


pub fn CloseWatcherOptions::new(
  signal? : &TAbortSignal) -> CloseWatcherOptions {
    close_watcher_options_ffi(
      opt_to_js(signal)
    )
}


pub fn CloseWatcherOptions::empty() -> CloseWatcherOptions = "webapi_Dictionary" "empty"