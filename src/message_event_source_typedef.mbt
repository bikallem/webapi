// Do not edit. This file is generated.
// MoonBit type: MessageEventSource
// Specifications: html.idl

///|
/// [MessageEventSource](https://developer.mozilla.org/en-US/docs/Web/API/MessageEventSource)
#external
pub type MessageEventSource

///|
pub impl TJsValue for MessageEventSource with to_js(self : MessageEventSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for MessageEventSource with from_js_any(value : JsAny) -> MessageEventSource = "%identity"

///|
pub(open) trait TMessageEventSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TMessageEventSource] MessageEventSource::into(
  self : MessageEventSource,
) -> T = "%identity"

///|
pub impl TMessageEventSource for MessageEventSource with to_js(
  self : MessageEventSource,
) -> JsValue = "%identity"

///|
pub impl TMessageEventSource for WindowProxy with to_js(self : WindowProxy) -> JsValue = "%identity"

///|
pub impl TMessageEventSource for MessagePort with to_js(self : MessagePort) -> JsValue = "%identity"

///|
pub impl TMessageEventSource for ServiceWorker with to_js(self : ServiceWorker) -> JsValue = "%identity"
