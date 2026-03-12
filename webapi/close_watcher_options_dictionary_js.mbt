extern "js" fn close_watcher_options_ffi(signal: JsValue) -> CloseWatcherOptions = 
#|(signal) => {
#|  const obj = {};
#|  if (signal !== undefined) obj.signal = signal;
#|  return obj;
#|}

extern "js" fn close_watcher_options_empty_ffi() -> CloseWatcherOptions = "() => {}"

extern "js" fn close_watcher_options_get_signal_ffi(obj: JsValue) -> JsValue = "(obj) => obj.signal"