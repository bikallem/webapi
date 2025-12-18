// Auto-generated MoonBit bindings for MouseEventInit dictionary

// Do not edit manually

///|
#external
pub type MouseEventInit

///|
pub impl TJsValue for MouseEventInit with to_js(self : MouseEventInit) -> JsValue = "%identity"

///|
fn mouse_event_init_ffi(
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
) -> MouseEventInit = "webapi_MouseEventInit" "new"

///|
pub fn MouseEventInit::new(
  screen_x? : Int = 0,
  screen_y? : Int = 0,
  client_x? : Int = 0,
  client_y? : Int = 0,
  button? : Int = 0,
  buttons? : UInt = 0,
  related_target? : EventTarget = JsValue::null(),
) -> MouseEventInit {
  mouse_event_init_ffi(
    TJsValue::to_js(screen_x),
    TJsValue::to_js(screen_y),
    TJsValue::to_js(client_x),
    TJsValue::to_js(client_y),
    TJsValue::to_js(button),
    TJsValue::to_js(buttons),
    TJsValue::to_js(related_target),
  )
}

///|
pub fn MouseEventInit::empty() -> MouseEventInit = "webapi_Dictionary" "empty"
