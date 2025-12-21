///|
#external
pub type CloseWatcherOptions

///|
pub impl TJsValue for CloseWatcherOptions with to_js(self : CloseWatcherOptions) -> JsValue = "%identity"

///|
extern "js" fn close_watcher_options_ffi(
  signal : JsValue,
) -> CloseWatcherOptions =
  #|(signal) => {
  #|  const obj = {};
  #|  if (signal !== undefined) obj.signal = signal;
  #|  return obj;
  #|}

///|
pub fn CloseWatcherOptions::new(signal? : &TAbortSignal) -> CloseWatcherOptions {
  close_watcher_options_ffi(opt_to_js(signal))
}

///|
extern "js" fn close_watcher_options_empty_ffi() -> CloseWatcherOptions = "() => {}"

///|
pub fn CloseWatcherOptions::empty() -> CloseWatcherOptions {
  close_watcher_options_empty_ffi()
}
