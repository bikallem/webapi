// Do not edit. This file is generated.
// MoonBit type: WheelEventInit
// Specifications: uievents.idl

///|
/// [WheelEventInit](https://developer.mozilla.org/en-US/docs/Web/API/WheelEventInit)
#external
pub type WheelEventInit

///|
pub impl TJsValue for WheelEventInit with to_js(self : WheelEventInit) -> JsValue = "%identity"

///|
extern "js" fn wheel_event_init_ffi(
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
  delta_x : JsValue,
  delta_y : JsValue,
  delta_z : JsValue,
  delta_mode : JsValue,
) -> WheelEventInit =
  #|(screenX, screenY, clientX, clientY, button, buttons, relatedTarget, deltaX, deltaY, deltaZ, deltaMode) => {
  #|  const obj = {};
  #|  if (screenX !== undefined) obj.screenX = screenX;
  #|  if (screenY !== undefined) obj.screenY = screenY;
  #|  if (clientX !== undefined) obj.clientX = clientX;
  #|  if (clientY !== undefined) obj.clientY = clientY;
  #|  if (button !== undefined) obj.button = button;
  #|  if (buttons !== undefined) obj.buttons = buttons;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  if (deltaX !== undefined) obj.deltaX = deltaX;
  #|  if (deltaY !== undefined) obj.deltaY = deltaY;
  #|  if (deltaZ !== undefined) obj.deltaZ = deltaZ;
  #|  if (deltaMode !== undefined) obj.deltaMode = deltaMode;
  #|  return obj;
  #|}

///|
pub fn WheelEventInit::new(
  screen_x? : Int = (0 : Int),
  screen_y? : Int = (0 : Int),
  client_x? : Int = (0 : Int),
  client_y? : Int = (0 : Int),
  button? : Int = (0 : Int),
  buttons? : UInt = (0 : UInt),
  related_target? : &TEventTarget = JsValue::null(),
  delta_x? : Double = (0.0 : Double),
  delta_y? : Double = (0.0 : Double),
  delta_z? : Double = (0.0 : Double),
  delta_mode? : UInt = (0 : UInt),
) -> WheelEventInit {
  wheel_event_init_ffi(
    TJsValue::to_js(screen_x),
    TJsValue::to_js(screen_y),
    TJsValue::to_js(client_x),
    TJsValue::to_js(client_y),
    TJsValue::to_js(button),
    TJsValue::to_js(buttons),
    TJsValue::to_js(related_target),
    TJsValue::to_js(delta_x),
    TJsValue::to_js(delta_y),
    TJsValue::to_js(delta_z),
    TJsValue::to_js(delta_mode),
  )
}

///|
extern "js" fn wheel_event_init_empty_ffi() -> WheelEventInit = "() => {}"

///|
pub fn WheelEventInit::empty() -> WheelEventInit {
  wheel_event_init_empty_ffi()
}
