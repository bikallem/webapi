// Auto-generated MoonBit bindings for UIEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary UIEventInit : EventInit {
//   Window? view = null;
//   long detail = 0;
// };
// 
// partial dictionary UIEventInit {
//   unsigned long which = 0;
// };

///|
#external
pub type UIEventInit

///|
pub impl TJsValue for UIEventInit with to_js(self : UIEventInit) -> JsValue = "%identity"

///|
fn ui_event_init_ffi(
  view : JsValue,
  detail : JsValue,
  which : JsValue,
) -> UIEventInit = "webapi_UIEventInit" "new"

///|
pub fn UIEventInit::new(
  view? : Window = JsValue::null(),
  detail? : Int = 0,
  which? : Int = 0,
) -> UIEventInit {
  ui_event_init_ffi(
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
  )
}

///|
pub fn UIEventInit::empty() -> UIEventInit = "webapi_Dictionary" "empty"
