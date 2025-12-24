///|
#external
pub type PromiseRejectionEvent

///|
pub impl TJsValue for PromiseRejectionEvent with to_js(
  self : PromiseRejectionEvent,
) -> JsValue = "%identity"

///|
pub fn[T : TPromiseRejectionEvent] PromiseRejectionEvent::into(
  self : PromiseRejectionEvent,
) -> T = "%identity"

///|
pub impl TPromiseRejectionEvent for PromiseRejectionEvent

///|
pub impl TEvent for PromiseRejectionEvent

///|
extern "js" fn promise_rejection_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PromiseRejectionEvent = "(type_, event_init_dict) => new PromiseRejectionEvent(type_, event_init_dict)"

///|
pub fn PromiseRejectionEvent::new(
  type_ : String,
  event_init_dict : PromiseRejectionEventInit,
) -> PromiseRejectionEvent {
  promise_rejection_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TPromiseRejectionEvent: TEvent {
  promise(self : Self) -> JsValue = _
  reason(self : Self) -> JsValue = _
}

///|
extern "js" fn promise_rejection_event_promise_ffi(obj : JsValue) -> JsValue = "(obj) => obj.promise"

///|
impl TPromiseRejectionEvent with promise(self : Self) -> JsValue {
  promise_rejection_event_promise_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn promise_rejection_event_reason_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
impl TPromiseRejectionEvent with reason(self : Self) -> JsValue {
  promise_rejection_event_reason_ffi(TJsValue::to_js(self))
}
