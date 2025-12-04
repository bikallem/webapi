// Auto-generated MoonBit bindings for WheelEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary WheelEventInit : MouseEventInit {
//   double deltaX = 0.0;
//   double deltaY = 0.0;
//   double deltaZ = 0.0;
//   unsigned long deltaMode = 0;
// };

///|
#external
pub type WheelEventInit

///|
pub impl TJsValue for WheelEventInit with to_js(self : WheelEventInit) -> JsValue = "%identity"

///|
fn wheel_event_init_ffi(
  delta_x : JsValue,
  delta_y : JsValue,
  delta_z : JsValue,
  delta_mode : JsValue,
) -> WheelEventInit = "webapi_WheelEventInit" "new"

///|
pub fn WheelEventInit::new(
  delta_x? : Double = 0.0,
  delta_y? : Double = 0.0,
  delta_z? : Double = 0.0,
  delta_mode? : UInt = 0,
) -> WheelEventInit {
  wheel_event_init_ffi(
    TJsValue::to_js(delta_x),
    TJsValue::to_js(delta_y),
    TJsValue::to_js(delta_z),
    TJsValue::to_js(delta_mode),
  )
}

///|
pub fn WheelEventInit::empty() -> WheelEventInit = "webapi_Dictionary" "empty"
