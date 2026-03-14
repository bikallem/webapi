// Do not edit. This file is generated.
// MoonBit type: TouchEvent
// Specifications: touch-events.idl

///|
/// [TouchEvent](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent)
#external
pub type TouchEvent

///|
pub impl TJsValue for TouchEvent with to_js(self : TouchEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for TouchEvent with from_js_any(value : JsAny) -> TouchEvent = "%identity"

///|
pub fn[T : TTouchEvent] TouchEvent::into(self : TouchEvent) -> T = "%identity"

///|
pub impl TTouchEvent for TouchEvent

///|
pub impl TUIEvent for TouchEvent

///|
pub impl TEvent for TouchEvent

///|
pub fn TouchEvent::new(
  type_ : String,
  event_init_dict? : TouchEventInit,
) -> TouchEvent {
  touch_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [TouchEvent](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent) interface.
pub trait TTouchEvent: TUIEvent {
  touches(self : Self) -> TouchList = _
  target_touches(self : Self) -> TouchList = _
  changed_touches(self : Self) -> TouchList = _
  alt_key(self : Self) -> Bool = _
  meta_key(self : Self) -> Bool = _
  ctrl_key(self : Self) -> Bool = _
  shift_key(self : Self) -> Bool = _
  get_modifier_state(self : Self, key_arg : String) -> Bool = _
}

///|
/// [TouchEvent.touches](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/touches)
impl TTouchEvent with touches(self : Self) -> TouchList {
  touch_event_touches_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.targetTouches](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/targetTouches)
impl TTouchEvent with target_touches(self : Self) -> TouchList {
  touch_event_target_touches_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.changedTouches](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/changedTouches)
impl TTouchEvent with changed_touches(self : Self) -> TouchList {
  touch_event_changed_touches_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.altKey](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/altKey)
impl TTouchEvent with alt_key(self : Self) -> Bool {
  touch_event_alt_key_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.metaKey](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/metaKey)
impl TTouchEvent with meta_key(self : Self) -> Bool {
  touch_event_meta_key_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.ctrlKey](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/ctrlKey)
impl TTouchEvent with ctrl_key(self : Self) -> Bool {
  touch_event_ctrl_key_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.shiftKey](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/shiftKey)
impl TTouchEvent with shift_key(self : Self) -> Bool {
  touch_event_shift_key_ffi(TJsValue::to_js(self))
}

///|
/// [TouchEvent.getModifierState](https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent/getModifierState)
impl TTouchEvent with get_modifier_state(self : Self, key_arg : String) -> Bool {
  touch_event_get_modifier_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key_arg),
  )
}

///|
#cfg(target="js")
extern "js" fn touch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TouchEvent = "(type_, event_init_dict) => new TouchEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn touch_event_touches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.touches"

///|
#cfg(target="js")
fn touch_event_touches_ffi(obj : JsValue) -> TouchList {
  touch_event_touches_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_target_touches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.targetTouches"

///|
#cfg(target="js")
fn touch_event_target_touches_ffi(obj : JsValue) -> TouchList {
  touch_event_target_touches_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_changed_touches_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.changedTouches"

///|
#cfg(target="js")
fn touch_event_changed_touches_ffi(obj : JsValue) -> TouchList {
  touch_event_changed_touches_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_alt_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.altKey"

///|
#cfg(target="js")
fn touch_event_alt_key_ffi(obj : JsValue) -> Bool {
  touch_event_alt_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_meta_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.metaKey"

///|
#cfg(target="js")
fn touch_event_meta_key_ffi(obj : JsValue) -> Bool {
  touch_event_meta_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_ctrl_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ctrlKey"

///|
#cfg(target="js")
fn touch_event_ctrl_key_ffi(obj : JsValue) -> Bool {
  touch_event_ctrl_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_shift_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.shiftKey"

///|
#cfg(target="js")
fn touch_event_shift_key_ffi(obj : JsValue) -> Bool {
  touch_event_shift_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn touch_event_get_modifier_state_ffi_js(
  obj : JsValue,
  key_arg : JsValue,
) -> JsValue = "(obj, key_arg) => obj.getModifierState(key_arg)"

///|
#cfg(target="js")
fn touch_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool {
  touch_event_get_modifier_state_ffi_js(obj, key_arg).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn touch_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TouchEvent = "webapi_TouchEvent" "new"

///|
#cfg(target="wasm-gc")
fn touch_event_touches_ffi(obj : JsValue) -> TouchList = "webapi_TouchEvent" "get_touches"

///|
#cfg(target="wasm-gc")
fn touch_event_target_touches_ffi(obj : JsValue) -> TouchList = "webapi_TouchEvent" "get_targetTouches"

///|
#cfg(target="wasm-gc")
fn touch_event_changed_touches_ffi(obj : JsValue) -> TouchList = "webapi_TouchEvent" "get_changedTouches"

///|
#cfg(target="wasm-gc")
fn touch_event_alt_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_altKey"

///|
#cfg(target="wasm-gc")
fn touch_event_meta_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_metaKey"

///|
#cfg(target="wasm-gc")
fn touch_event_ctrl_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_ctrlKey"

///|
#cfg(target="wasm-gc")
fn touch_event_shift_key_ffi(obj : JsValue) -> Bool = "webapi_TouchEvent" "get_shiftKey"

///|
#cfg(target="wasm-gc")
fn touch_event_get_modifier_state_ffi(obj : JsValue, key_arg : JsValue) -> Bool = "webapi_TouchEvent" "getModifierState"
