// Auto-generated MoonBit bindings for FocusEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary FocusEventInit : UIEventInit {
//   EventTarget? relatedTarget = null;
// };

///|
#external
pub type FocusEventInit

///|
pub impl TJsValue for FocusEventInit with to_js(self : FocusEventInit) -> JsValue = "%identity"

///|
fn focus_event_init_ffi(related_target : JsValue) -> FocusEventInit = "webapi_FocusEventInit" "new"

///|
pub fn FocusEventInit::new(
  related_target? : EventTarget = JsValue::null(),
) -> FocusEventInit {
  focus_event_init_ffi(TJsValue::to_js(related_target))
}

///|
pub fn FocusEventInit::empty() -> FocusEventInit = "webapi_Dictionary" "empty"
