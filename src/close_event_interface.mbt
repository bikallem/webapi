// Do not edit. This file is generated.
// MoonBit type: CloseEvent
// Specifications: websockets.idl

///|
/// [CloseEvent](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent)
#external
pub type CloseEvent

///|
pub impl TJsValue for CloseEvent with to_js(self : CloseEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for CloseEvent with from_js_any(value : JsAny) -> CloseEvent = "%identity"

///|
pub fn[T : TCloseEvent] CloseEvent::into(self : CloseEvent) -> T = "%identity"

///|
pub impl TCloseEvent for CloseEvent

///|
pub impl TEvent for CloseEvent

///|
pub fn CloseEvent::new(
  type_ : String,
  event_init_dict? : CloseEventInit,
) -> CloseEvent {
  close_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [CloseEvent](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent) interface.
pub trait TCloseEvent: TEvent {
  was_clean(self : Self) -> Bool = _
  code(self : Self) -> UInt = _
  reason(self : Self) -> String = _
}

///|
/// [CloseEvent.wasClean](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent/wasClean)
impl TCloseEvent with was_clean(self : Self) -> Bool {
  close_event_was_clean_ffi(TJsValue::to_js(self))
}

///|
/// [CloseEvent.code](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent/code)
impl TCloseEvent with code(self : Self) -> UInt {
  close_event_code_ffi(TJsValue::to_js(self))
}

///|
/// [CloseEvent.reason](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent/reason)
impl TCloseEvent with reason(self : Self) -> String {
  close_event_reason_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn close_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CloseEvent = "(type_, event_init_dict) => new CloseEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn close_event_was_clean_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.wasClean"

///|
#cfg(target="js")
fn close_event_was_clean_ffi(obj : JsValue) -> Bool {
  close_event_was_clean_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn close_event_code_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
#cfg(target="js")
fn close_event_code_ffi(obj : JsValue) -> UInt {
  close_event_code_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn close_event_reason_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
#cfg(target="js")
fn close_event_reason_ffi(obj : JsValue) -> String {
  close_event_reason_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn close_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CloseEvent = "webapi_CloseEvent" "new"

///|
#cfg(target="wasm-gc")
fn close_event_was_clean_ffi(obj : JsValue) -> Bool = "webapi_CloseEvent" "get_wasClean"

///|
#cfg(target="wasm-gc")
fn close_event_code_ffi(obj : JsValue) -> UInt = "webapi_CloseEvent" "get_code"

///|
#cfg(target="wasm-gc")
fn close_event_reason_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CloseEvent" "get_reason"

///|
#cfg(target="wasm-gc")
fn close_event_reason_ffi(obj : JsValue) -> String {
  jsvalue_to_string(close_event_reason_ffi_wasm(obj))
}
