// Auto-generated MoonBit bindings for EventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary EventInit {
//   boolean bubbles = false;
//   boolean cancelable = false;
//   boolean composed = false;
// };

///|
#external
pub type EventInit

///|
pub impl TJsValue for EventInit with to_js(self : EventInit) -> JsValue = "%identity"

///|
fn event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue) -> EventInit = "webapi_EventInit" "new"

///|
pub fn EventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false
) -> EventInit {
  event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed))
}

///|
pub fn EventInit::empty() -> EventInit = "webapi_Dictionary" "empty"