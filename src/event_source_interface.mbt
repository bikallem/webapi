///|
#external
pub type EventSource

///|
pub impl TJsValue for EventSource with to_js(self : EventSource) -> JsValue = "%identity"

///|
pub fn[T : TEventSource] EventSource::into(self : EventSource) -> T = "%identity"

///|
pub impl TEventSource for EventSource

///|
pub impl TEventTarget for EventSource

///|
extern "js" fn event_source_new_ffi(
  url : JsValue,
  event_source_init_dict : JsValue,
) -> EventSource = "(url, event_source_init_dict) => new EventSource(url, event_source_init_dict)"

///|
pub fn EventSource::new(
  url : String,
  event_source_init_dict? : EventSourceInit = EventSourceInit::empty(),
) -> EventSource {
  event_source_new_ffi(
    TJsValue::to_js(url),
    TJsValue::to_js(event_source_init_dict),
  )
}

///|
pub trait TEventSource: TEventTarget {
  close(self : Self) -> Unit = _
}

///|
extern "js" fn event_source_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TEventSource with close(self : Self) -> Unit {
  event_source_close_ffi(TJsValue::to_js(self))
}
