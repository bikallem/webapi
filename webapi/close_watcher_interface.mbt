// Do not edit. This file is generated.
// MoonBit type: CloseWatcher
// Specifications: html.idl

/// [CloseWatcher](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher)
#external
pub type CloseWatcher

pub impl TJsValue for CloseWatcher with to_js(self: CloseWatcher) -> JsValue = "%identity"

pub impl FromJsAny for CloseWatcher with from_js_any(value : JsAny) -> CloseWatcher = "%identity"

pub fn[T: TCloseWatcher] CloseWatcher::into(self : CloseWatcher) -> T = "%identity"

pub impl TCloseWatcher for CloseWatcher

pub impl TEventTarget for CloseWatcher

pub fn CloseWatcher::new(options? : CloseWatcherOptions) -> CloseWatcher {
  close_watcher_new_ffi(opt_to_js(options))
}

/// [CloseWatcher](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher) interface.
pub trait TCloseWatcher: TEventTarget {
  request_close(self : Self) -> Unit = _
  close(self : Self) -> Unit = _
  destroy(self : Self) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
}

/// [CloseWatcher.requestClose](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/requestClose)
impl TCloseWatcher with request_close(self : Self) -> Unit {
  close_watcher_request_close_ffi(TJsValue::to_js(self))
}

/// [CloseWatcher.close](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/close)
impl TCloseWatcher with close(self : Self) -> Unit {
  close_watcher_close_ffi(TJsValue::to_js(self))
}

/// [CloseWatcher.destroy](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/destroy)
impl TCloseWatcher with destroy(self : Self) -> Unit {
  close_watcher_destroy_ffi(TJsValue::to_js(self))
}

/// [CloseWatcher.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/oncancel)
impl TCloseWatcher with oncancel(self : Self) -> EventHandler {
  close_watcher_oncancel_ffi(TJsValue::to_js(self))
}

/// [CloseWatcher.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/oncancel)
impl TCloseWatcher with set_oncancel(self : Self, 
oncancel : (Event) -> JsValue) -> Unit {
  close_watcher_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(oncancel)))
}

/// [CloseWatcher.onclose](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/onclose)
impl TCloseWatcher with onclose(self : Self) -> EventHandler {
  close_watcher_onclose_ffi(TJsValue::to_js(self))
}

/// [CloseWatcher.onclose](https://developer.mozilla.org/en-US/docs/Web/API/CloseWatcher/onclose)
impl TCloseWatcher with set_onclose(self : Self, 
onclose : (Event) -> JsValue) -> Unit {
  close_watcher_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onclose)))
}