// Do not edit. This file is generated.
// MoonBit type: PromiseRejectionEventInit
// Specifications: html.idl, dom.idl

///|
/// [PromiseRejectionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEventInit)
#external
pub type PromiseRejectionEventInit

///|
pub impl TJsValue for PromiseRejectionEventInit with to_js(
  self : PromiseRejectionEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PromiseRejectionEventInit with from_js_any(value : JsAny) -> PromiseRejectionEventInit = "%identity"

///|
pub fn PromiseRejectionEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  promise : JsValue,
  reason? : JsValue,
) -> PromiseRejectionEventInit {
  promise_rejection_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    TJsValue::to_js(promise),
    opt_to_js(reason),
  )
}

///|
pub fn PromiseRejectionEventInit::empty() -> PromiseRejectionEventInit {
  promise_rejection_event_init_empty_ffi()
}

///|
pub fn PromiseRejectionEventInit::bubbles(
  self : PromiseRejectionEventInit,
) -> Bool? {
  promise_rejection_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PromiseRejectionEventInit::cancelable(
  self : PromiseRejectionEventInit,
) -> Bool? {
  promise_rejection_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PromiseRejectionEventInit::composed(
  self : PromiseRejectionEventInit,
) -> Bool? {
  promise_rejection_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PromiseRejectionEventInit::promise(
  self : PromiseRejectionEventInit,
) -> JsValue {
  promise_rejection_event_init_get_promise_ffi(TJsValue::to_js(self))
}

///|
pub fn PromiseRejectionEventInit::reason(
  self : PromiseRejectionEventInit,
) -> JsValue? {
  promise_rejection_event_init_get_reason_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  promise : JsValue,
  reason : JsValue,
) -> PromiseRejectionEventInit =
  #|(bubbles, cancelable, composed, promise, reason) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (promise !== undefined) obj.promise = promise;
  #|  if (reason !== undefined) obj.reason = reason;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_empty_ffi() -> PromiseRejectionEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_get_promise_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.promise"

///|
#cfg(target="js")
fn promise_rejection_event_init_get_promise_ffi(obj : JsValue) -> JsValue {
  promise_rejection_event_init_get_promise_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn promise_rejection_event_init_get_reason_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reason"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  promise : JsValue,
  reason : JsValue,
) -> PromiseRejectionEventInit = "webapi_PromiseRejectionEventInit" "new"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_empty_ffi() -> PromiseRejectionEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_get_promise_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_promise"

///|
#cfg(target="wasm-gc")
fn promise_rejection_event_init_get_reason_ffi(obj : JsValue) -> JsValue = "webapi_PromiseRejectionEventInit" "get_reason"
