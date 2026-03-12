// Do not edit. This file is generated.
// MoonBit type: PromiseRejectionEventInit
// Specifications: dom.idl, html.idl

/// [PromiseRejectionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PromiseRejectionEventInit)
#external
pub type PromiseRejectionEventInit

pub impl TJsValue for PromiseRejectionEventInit with to_js(self: PromiseRejectionEventInit) -> JsValue = "%identity"

pub impl FromJsAny for PromiseRejectionEventInit with from_js_any(value : JsAny) -> PromiseRejectionEventInit = "%identity"

pub fn PromiseRejectionEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
promise : JsValue, 
reason? : JsValue) -> PromiseRejectionEventInit {
  promise_rejection_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), TJsValue::to_js(promise), opt_to_js(reason))
}

pub fn PromiseRejectionEventInit::empty() -> PromiseRejectionEventInit { promise_rejection_event_init_empty_ffi() }

pub fn PromiseRejectionEventInit::bubbles(self : PromiseRejectionEventInit) -> Bool? {
  promise_rejection_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PromiseRejectionEventInit::cancelable(self : PromiseRejectionEventInit) -> Bool? {
  promise_rejection_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PromiseRejectionEventInit::composed(self : PromiseRejectionEventInit) -> Bool? {
  promise_rejection_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PromiseRejectionEventInit::promise(self : PromiseRejectionEventInit) -> JsValue {
  promise_rejection_event_init_get_promise_ffi(TJsValue::to_js(self))
}

pub fn PromiseRejectionEventInit::reason(self : PromiseRejectionEventInit) -> JsValue? {
  promise_rejection_event_init_get_reason_ffi(TJsValue::to_js(self)).to_option()
}