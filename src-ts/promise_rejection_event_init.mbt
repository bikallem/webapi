// Auto-generated MoonBit bindings for PromiseRejectionEventInit dictionary

// Do not edit manually

///|
#external
pub type PromiseRejectionEventInit

///|
pub impl TJsValue for PromiseRejectionEventInit with to_js(self : PromiseRejectionEventInit) -> JsValue = "%identity"

///|
fn promise_rejection_event_init_ffi(promise : JsValue, reason : JsValue) -> PromiseRejectionEventInit = "webapi_PromiseRejectionEventInit" "new"

///|
pub fn PromiseRejectionEventInit::new(
  promise : JsValue,
  reason? : JsValue
) -> PromiseRejectionEventInit {
  let reason_js = opt_to_js(reason)
  promise_rejection_event_init_ffi(promise, reason_js)
}

///|
pub fn PromiseRejectionEventInit::empty() -> PromiseRejectionEventInit = "webapi_Dictionary" "empty"