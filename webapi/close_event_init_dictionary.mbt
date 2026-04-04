// Do not edit. This file is generated.
// MoonBit type: CloseEventInit
// Specifications: dom.idl, websockets.idl

///|
/// [CloseEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CloseEventInit)
#external
pub type CloseEventInit

///|
pub impl TJsValue for CloseEventInit with to_js(self : CloseEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for CloseEventInit with from_js_any(value : JsAny) -> CloseEventInit = "%identity"

///|
pub fn CloseEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  was_clean? : Bool,
  code? : UInt,
  reason? : String,
) -> CloseEventInit {
  close_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(was_clean),
    opt_to_js(code),
    opt_to_js(reason),
  )
}

///|
pub fn CloseEventInit::empty() -> CloseEventInit {
  close_event_init_empty_ffi()
}

///|
pub fn CloseEventInit::bubbles(self : CloseEventInit) -> Bool? {
  close_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::cancelable(self : CloseEventInit) -> Bool? {
  close_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::composed(self : CloseEventInit) -> Bool? {
  close_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::was_clean(self : CloseEventInit) -> Bool? {
  close_event_init_get_was_clean_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::code(self : CloseEventInit) -> UInt? {
  close_event_init_get_code_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CloseEventInit::reason(self : CloseEventInit) -> String? {
  close_event_init_get_reason_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn close_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  was_clean : JsValue,
  code : JsValue,
  reason : JsValue,
) -> CloseEventInit =
  #|(bubbles, cancelable, composed, wasClean, code, reason) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (wasClean !== undefined) obj.wasClean = wasClean;
  #|  if (code !== undefined) obj.code = code;
  #|  if (reason !== undefined) obj.reason = reason;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn close_event_init_empty_ffi() -> CloseEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn close_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn close_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn close_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn close_event_init_get_was_clean_ffi(obj : JsValue) -> JsValue = "(obj) => obj.wasClean"

///|
#cfg(target="js")
extern "js" fn close_event_init_get_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
#cfg(target="js")
extern "js" fn close_event_init_get_reason_ffi(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
#cfg(target="wasm-gc")
fn close_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  was_clean : JsValue,
  code : JsValue,
  reason : JsValue,
) -> CloseEventInit = "webapi_CloseEventInit" "new"

///|
#cfg(target="wasm-gc")
fn close_event_init_empty_ffi() -> CloseEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn close_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_CloseEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn close_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_CloseEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn close_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_CloseEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn close_event_init_get_was_clean_ffi(obj : JsValue) -> JsValue = "webapi_CloseEventInit" "get_wasClean"

///|
#cfg(target="wasm-gc")
fn close_event_init_get_code_ffi(obj : JsValue) -> JsValue = "webapi_CloseEventInit" "get_code"

///|
#cfg(target="wasm-gc")
fn close_event_init_get_reason_ffi(obj : JsValue) -> JsValue = "webapi_CloseEventInit" "get_reason"
