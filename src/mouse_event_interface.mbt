// Do not edit. This file is generated.
// MoonBit type: MouseEvent
// Specifications: uievents.idl, cssom-view.idl

///|
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
extern "js" fn mouse_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MouseEvent = "(type_, event_init_dict) => new MouseEvent(type_, event_init_dict)"

///|
pub fn MouseEvent::new(
  type_ : String,
  event_init_dict? : MouseEventInit = MouseEventInit::empty(),
) -> MouseEvent {
  mouse_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
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
extern "js" fn mouse_event_screen_x_ffi(obj : JsValue) -> Int = "(obj) => obj.screenX"

///|
impl TMouseEvent with screen_x(self : Self) -> Int {
  mouse_event_screen_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_screen_y_ffi(obj : JsValue) -> Int = "(obj) => obj.screenY"

///|
impl TMouseEvent with screen_y(self : Self) -> Int {
  mouse_event_screen_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_client_x_ffi(obj : JsValue) -> Int = "(obj) => obj.clientX"

///|
impl TMouseEvent with client_x(self : Self) -> Int {
  mouse_event_client_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_client_y_ffi(obj : JsValue) -> Int = "(obj) => obj.clientY"

///|
impl TMouseEvent with client_y(self : Self) -> Int {
  mouse_event_client_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_layer_x_ffi(obj : JsValue) -> Int = "(obj) => obj.layerX"

///|
impl TMouseEvent with layer_x(self : Self) -> Int {
  mouse_event_layer_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_layer_y_ffi(obj : JsValue) -> Int = "(obj) => obj.layerY"

///|
impl TMouseEvent with layer_y(self : Self) -> Int {
  mouse_event_layer_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_ctrl_key_ffi(obj : JsValue) -> Bool = "(obj) => obj.ctrlKey"

///|
impl TMouseEvent with ctrl_key(self : Self) -> Bool {
  mouse_event_ctrl_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_shift_key_ffi(obj : JsValue) -> Bool = "(obj) => obj.shiftKey"

///|
impl TMouseEvent with shift_key(self : Self) -> Bool {
  mouse_event_shift_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_alt_key_ffi(obj : JsValue) -> Bool = "(obj) => obj.altKey"

///|
impl TMouseEvent with alt_key(self : Self) -> Bool {
  mouse_event_alt_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_meta_key_ffi(obj : JsValue) -> Bool = "(obj) => obj.metaKey"

///|
impl TMouseEvent with meta_key(self : Self) -> Bool {
  mouse_event_meta_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_button_ffi(obj : JsValue) -> Int = "(obj) => obj.button"

///|
impl TMouseEvent with button(self : Self) -> Int {
  mouse_event_button_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_buttons_ffi(obj : JsValue) -> UInt = "(obj) => obj.buttons"

///|
impl TMouseEvent with buttons(self : Self) -> UInt {
  mouse_event_buttons_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_related_target_ffi(obj : JsValue) -> EventTarget = "(obj) => obj.relatedTarget"

///|
impl TMouseEvent with related_target(self : Self) -> EventTarget {
  mouse_event_related_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_get_modifier_state_ffi(
  obj : JsValue,
  key_arg : JsValue,
) -> Bool = "(obj, key_arg) => obj.getModifierState(key_arg)"

///|
impl TMouseEvent with get_modifier_state(self : Self, key_arg : String) -> Bool {
  mouse_event_get_modifier_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key_arg),
  )
}

///|
extern "js" fn mouse_event_init_mouse_event_ffi(
  obj : JsValue,
  type_arg : JsValue,
  bubbles_arg : JsValue,
  cancelable_arg : JsValue,
  view_arg : JsValue,
  detail_arg : JsValue,
  screen_x_arg : JsValue,
  screen_y_arg : JsValue,
  client_x_arg : JsValue,
  client_y_arg : JsValue,
  ctrl_key_arg : JsValue,
  alt_key_arg : JsValue,
  shift_key_arg : JsValue,
  meta_key_arg : JsValue,
  button_arg : JsValue,
  related_target_arg : JsValue,
) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => obj.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)"

///|
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
extern "js" fn mouse_event_page_x_ffi(obj : JsValue) -> Double = "(obj) => obj.pageX"

///|
impl TMouseEvent with page_x(self : Self) -> Double {
  mouse_event_page_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_page_y_ffi(obj : JsValue) -> Double = "(obj) => obj.pageY"

///|
impl TMouseEvent with page_y(self : Self) -> Double {
  mouse_event_page_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_x_ffi(obj : JsValue) -> Double = "(obj) => obj.x"

///|
impl TMouseEvent with x(self : Self) -> Double {
  mouse_event_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_y_ffi(obj : JsValue) -> Double = "(obj) => obj.y"

///|
impl TMouseEvent with y(self : Self) -> Double {
  mouse_event_y_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_offset_x_ffi(obj : JsValue) -> Double = "(obj) => obj.offsetX"

///|
impl TMouseEvent with offset_x(self : Self) -> Double {
  mouse_event_offset_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn mouse_event_offset_y_ffi(obj : JsValue) -> Double = "(obj) => obj.offsetY"

///|
impl TMouseEvent with offset_y(self : Self) -> Double {
  mouse_event_offset_y_ffi(TJsValue::to_js(self))
}
