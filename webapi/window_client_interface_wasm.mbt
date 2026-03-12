fn window_client_visibility_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WindowClient" "get_visibilityState"

///|
fn window_client_visibility_state_ffi(obj: JsValue) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(jsvalue_to_string(window_client_visibility_state_ffi_wasm(obj)))
}

fn window_client_focused_ffi(obj: JsValue) -> Bool = "webapi_WindowClient" "get_focused"

fn window_client_ancestor_origins_ffi_wasm(obj: JsValue) -> JsArray = "webapi_WindowClient" "get_ancestorOrigins"

///|
fn window_client_ancestor_origins_ffi(obj: JsValue) -> Array[String] {
  window_client_ancestor_origins_ffi_wasm(obj).to_string_array()
}

fn window_client_focus_ffi_wasm(obj: JsValue) -> JsValue = "webapi_WindowClient" "focus"

///|
fn window_client_focus_ffi(obj: JsValue) -> JsPromise[WindowClient] {
  window_client_focus_ffi_wasm(obj).unsafe_cast()
}

fn window_client_navigate_ffi_wasm(obj: JsValue, url: JsValue) -> JsValue = "webapi_WindowClient" "navigate"

///|
fn window_client_navigate_ffi(obj: JsValue, url: JsValue) -> JsPromise[WindowClient] {
  window_client_navigate_ffi_wasm(obj, url).unsafe_cast()
}