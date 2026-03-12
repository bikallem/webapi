// Do not edit. This file is generated.
// MoonBit type: WindowClient
// Specifications: service-workers.idl

/// [WindowClient](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient)
#external
pub type WindowClient

pub impl TJsValue for WindowClient with to_js(self: WindowClient) -> JsValue = "%identity"

pub impl FromJsAny for WindowClient with from_js_any(value : JsAny) -> WindowClient = "%identity"

pub fn[T: TWindowClient] WindowClient::into(self : WindowClient) -> T = "%identity"

pub impl TWindowClient for WindowClient

pub impl TClient for WindowClient

/// [WindowClient](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient) interface.
pub trait TWindowClient: TClient {
  visibility_state(self : Self) -> DocumentVisibilityState = _
  focused(self : Self) -> Bool = _
  ancestor_origins(self : Self) -> Array[String] = _
  focus(self : Self) -> JsPromise[WindowClient] = _
  navigate(self : Self, url : String) -> JsPromise[WindowClient] = _
}

/// [WindowClient.visibilityState](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/visibilityState)
impl TWindowClient with visibility_state(self : Self) -> DocumentVisibilityState {
  window_client_visibility_state_ffi(TJsValue::to_js(self))
}

/// [WindowClient.focused](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/focused)
impl TWindowClient with focused(self : Self) -> Bool {
  window_client_focused_ffi(TJsValue::to_js(self))
}

/// [WindowClient.ancestorOrigins](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/ancestorOrigins)
impl TWindowClient with ancestor_origins(self : Self) -> Array[String] {
  window_client_ancestor_origins_ffi(TJsValue::to_js(self))
}

/// [WindowClient.focus](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/focus)
impl TWindowClient with focus(self : Self) -> JsPromise[WindowClient] {
  window_client_focus_ffi(TJsValue::to_js(self))
}

/// [WindowClient.navigate](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient/navigate)
impl TWindowClient with navigate(self : Self, 
url : String) -> JsPromise[WindowClient] {
  window_client_navigate_ffi(TJsValue::to_js(self), TJsValue::to_js(url))
}