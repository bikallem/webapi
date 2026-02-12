///|
fn close_watcher_new_ffi(options : JsValue) -> CloseWatcher = "webapi_CloseWatcher" "new"

///|
fn close_watcher_request_close_ffi(obj : JsValue) -> Unit = "webapi_CloseWatcher" "requestClose"

///|
fn close_watcher_close_ffi(obj : JsValue) -> Unit = "webapi_CloseWatcher" "close"

///|
fn close_watcher_destroy_ffi(obj : JsValue) -> Unit = "webapi_CloseWatcher" "destroy"

///|
fn close_watcher_oncancel_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_CloseWatcher" "get_oncancel"

///|
fn close_watcher_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_CloseWatcher" "set_oncancel"

///|
fn close_watcher_onclose_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_CloseWatcher" "get_onclose"

///|
fn close_watcher_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_CloseWatcher" "set_onclose"
