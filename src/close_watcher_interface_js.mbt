extern "js" fn close_watcher_new_ffi(options: JsValue) -> CloseWatcher = "(options) => new CloseWatcher(options)"

extern "js" fn close_watcher_request_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.requestClose()"

extern "js" fn close_watcher_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

extern "js" fn close_watcher_destroy_ffi(obj: JsValue) -> Unit = "(obj) => obj.destroy()"

extern "js" fn close_watcher_oncancel_ffi(obj: JsValue) -> JsValue = "(obj) => obj.oncancel"

extern "js" fn close_watcher_set_oncancel_ffi(obj: JsValue, oncancel: JsValue) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

extern "js" fn close_watcher_onclose_ffi(obj: JsValue) -> JsValue = "(obj) => obj.onclose"

extern "js" fn close_watcher_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"