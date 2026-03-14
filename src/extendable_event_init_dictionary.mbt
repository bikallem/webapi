// Do not edit. This file is generated.
// MoonBit type: ExtendableEventInit
// Specifications: service-workers.idl, dom.idl

/// [ExtendableEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEventInit)
#external
pub type ExtendableEventInit

pub impl TJsValue for ExtendableEventInit with to_js(self: ExtendableEventInit) -> JsValue = "%identity"

pub impl FromJsAny for ExtendableEventInit with from_js_any(value : JsAny) -> ExtendableEventInit = "%identity"

pub fn ExtendableEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool) -> ExtendableEventInit {
  extendable_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed))
}

pub fn ExtendableEventInit::empty() -> ExtendableEventInit { extendable_event_init_empty_ffi() }

pub fn ExtendableEventInit::bubbles(self : ExtendableEventInit) -> Bool? {
  extendable_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ExtendableEventInit::cancelable(self : ExtendableEventInit) -> Bool? {
  extendable_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ExtendableEventInit::composed(self : ExtendableEventInit) -> Bool? {
  extendable_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn extendable_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue) -> ExtendableEventInit = 
#|(bubbles, cancelable, composed) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn extendable_event_init_empty_ffi() -> ExtendableEventInit = "() => {}"

#cfg(target="js")
extern "js" fn extendable_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn extendable_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn extendable_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="wasm-gc")
fn extendable_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue) -> ExtendableEventInit = "webapi_ExtendableEventInit" "new"

#cfg(target="wasm-gc")
fn extendable_event_init_empty_ffi() -> ExtendableEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn extendable_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn extendable_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn extendable_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableEventInit" "get_composed"