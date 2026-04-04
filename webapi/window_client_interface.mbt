// Do not edit. This file is generated.
// MoonBit type: WindowClient
// Specifications: service-workers.idl

///|
/// [WindowClient](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient)
#external
pub type WindowClient

///|
pub impl TJsValue for WindowClient with to_js(self : WindowClient) -> JsValue = "%identity"

///|
pub impl FromJsAny for WindowClient with from_js_any(value : JsAny) -> WindowClient = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWindowClient] WindowClient::into(self : WindowClient) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWindowClient] WindowClient::unsafe_into(self : WindowClient) -> T = "%identity"

///|
pub impl HasConstructor for WindowClient with constructor_name() {
  "WindowClient"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWindowClient + HasConstructor] WindowClient::try_into(
  self : WindowClient,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWindowClient for WindowClient

///|
pub impl TClient for WindowClient

///|
/// [WindowClient](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient) interface.
pub trait TWindowClient: TClient {
  visibility_state(self : Self) -> DocumentVisibilityState = _
  focused(self : Self) -> Bool = _
  ancestor_origins(self : Self) -> Array[String] = _
  focus(self : Self) -> JsPromise[WindowClient] = _
  navigate(self : Self, url : String) -> JsPromise[WindowClient] = _
}

///|
/// [WindowClient.visibilityState](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/visibilityState)
impl TWindowClient with visibility_state(self : Self) -> DocumentVisibilityState {
  window_client_visibility_state_ffi(TJsValue::to_js(self))
}

///|
/// [WindowClient.focused](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/focused)
impl TWindowClient with focused(self : Self) -> Bool {
  window_client_focused_ffi(TJsValue::to_js(self))
}

///|
/// [WindowClient.ancestorOrigins](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/ancestorOrigins)
impl TWindowClient with ancestor_origins(self : Self) -> Array[String] {
  window_client_ancestor_origins_ffi(TJsValue::to_js(self))
}

///|
/// [WindowClient.focus](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/focus)
impl TWindowClient with focus(self : Self) -> JsPromise[WindowClient] {
  window_client_focus_ffi(TJsValue::to_js(self))
}

///|
/// [WindowClient.navigate](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/navigate)
impl TWindowClient with navigate(self : Self, url : String) -> JsPromise[
  WindowClient,
] {
  window_client_navigate_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}

///|
#cfg(target="js")
extern "js" fn window_client_visibility_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.visibilityState"

///|
#cfg(target="js")
fn window_client_visibility_state_ffi(obj : JsValue) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(
    window_client_visibility_state_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn window_client_focused_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.focused"

///|
#cfg(target="js")
fn window_client_focused_ffi(obj : JsValue) -> Bool {
  window_client_focused_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_client_ancestor_origins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ancestorOrigins"

///|
#cfg(target="js")
fn window_client_ancestor_origins_ffi(obj : JsValue) -> Array[String] {
  window_client_ancestor_origins_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_client_focus_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.focus()"

///|
#cfg(target="js")
fn window_client_focus_ffi(obj : JsValue) -> JsPromise[WindowClient] {
  window_client_focus_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn window_client_navigate_ffi_js(
  obj : JsValue,
  url : JsValue,
) -> JsValue = "(obj, url) => obj.navigate(url)"

///|
#cfg(target="js")
fn window_client_navigate_ffi(
  obj : JsValue,
  url : JsValue,
) -> JsPromise[WindowClient] {
  window_client_navigate_ffi_js(obj, url).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_client_visibility_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WindowClient" "get_visibilityState"

///|
#cfg(target="wasm-gc")
fn window_client_visibility_state_ffi(obj : JsValue) -> DocumentVisibilityState {
  DocumentVisibilityState::from_unchecked(
    jsvalue_to_string(window_client_visibility_state_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn window_client_focused_ffi(obj : JsValue) -> Bool = "webapi_WindowClient" "get_focused"

///|
#cfg(target="wasm-gc")
fn window_client_ancestor_origins_ffi_wasm(obj : JsValue) -> JsArray = "webapi_WindowClient" "get_ancestorOrigins"

///|
#cfg(target="wasm-gc")
fn window_client_ancestor_origins_ffi(obj : JsValue) -> Array[String] {
  window_client_ancestor_origins_ffi_wasm(obj).to_string_array()
}

///|
#cfg(target="wasm-gc")
fn window_client_focus_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WindowClient" "focus"

///|
#cfg(target="wasm-gc")
fn window_client_focus_ffi(obj : JsValue) -> JsPromise[WindowClient] {
  window_client_focus_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn window_client_navigate_ffi_wasm(obj : JsValue, url : JsValue) -> JsValue = "webapi_WindowClient" "navigate"

///|
#cfg(target="wasm-gc")
fn window_client_navigate_ffi(
  obj : JsValue,
  url : JsValue,
) -> JsPromise[WindowClient] {
  window_client_navigate_ffi_wasm(obj, url).unsafe_cast()
}
