// Do not edit. This file is generated.
// MoonBit type: SubmitEvent
// Specifications: html.idl

///|
/// [SubmitEvent](https://developer.mozilla.org/en-US/docs/Web/API/SubmitEvent)
#external
pub type SubmitEvent

///|
pub impl TJsValue for SubmitEvent with to_js(self : SubmitEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for SubmitEvent with from_js_any(value : JsAny) -> SubmitEvent = "%identity"

///|
pub fn[T : TSubmitEvent] SubmitEvent::into(self : SubmitEvent) -> T = "%identity"

///|
pub impl TSubmitEvent for SubmitEvent

///|
pub impl TEvent for SubmitEvent

///|
pub fn SubmitEvent::new(
  type_ : String,
  event_init_dict? : SubmitEventInit,
) -> SubmitEvent {
  submit_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [SubmitEvent](https://developer.mozilla.org/en-US/docs/Web/API/SubmitEvent) interface.
pub trait TSubmitEvent: TEvent {
  submitter(self : Self) -> HTMLElement = _
}

///|
/// [SubmitEvent.submitter](https://developer.mozilla.org/en-US/docs/Web/API/SubmitEvent/submitter)
impl TSubmitEvent with submitter(self : Self) -> HTMLElement {
  submit_event_submitter_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn submit_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> SubmitEvent = "(type_, event_init_dict) => new SubmitEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn submit_event_submitter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.submitter"

///|
#cfg(target="js")
fn submit_event_submitter_ffi(obj : JsValue) -> HTMLElement {
  submit_event_submitter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn submit_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> SubmitEvent = "webapi_SubmitEvent" "new"

///|
#cfg(target="wasm-gc")
fn submit_event_submitter_ffi(obj : JsValue) -> HTMLElement = "webapi_SubmitEvent" "get_submitter"
