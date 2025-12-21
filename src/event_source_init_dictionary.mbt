///|
#external
pub type EventSourceInit

///|
pub impl TJsValue for EventSourceInit with to_js(self : EventSourceInit) -> JsValue = "%identity"

///|
extern "js" fn event_source_init_ffi(
  with_credentials : JsValue,
) -> EventSourceInit =
  #|(withCredentials) => {
  #|  const obj = {};
  #|  if (withCredentials !== undefined) obj.withCredentials = withCredentials;
  #|  return obj;
  #|}

///|
pub fn EventSourceInit::new(
  with_credentials? : Bool = false,
) -> EventSourceInit {
  event_source_init_ffi(TJsValue::to_js(with_credentials))
}

///|
extern "js" fn event_source_init_empty_ffi() -> EventSourceInit = "() => {}"

///|
pub fn EventSourceInit::empty() -> EventSourceInit {
  event_source_init_empty_ffi()
}
