// Auto-generated MoonBit bindings for WheelEventInit dictionary
// Do not edit manually

#external
pub type WheelEventInit

pub impl TJsValue for WheelEventInit with to_js(self: WheelEventInit) -> JsValue = "%identity"


fn wheel_event_init_ffi(screen_x : JsValue, screen_y : JsValue, client_x : JsValue, client_y : JsValue, button : JsValue, buttons : JsValue, related_target : JsValue, delta_x : JsValue, delta_y : JsValue, delta_z : JsValue, delta_mode : JsValue) -> WheelEventInit = "webapi_WheelEventInit" "new"


pub fn WheelEventInit::new(
  screen_x? : Int? : Int = 0,
  screen_y? : Int? : Int = 0,
  client_x? : Int? : Int = 0,
  client_y? : Int? : Int = 0,
  button? : Int? : Int = 0,
  buttons? : UInt? : UInt = 0,
  related_target? : &TEventTarget? : &TEventTarget = &TEventTarget::null(),
  delta_x? : Double? : Double = 0.0,
  delta_y? : Double? : Double = 0.0,
  delta_z? : Double? : Double = 0.0,
  delta_mode? : UInt? : UInt = 0) -> WheelEventInit {
    wheel_event_init_ffi(
      TJsValue::to_js(screen_x)
     ,TJsValue::to_js(screen_y)
     ,TJsValue::to_js(client_x)
     ,TJsValue::to_js(client_y)
     ,TJsValue::to_js(button)
     ,TJsValue::to_js(buttons)
     ,TJsValue::to_js(related_target)
     ,TJsValue::to_js(delta_x)
     ,TJsValue::to_js(delta_y)
     ,TJsValue::to_js(delta_z)
     ,TJsValue::to_js(delta_mode)
    )
}


pub fn WheelEventInit::empty() -> WheelEventInit = "webapi_Dictionary" "empty"