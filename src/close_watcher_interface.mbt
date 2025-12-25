// Do not edit. This file is generated.
// MoonBit type: CloseWatcher
// Specifications: html.idl

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
extern "js" fn close_watcher_new_ffi(options : JsValue) -> CloseWatcher = "(options) => new CloseWatcher(options)"

///|
pub fn CloseWatcher::new(
  options? : CloseWatcherOptions = CloseWatcherOptions::empty(),
) -> CloseWatcher {
  close_watcher_new_ffi(TJsValue::to_js(options))
}

///|
pub trait TCloseWatcher: TEventTarget {
  request_close(self : Self) -> Unit = _
  close(self : Self) -> Unit = _
  destroy(self : Self) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : EventHandler) -> Unit = _
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

///|
extern "js" fn close_watcher_oncancel_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.oncancel"

///|
impl TCloseWatcher with oncancel(self : Self) -> EventHandler {
  close_watcher_oncancel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn close_watcher_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
impl TCloseWatcher with set_oncancel(self : Self, oncancel : EventHandler) -> Unit {
  close_watcher_set_oncancel_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncancel),
  )
}

///|
extern "js" fn close_watcher_onclose_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onclose"

///|
impl TCloseWatcher with onclose(self : Self) -> EventHandler {
  close_watcher_onclose_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn close_watcher_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
impl TCloseWatcher with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  close_watcher_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}
