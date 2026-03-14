// Do not edit. This file is generated.
// MoonBit type: ToggleEvent
// Specifications: html.idl

///|
/// [ToggleEvent](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent)
#external
pub type ToggleEvent

///|
pub impl TJsValue for ToggleEvent with to_js(self : ToggleEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for ToggleEvent with from_js_any(value : JsAny) -> ToggleEvent = "%identity"

///|
pub fn[T : TToggleEvent] ToggleEvent::into(self : ToggleEvent) -> T = "%identity"

///|
pub impl TToggleEvent for ToggleEvent

///|
pub impl TEvent for ToggleEvent

///|
pub fn ToggleEvent::new(
  type_ : String,
  event_init_dict? : ToggleEventInit,
) -> ToggleEvent {
  toggle_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [ToggleEvent](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent) interface.
pub trait TToggleEvent: TEvent {
  old_state(self : Self) -> String = _
  new_state(self : Self) -> String = _
  source(self : Self) -> Element = _
}

///|
/// [ToggleEvent.oldState](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent/oldState)
impl TToggleEvent with old_state(self : Self) -> String {
  toggle_event_old_state_ffi(TJsValue::to_js(self))
}

///|
/// [ToggleEvent.newState](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent/newState)
impl TToggleEvent with new_state(self : Self) -> String {
  toggle_event_new_state_ffi(TJsValue::to_js(self))
}

///|
/// [ToggleEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent/source)
impl TToggleEvent with source(self : Self) -> Element {
  toggle_event_source_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn toggle_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ToggleEvent = "(type_, event_init_dict) => new ToggleEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn toggle_event_old_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oldState"

///|
#cfg(target="js")
fn toggle_event_old_state_ffi(obj : JsValue) -> String {
  toggle_event_old_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn toggle_event_new_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.newState"

///|
#cfg(target="js")
fn toggle_event_new_state_ffi(obj : JsValue) -> String {
  toggle_event_new_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn toggle_event_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn toggle_event_source_ffi(obj : JsValue) -> Element {
  toggle_event_source_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn toggle_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ToggleEvent = "webapi_ToggleEvent" "new"

///|
#cfg(target="wasm-gc")
fn toggle_event_old_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ToggleEvent" "get_oldState"

///|
#cfg(target="wasm-gc")
fn toggle_event_old_state_ffi(obj : JsValue) -> String {
  jsvalue_to_string(toggle_event_old_state_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn toggle_event_new_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ToggleEvent" "get_newState"

///|
#cfg(target="wasm-gc")
fn toggle_event_new_state_ffi(obj : JsValue) -> String {
  jsvalue_to_string(toggle_event_new_state_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn toggle_event_source_ffi(obj : JsValue) -> Element = "webapi_ToggleEvent" "get_source"
