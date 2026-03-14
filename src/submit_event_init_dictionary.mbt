// Do not edit. This file is generated.
// MoonBit type: SubmitEventInit
// Specifications: dom.idl, html.idl

/// [SubmitEventInit](https://developer.mozilla.org/en-US/docs/Web/API/SubmitEventInit)
#external
pub type SubmitEventInit

pub impl TJsValue for SubmitEventInit with to_js(self: SubmitEventInit) -> JsValue = "%identity"

pub impl FromJsAny for SubmitEventInit with from_js_any(value : JsAny) -> SubmitEventInit = "%identity"

pub fn SubmitEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
submitter? : &THTMLElement) -> SubmitEventInit {
  submit_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(submitter))
}

pub fn SubmitEventInit::empty() -> SubmitEventInit { submit_event_init_empty_ffi() }

pub fn SubmitEventInit::bubbles(self : SubmitEventInit) -> Bool? {
  submit_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn SubmitEventInit::cancelable(self : SubmitEventInit) -> Bool? {
  submit_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn SubmitEventInit::composed(self : SubmitEventInit) -> Bool? {
  submit_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn SubmitEventInit::submitter(self : SubmitEventInit) -> HTMLElement? {
  submit_event_init_get_submitter_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn submit_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, submitter: JsValue) -> SubmitEventInit = 
#|(bubbles, cancelable, composed, submitter) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (submitter !== undefined) obj.submitter = submitter;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn submit_event_init_empty_ffi() -> SubmitEventInit = "() => {}"

#cfg(target="js")
extern "js" fn submit_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn submit_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn submit_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn submit_event_init_get_submitter_ffi(obj: JsValue) -> JsValue = "(obj) => obj.submitter"

#cfg(target="wasm-gc")
fn submit_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, submitter: JsValue) -> SubmitEventInit = "webapi_SubmitEventInit" "new"

#cfg(target="wasm-gc")
fn submit_event_init_empty_ffi() -> SubmitEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn submit_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn submit_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn submit_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_composed"

#cfg(target="wasm-gc")
fn submit_event_init_get_submitter_ffi(obj: JsValue) -> JsValue = "webapi_SubmitEventInit" "get_submitter"