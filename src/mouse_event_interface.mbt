// Do not edit. This file is generated.
// MoonBit type: MouseEvent
// Specifications: uievents.idl, cssom-view.idl

///|
/// [MouseEvent](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent)
#external
pub type MouseEvent

///|
pub impl TJsValue for MouseEvent with to_js(self : MouseEvent) -> JsValue = "%identity"

///|
pub fn[T : TMouseEvent] MouseEvent::into(self : MouseEvent) -> T = "%identity"

///|
pub impl TMouseEvent for MouseEvent

///|
pub impl TUIEvent for MouseEvent

///|
pub impl TEvent for MouseEvent

///|
pub fn MouseEvent::new(
  type_ : String,
  event_init_dict? : MouseEventInit = MouseEventInit::empty(),
) -> MouseEvent {
  mouse_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
/// [MouseEvent](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent) interface.
pub trait TMouseEvent: TUIEvent {
  screen_x(self : Self) -> Int = _
  screen_y(self : Self) -> Int = _
  client_x(self : Self) -> Int = _
  client_y(self : Self) -> Int = _
  layer_x(self : Self) -> Int = _
  layer_y(self : Self) -> Int = _
  ctrl_key(self : Self) -> Bool = _
  shift_key(self : Self) -> Bool = _
  alt_key(self : Self) -> Bool = _
  meta_key(self : Self) -> Bool = _
  button(self : Self) -> Int = _
  buttons(self : Self) -> UInt = _
  related_target(self : Self) -> EventTarget = _
  get_modifier_state(self : Self, key_arg : String) -> Bool = _
  init_mouse_event(
    self : Self,
    type_arg : String,
    bubbles_arg? : Bool,
    cancelable_arg? : Bool,
    view_arg? : &TWindow,
    detail_arg? : Int,
    screen_x_arg? : Int,
    screen_y_arg? : Int,
    client_x_arg? : Int,
    client_y_arg? : Int,
    ctrl_key_arg? : Bool,
    alt_key_arg? : Bool,
    shift_key_arg? : Bool,
    meta_key_arg? : Bool,
    button_arg? : Int,
    related_target_arg? : &TEventTarget,
  ) -> Unit = _
  page_x(self : Self) -> Double = _
  page_y(self : Self) -> Double = _
  x(self : Self) -> Double = _
  y(self : Self) -> Double = _
  offset_x(self : Self) -> Double = _
  offset_y(self : Self) -> Double = _
}

///|
/// [MouseEvent.screenX](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/screenX)
impl TMouseEvent with screen_x(self : Self) -> Int {
  mouse_event_screen_x_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.screenY](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/screenY)
impl TMouseEvent with screen_y(self : Self) -> Int {
  mouse_event_screen_y_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.clientX](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/clientX)
impl TMouseEvent with client_x(self : Self) -> Int {
  mouse_event_client_x_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.clientY](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/clientY)
impl TMouseEvent with client_y(self : Self) -> Int {
  mouse_event_client_y_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.layerX](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/layerX)
impl TMouseEvent with layer_x(self : Self) -> Int {
  mouse_event_layer_x_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.layerY](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/layerY)
impl TMouseEvent with layer_y(self : Self) -> Int {
  mouse_event_layer_y_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.ctrlKey](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/ctrlKey)
impl TMouseEvent with ctrl_key(self : Self) -> Bool {
  mouse_event_ctrl_key_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.shiftKey](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/shiftKey)
impl TMouseEvent with shift_key(self : Self) -> Bool {
  mouse_event_shift_key_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.altKey](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/altKey)
impl TMouseEvent with alt_key(self : Self) -> Bool {
  mouse_event_alt_key_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.metaKey](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/metaKey)
impl TMouseEvent with meta_key(self : Self) -> Bool {
  mouse_event_meta_key_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.button](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/button)
impl TMouseEvent with button(self : Self) -> Int {
  mouse_event_button_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.buttons](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/buttons)
impl TMouseEvent with buttons(self : Self) -> UInt {
  mouse_event_buttons_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.relatedTarget](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/relatedTarget)
impl TMouseEvent with related_target(self : Self) -> EventTarget {
  mouse_event_related_target_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.getModifierState](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/getModifierState)
impl TMouseEvent with get_modifier_state(self : Self, key_arg : String) -> Bool {
  mouse_event_get_modifier_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key_arg),
  )
}

///|
/// [MouseEvent.initMouseEvent](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/initMouseEvent)
impl TMouseEvent with init_mouse_event(
  self : Self,
  type_arg : String,
  bubbles_arg? : Bool = false,
  cancelable_arg? : Bool = false,
  view_arg? : &TWindow = JsValue::null(),
  detail_arg? : Int = (0 : Int),
  screen_x_arg? : Int = (0 : Int),
  screen_y_arg? : Int = (0 : Int),
  client_x_arg? : Int = (0 : Int),
  client_y_arg? : Int = (0 : Int),
  ctrl_key_arg? : Bool = false,
  alt_key_arg? : Bool = false,
  shift_key_arg? : Bool = false,
  meta_key_arg? : Bool = false,
  button_arg? : Int = (0 : Int),
  related_target_arg? : &TEventTarget = JsValue::null(),
) -> Unit {
  mouse_event_init_mouse_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_arg),
    TJsValue::to_js(bubbles_arg),
    TJsValue::to_js(cancelable_arg),
    TJsValue::to_js(view_arg),
    TJsValue::to_js(detail_arg),
    TJsValue::to_js(screen_x_arg),
    TJsValue::to_js(screen_y_arg),
    TJsValue::to_js(client_x_arg),
    TJsValue::to_js(client_y_arg),
    TJsValue::to_js(ctrl_key_arg),
    TJsValue::to_js(alt_key_arg),
    TJsValue::to_js(shift_key_arg),
    TJsValue::to_js(meta_key_arg),
    TJsValue::to_js(button_arg),
    TJsValue::to_js(related_target_arg),
  )
}

///|
/// [MouseEvent.pageX](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/pageX)
impl TMouseEvent with page_x(self : Self) -> Double {
  mouse_event_page_x_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.pageY](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/pageY)
impl TMouseEvent with page_y(self : Self) -> Double {
  mouse_event_page_y_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.x](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/x)
impl TMouseEvent with x(self : Self) -> Double {
  mouse_event_x_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.y](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/y)
impl TMouseEvent with y(self : Self) -> Double {
  mouse_event_y_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.offsetX](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/offsetX)
impl TMouseEvent with offset_x(self : Self) -> Double {
  mouse_event_offset_x_ffi(TJsValue::to_js(self))
}

///|
/// [MouseEvent.offsetY](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/offsetY)
impl TMouseEvent with offset_y(self : Self) -> Double {
  mouse_event_offset_y_ffi(TJsValue::to_js(self))
}
