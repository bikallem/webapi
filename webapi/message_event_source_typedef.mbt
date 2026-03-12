// Do not edit. This file is generated.
// MoonBit type: MessageEventSource
// Specifications: html.idl

/// [MessageEventSource](https://developer.mozilla.org/en-US/docs/Web/API/MessageEventSource)
#external
pub type MessageEventSource

pub impl TJsValue for MessageEventSource with to_js(self: MessageEventSource) -> JsValue = "%identity"

pub impl FromJsAny for MessageEventSource with from_js_any(value : JsAny) -> MessageEventSource = "%identity"

pub(open) trait TMessageEventSource : TJsValue {}

pub fn[T : TMessageEventSource + FromJsAny] MessageEventSource::into(self : MessageEventSource) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TMessageEventSource] MessageEventSource::from(value : T) -> MessageEventSource = "%identity"

pub impl TMessageEventSource for MessageEventSource

pub impl TMessageEventSource for WindowProxy

pub impl TMessageEventSource for MessagePort

pub impl TMessageEventSource for ServiceWorker