// Auto-generated MoonBit bindings for CompositionEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary CompositionEventInit : UIEventInit {
//   DOMString data = "";
// };

///|
#external
pub type CompositionEventInit

///|
pub impl TJsValue for CompositionEventInit with to_js(
  self : CompositionEventInit,
) -> JsValue = "%identity"

///|
fn composition_event_init_ffi(data : JsValue) -> CompositionEventInit = "webapi_CompositionEventInit" "new"

///|
pub fn CompositionEventInit::new(data? : String = "") -> CompositionEventInit {
  composition_event_init_ffi(TJsValue::to_js(data))
}

///|
pub fn CompositionEventInit::empty() -> CompositionEventInit = "webapi_Dictionary" "empty"
