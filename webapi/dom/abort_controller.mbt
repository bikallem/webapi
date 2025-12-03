// Auto-generated MoonBit bindings for AbortController

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=*]
// interface AbortController {
//   constructor();
// 
//   [SameObject] readonly attribute AbortSignal signal;
// 
//   undefined abort(optional any reason);
// };

///|
#external
pub type AbortController

///|
pub trait TAbortController: TJsValue {
  signal(self : Self) -> AbortSignal = _
  abort(self : Self, reason? : JsValue) -> Unit = _
}

///|
pub impl TAbortController for AbortController

///|
pub impl TJsValue for AbortController with to_js(self : AbortController) -> JsValue = "%identity"

///|
pub fn AbortController::null() -> AbortController = "JsValue" "null"

///|
pub fn AbortController::is_null(self : AbortController) -> Bool = "JsValue" "isNull"

///|
pub fn AbortController::new() -> AbortController = "webapi_AbortController" "new"

///|
fn abort_controller_abort_ffi(obj : JsValue, reason : JsValue) -> Unit = "webapi_AbortController" "abort"

///|
impl TAbortController with abort(self : Self, reason? : JsValue) -> Unit {
  let reason_js = opt_to_js(reason)
  abort_controller_abort_ffi(TJsValue::to_js(self), reason_js)
}

///|
fn abort_controller_signal_ffi(obj : JsValue) -> JsValue = "webapi_AbortController" "signal"

///|
impl TAbortController with signal(self : Self) -> AbortSignal {
  abort_controller_signal_ffi(self.to_js()).unsafe_cast()
}
