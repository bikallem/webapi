///|
pub(open) trait TMessageEventSource {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TMessageEventSource] &TMessageEventSource::into(
  self : &TMessageEventSource,
) -> T = "%identity"

///|
pub impl TMessageEventSource for MessagePort with to_js(self : MessagePort) -> JsValue = "%identity"

///|
pub impl TMessageEventSource for ServiceWorker with to_js(self : ServiceWorker) -> JsValue = "%identity"
