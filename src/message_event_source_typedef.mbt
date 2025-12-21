///|
#external
pub type MessageEventSource

///|
pub impl TJsValue for MessageEventSource with to_js(self : MessageEventSource) -> JsValue = "%identity"

///|
pub(open) trait TMessageEventSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TMessageEventSource] MessageEventSource::into(
  self : MessageEventSource,
) -> T = "%identity"

///|
pub impl TMessageEventSource for WindowProxy with to_js(self : WindowProxy) -> JsValue = "%identity"

///|
pub impl TMessageEventSource for MessagePort with to_js(self : MessagePort) -> JsValue = "%identity"

///|
pub impl TMessageEventSource for ServiceWorker with to_js(self : ServiceWorker) -> JsValue = "%identity"
