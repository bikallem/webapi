///|
#external
pub type CloseWatcher

///|
pub impl TJsValue for CloseWatcher with to_js(self : CloseWatcher) -> JsValue = "%identity"

///|
pub fn[T : TCloseWatcher] CloseWatcher::into(self : CloseWatcher) -> T = "%identity"

///|
pub impl TCloseWatcher for CloseWatcher

///|
pub impl TEventTarget for CloseWatcher

///|
extern "js" fn close_watcher_ffi(options : JsValue) -> CloseWatcher = "(options) => new CloseWatcher(options)"

///|
pub fn CloseWatcher::new(
  options? : CloseWatcherOptions = CloseWatcherOptions::empty(),
) -> CloseWatcher {
  close_watcher_ffi(TJsValue::to_js(options))
}

///|
pub trait TCloseWatcher: TEventTarget {
  request_close(self : Self) -> Unit = _
  close(self : Self) -> Unit = _
  destroy(self : Self) -> Unit = _
}

///|
extern "js" fn close_watcher_request_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.requestClose(obj)"

///|
impl TCloseWatcher with request_close(self : Self) -> Unit {
  close_watcher_request_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn close_watcher_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TCloseWatcher with close(self : Self) -> Unit {
  close_watcher_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn close_watcher_destroy_ffi(obj : JsValue) -> Unit = "(obj) => obj.destroy(obj)"

///|
impl TCloseWatcher with destroy(self : Self) -> Unit {
  close_watcher_destroy_ffi(TJsValue::to_js(self))
}
