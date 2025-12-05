// Auto-generated MoonBit bindings for MouseEvent

// Do not edit manually

///|
#external
pub type MouseEvent

///|
pub trait TMouseEvent: TJsValue + TUIEvent {
  page_x(self : Self) -> Double = _
  page_y(self : Self) -> Double = _
  x(self : Self) -> Double = _
  y(self : Self) -> Double = _
  offset_x(self : Self) -> Double = _
  offset_y(self : Self) -> Double = _
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
  related_target(self : Self) -> EventTarget? = _
  get_modifier_state(self : Self, key_arg : String) -> Bool = _
  init_mouse_event(
    self : Self,
    type_arg : String,
    bubbles_arg? : Bool,
    cancelable_arg? : Bool,
    view_arg? : Window,
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
    related_target_arg? : EventTarget,
  ) -> Unit = _
}

///|
pub fn[T : TMouseEvent] MouseEvent::into(self : MouseEvent) -> T = "%identity"

///|
pub impl TEvent for MouseEvent

///|
pub impl TUIEvent for MouseEvent

///|
pub impl TMouseEvent for MouseEvent

///|
pub impl TJsValue for MouseEvent with to_js(self : MouseEvent) -> JsValue = "%identity"

///|
pub fn MouseEvent::null() -> MouseEvent {
  JsValue::null()
}

///|
fn mouse_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MouseEvent = "webapi_MouseEvent" "new"

///|
pub fn MouseEvent::new(
  type_ : String,
  event_init_dict? : MouseEventInit = MouseEventInit::empty(),
) -> MouseEvent {
  mouse_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn mouse_event_get_modifier_state_ffi(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "webapi_MouseEvent" "getModifierState"

///|
impl TMouseEvent with get_modifier_state(self : Self, key_arg : String) -> Bool {
  mouse_event_get_modifier_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key_arg),
  ).unsafe_cast()
}

///|
fn mouse_event_init_mouse_event_ffi(
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
) -> Unit = "webapi_MouseEvent" "initMouseEvent"

///|
impl TMouseEvent with init_mouse_event(
  self : Self,
  type_arg : String,
  bubbles_arg? : Bool,
  cancelable_arg? : Bool,
  view_arg? : Window,
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
  related_target_arg? : EventTarget,
) -> Unit {
  let bubbles_arg_js = opt_to_js(bubbles_arg)
  let cancelable_arg_js = opt_to_js(cancelable_arg)
  let view_arg_js = opt_to_js(view_arg)
  let detail_arg_js = opt_to_js(detail_arg)
  let screen_x_arg_js = opt_to_js(screen_x_arg)
  let screen_y_arg_js = opt_to_js(screen_y_arg)
  let client_x_arg_js = opt_to_js(client_x_arg)
  let client_y_arg_js = opt_to_js(client_y_arg)
  let ctrl_key_arg_js = opt_to_js(ctrl_key_arg)
  let alt_key_arg_js = opt_to_js(alt_key_arg)
  let shift_key_arg_js = opt_to_js(shift_key_arg)
  let meta_key_arg_js = opt_to_js(meta_key_arg)
  let button_arg_js = opt_to_js(button_arg)
  let related_target_arg_js = opt_to_js(related_target_arg)
  mouse_event_init_mouse_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_arg),
    bubbles_arg_js,
    cancelable_arg_js,
    view_arg_js,
    detail_arg_js,
    screen_x_arg_js,
    screen_y_arg_js,
    client_x_arg_js,
    client_y_arg_js,
    ctrl_key_arg_js,
    alt_key_arg_js,
    shift_key_arg_js,
    meta_key_arg_js,
    button_arg_js,
    related_target_arg_js,
  )
}

///|
fn mouse_event_page_x_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "pageX"

///|
impl TMouseEvent with page_x(self : Self) -> Double {
  mouse_event_page_x_ffi(self.to_js())
}

///|
fn mouse_event_page_y_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "pageY"

///|
impl TMouseEvent with page_y(self : Self) -> Double {
  mouse_event_page_y_ffi(self.to_js())
}

///|
fn mouse_event_x_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "x"

///|
impl TMouseEvent with x(self : Self) -> Double {
  mouse_event_x_ffi(self.to_js())
}

///|
fn mouse_event_y_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "y"

///|
impl TMouseEvent with y(self : Self) -> Double {
  mouse_event_y_ffi(self.to_js())
}

///|
fn mouse_event_offset_x_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "offsetX"

///|
impl TMouseEvent with offset_x(self : Self) -> Double {
  mouse_event_offset_x_ffi(self.to_js())
}

///|
fn mouse_event_offset_y_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "offsetY"

///|
impl TMouseEvent with offset_y(self : Self) -> Double {
  mouse_event_offset_y_ffi(self.to_js())
}

///|
fn mouse_event_screen_x_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "screenX"

///|
impl TMouseEvent with screen_x(self : Self) -> Int {
  mouse_event_screen_x_ffi(self.to_js())
}

///|
fn mouse_event_screen_y_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "screenY"

///|
impl TMouseEvent with screen_y(self : Self) -> Int {
  mouse_event_screen_y_ffi(self.to_js())
}

///|
fn mouse_event_client_x_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "clientX"

///|
impl TMouseEvent with client_x(self : Self) -> Int {
  mouse_event_client_x_ffi(self.to_js())
}

///|
fn mouse_event_client_y_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "clientY"

///|
impl TMouseEvent with client_y(self : Self) -> Int {
  mouse_event_client_y_ffi(self.to_js())
}

///|
fn mouse_event_layer_x_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "layerX"

///|
impl TMouseEvent with layer_x(self : Self) -> Int {
  mouse_event_layer_x_ffi(self.to_js())
}

///|
fn mouse_event_layer_y_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "layerY"

///|
impl TMouseEvent with layer_y(self : Self) -> Int {
  mouse_event_layer_y_ffi(self.to_js())
}

///|
fn mouse_event_ctrl_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "ctrlKey"

///|
impl TMouseEvent with ctrl_key(self : Self) -> Bool {
  mouse_event_ctrl_key_ffi(self.to_js())
}

///|
fn mouse_event_shift_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "shiftKey"

///|
impl TMouseEvent with shift_key(self : Self) -> Bool {
  mouse_event_shift_key_ffi(self.to_js())
}

///|
fn mouse_event_alt_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "altKey"

///|
impl TMouseEvent with alt_key(self : Self) -> Bool {
  mouse_event_alt_key_ffi(self.to_js())
}

///|
fn mouse_event_meta_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "metaKey"

///|
impl TMouseEvent with meta_key(self : Self) -> Bool {
  mouse_event_meta_key_ffi(self.to_js())
}

///|
fn mouse_event_button_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "button"

///|
impl TMouseEvent with button(self : Self) -> Int {
  mouse_event_button_ffi(self.to_js())
}

///|
fn mouse_event_buttons_ffi(obj : JsValue) -> UInt = "webapi_MouseEvent" "buttons"

///|
impl TMouseEvent with buttons(self : Self) -> UInt {
  mouse_event_buttons_ffi(self.to_js())
}

///|
fn mouse_event_related_target_ffi(obj : JsValue) -> JsValue = "webapi_MouseEvent" "relatedTarget"

///|
impl TMouseEvent with related_target(self : Self) -> EventTarget? {
  mouse_event_related_target_ffi(self.to_js()).as_option()
}
