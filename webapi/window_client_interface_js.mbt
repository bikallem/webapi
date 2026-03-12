extern "js" fn window_client_visibility_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.visibilityState"

///|
fn window_client_visibility_state_ffi(obj: JsValue) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(window_client_visibility_state_ffi_js(obj).unsafe_cast())
}

extern "js" fn window_client_focused_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.focused"

///|
fn window_client_focused_ffi(obj: JsValue) -> Bool {
  window_client_focused_ffi_js(obj).unsafe_cast()
}

extern "js" fn window_client_ancestor_origins_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ancestorOrigins"

///|
fn window_client_ancestor_origins_ffi(obj: JsValue) -> Array[String] {
  window_client_ancestor_origins_ffi_js(obj).unsafe_cast()
}

extern "js" fn window_client_focus_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.focus()"

///|
fn window_client_focus_ffi(obj: JsValue) -> JsPromise[WindowClient] {
  window_client_focus_ffi_js(obj).unsafe_cast()
}

extern "js" fn window_client_navigate_ffi_js(obj: JsValue, url: JsValue) -> JsValue = "(obj, url) => obj.navigate(url)"

///|
fn window_client_navigate_ffi(obj: JsValue, url: JsValue) -> JsPromise[WindowClient] {
  window_client_navigate_ffi_js(obj, url).unsafe_cast()
}