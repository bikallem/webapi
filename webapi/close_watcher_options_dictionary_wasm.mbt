fn close_watcher_options_ffi(signal: JsValue) -> CloseWatcherOptions = "webapi_CloseWatcherOptions" "new"

fn close_watcher_options_empty_ffi() -> CloseWatcherOptions = "webapi_Dictionary" "empty"

fn close_watcher_options_get_signal_ffi(obj: JsValue) -> JsValue = "webapi_CloseWatcherOptions" "get_signal"