///|
#external
pub type DragEventInit

///|
pub impl TJsValue for DragEventInit with to_js(self : DragEventInit) -> JsValue = "%identity"

///|
extern "js" fn drag_event_init_ffi(
  screen_x : JsValue,
  screen_y : JsValue,
  client_x : JsValue,
  client_y : JsValue,
  button : JsValue,
  buttons : JsValue,
  related_target : JsValue,
  data_transfer : JsValue,
) -> DragEventInit =
  #|(screenX, screenY, clientX, clientY, button, buttons, relatedTarget, dataTransfer) => {
  #|  const obj = {};
  #|  if (screenX !== undefined) obj.screenX = screenX;
  #|  if (screenY !== undefined) obj.screenY = screenY;
  #|  if (clientX !== undefined) obj.clientX = clientX;
  #|  if (clientY !== undefined) obj.clientY = clientY;
  #|  if (button !== undefined) obj.button = button;
  #|  if (buttons !== undefined) obj.buttons = buttons;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  if (dataTransfer !== undefined) obj.dataTransfer = dataTransfer;
  #|  return obj;
  #|}

///|
pub fn DragEventInit::new(
  screen_x? : Int = 0,
  screen_y? : Int = 0,
  client_x? : Int = 0,
  client_y? : Int = 0,
  button? : Int = 0,
  buttons? : UInt = 0,
  related_target? : &TEventTarget = JsValue::null(),
  data_transfer? : &TDataTransfer = JsValue::null(),
) -> DragEventInit {
  drag_event_init_ffi(
    TJsValue::to_js(screen_x),
    TJsValue::to_js(screen_y),
    TJsValue::to_js(client_x),
    TJsValue::to_js(client_y),
    TJsValue::to_js(button),
    TJsValue::to_js(buttons),
    TJsValue::to_js(related_target),
    TJsValue::to_js(data_transfer),
  )
}

///|
extern "js" fn drag_event_init_empty_ffi() -> DragEventInit = "() => {}"

///|
pub fn DragEventInit::empty() -> DragEventInit {
  drag_event_init_empty_ffi()
}
