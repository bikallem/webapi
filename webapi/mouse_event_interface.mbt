// Do not edit. This file is generated.
// MoonBit type: MouseEvent
// Specifications: pointerevents.idl, cssom-view.idl

///|
/// [MouseEvent](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent)
#external
pub type MouseEvent

///|
pub impl TJsValue for MouseEvent with to_js(self : MouseEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for MouseEvent with from_js_any(value : JsAny) -> MouseEvent = "%identity"

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
  event_init_dict? : MouseEventInit,
) -> MouseEvent {
  mouse_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [MouseEvent](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent) interface.
pub trait TMouseEvent: TUIEvent {
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
) -> Unit {
  mouse_event_init_mouse_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_arg),
    opt_to_js(bubbles_arg),
    opt_to_js(cancelable_arg),
    opt_to_js(view_arg),
    opt_to_js(detail_arg),
    opt_to_js(screen_x_arg),
    opt_to_js(screen_y_arg),
    opt_to_js(client_x_arg),
    opt_to_js(client_y_arg),
    opt_to_js(ctrl_key_arg),
    opt_to_js(alt_key_arg),
    opt_to_js(shift_key_arg),
    opt_to_js(meta_key_arg),
    opt_to_js(button_arg),
    opt_to_js(related_target_arg),
  )
}

///|
#cfg(target="js")
extern "js" fn mouse_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MouseEvent = "(type_, event_init_dict) => new MouseEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn mouse_event_page_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageX"

///|
#cfg(target="js")
fn mouse_event_page_x_ffi(obj : JsValue) -> Double {
  mouse_event_page_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_page_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pageY"

///|
#cfg(target="js")
fn mouse_event_page_y_ffi(obj : JsValue) -> Double {
  mouse_event_page_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn mouse_event_x_ffi(obj : JsValue) -> Double {
  mouse_event_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn mouse_event_y_ffi(obj : JsValue) -> Double {
  mouse_event_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_offset_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetX"

///|
#cfg(target="js")
fn mouse_event_offset_x_ffi(obj : JsValue) -> Double {
  mouse_event_offset_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_offset_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offsetY"

///|
#cfg(target="js")
fn mouse_event_offset_y_ffi(obj : JsValue) -> Double {
  mouse_event_offset_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_screen_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenX"

///|
#cfg(target="js")
fn mouse_event_screen_x_ffi(obj : JsValue) -> Int {
  mouse_event_screen_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_screen_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.screenY"

///|
#cfg(target="js")
fn mouse_event_screen_y_ffi(obj : JsValue) -> Int {
  mouse_event_screen_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_client_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientX"

///|
#cfg(target="js")
fn mouse_event_client_x_ffi(obj : JsValue) -> Int {
  mouse_event_client_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_client_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clientY"

///|
#cfg(target="js")
fn mouse_event_client_y_ffi(obj : JsValue) -> Int {
  mouse_event_client_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_layer_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.layerX"

///|
#cfg(target="js")
fn mouse_event_layer_x_ffi(obj : JsValue) -> Int {
  mouse_event_layer_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_layer_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.layerY"

///|
#cfg(target="js")
fn mouse_event_layer_y_ffi(obj : JsValue) -> Int {
  mouse_event_layer_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_ctrl_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
#cfg(target="js")
fn mouse_event_ctrl_key_ffi(obj : JsValue) -> Bool {
  mouse_event_ctrl_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_shift_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
#cfg(target="js")
fn mouse_event_shift_key_ffi(obj : JsValue) -> Bool {
  mouse_event_shift_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_alt_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
#cfg(target="js")
fn mouse_event_alt_key_ffi(obj : JsValue) -> Bool {
  mouse_event_alt_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_meta_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
#cfg(target="js")
fn mouse_event_meta_key_ffi(obj : JsValue) -> Bool {
  mouse_event_meta_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_button_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.button"

///|
#cfg(target="js")
fn mouse_event_button_ffi(obj : JsValue) -> Int {
  mouse_event_button_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_buttons_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.buttons"

///|
#cfg(target="js")
fn mouse_event_buttons_ffi(obj : JsValue) -> UInt {
  mouse_event_buttons_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_related_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.relatedTarget"

///|
#cfg(target="js")
fn mouse_event_related_target_ffi(obj : JsValue) -> EventTarget {
  mouse_event_related_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mouse_event_get_modifier_state_ffi_js(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "(obj, key_arg) => obj.getModifierState(key_arg)"

///|
#cfg(target="js")
fn mouse_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool {
  mouse_event_get_modifier_state_ffi_js(obj, key_arg).unsafe_cast()
}

///|
#cfg(target="js")
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
#cfg(target="wasm-gc")
fn mouse_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MouseEvent = "webapi_MouseEvent" "new"

///|
#cfg(target="wasm-gc")
fn mouse_event_page_x_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "get_pageX"

///|
#cfg(target="wasm-gc")
fn mouse_event_page_y_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "get_pageY"

///|
#cfg(target="wasm-gc")
fn mouse_event_x_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "get_x"

///|
#cfg(target="wasm-gc")
fn mouse_event_y_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "get_y"

///|
#cfg(target="wasm-gc")
fn mouse_event_offset_x_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "get_offsetX"

///|
#cfg(target="wasm-gc")
fn mouse_event_offset_y_ffi(obj : JsValue) -> Double = "webapi_MouseEvent" "get_offsetY"

///|
#cfg(target="wasm-gc")
fn mouse_event_screen_x_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_screenX"

///|
#cfg(target="wasm-gc")
fn mouse_event_screen_y_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_screenY"

///|
#cfg(target="wasm-gc")
fn mouse_event_client_x_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_clientX"

///|
#cfg(target="wasm-gc")
fn mouse_event_client_y_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_clientY"

///|
#cfg(target="wasm-gc")
fn mouse_event_layer_x_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_layerX"

///|
#cfg(target="wasm-gc")
fn mouse_event_layer_y_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_layerY"

///|
#cfg(target="wasm-gc")
fn mouse_event_ctrl_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "get_ctrlKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_shift_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "get_shiftKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_alt_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "get_altKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_meta_key_ffi(obj : JsValue) -> Bool = "webapi_MouseEvent" "get_metaKey"

///|
#cfg(target="wasm-gc")
fn mouse_event_button_ffi(obj : JsValue) -> Int = "webapi_MouseEvent" "get_button"

///|
#cfg(target="wasm-gc")
fn mouse_event_buttons_ffi(obj : JsValue) -> UInt = "webapi_MouseEvent" "get_buttons"

///|
#cfg(target="wasm-gc")
fn mouse_event_related_target_ffi(obj : JsValue) -> EventTarget = "webapi_MouseEvent" "get_relatedTarget"

///|
#cfg(target="wasm-gc")
fn mouse_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool = "webapi_MouseEvent" "getModifierState"

///|
#cfg(target="wasm-gc")
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
