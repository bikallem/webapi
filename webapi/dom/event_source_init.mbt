// Auto-generated MoonBit bindings for EventSourceInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary EventSourceInit {
//   boolean withCredentials = false;
// };

///|
#external
pub type EventSourceInit

///|
pub impl TJsValue for EventSourceInit with to_js(self : EventSourceInit) -> JsValue = "%identity"

///|
fn event_source_init_ffi(with_credentials : JsValue) -> EventSourceInit = "webapi_EventSourceInit" "new"

///|
pub fn EventSourceInit::new(
  with_credentials? : Bool = false,
) -> EventSourceInit {
  event_source_init_ffi(TJsValue::to_js(with_credentials))
}

///|
pub fn EventSourceInit::empty() -> EventSourceInit = "webapi_Dictionary" "empty"
