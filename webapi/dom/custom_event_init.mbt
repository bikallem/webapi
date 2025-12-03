// Auto-generated MoonBit bindings for CustomEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary CustomEventInit : EventInit {
//   any detail = null;
// };

///|
#external
pub type CustomEventInit

///|
pub impl TJsValue for CustomEventInit with to_js(self : CustomEventInit) -> JsValue = "%identity"

///|
fn custom_event_init_ffi(detail : JsValue) -> CustomEventInit = "webapi_CustomEventInit" "new"

///|
pub fn CustomEventInit::new(
  detail? : JsValue
) -> CustomEventInit {
  let detail_js = opt_to_js(detail)
  custom_event_init_ffi(detail_js)
}

///|
pub fn CustomEventInit::empty() -> CustomEventInit = "webapi_Dictionary" "empty"