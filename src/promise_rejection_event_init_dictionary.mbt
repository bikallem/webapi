// Auto-generated MoonBit bindings for PromiseRejectionEventInit dictionary
// Do not edit manually

#external
pub type PromiseRejectionEventInit

pub impl TJsValue for PromiseRejectionEventInit with to_js(self: PromiseRejectionEventInit) -> JsValue = "%identity"


fn promise_rejection_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, promise : JsValue, reason : JsValue) -> PromiseRejectionEventInit = "webapi_PromiseRejectionEventInit" "new"


pub fn PromiseRejectionEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  promise : JsValue,
  reason? : JsValue) -> PromiseRejectionEventInit {
    promise_rejection_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(promise)
     ,opt_to_js(reason)
    )
}


pub fn PromiseRejectionEventInit::empty() -> PromiseRejectionEventInit = "webapi_Dictionary" "empty"