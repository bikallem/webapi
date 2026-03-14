// Do not edit. This file is generated.
// MoonBit type: ProgressEventInit
// Specifications: dom.idl, xhr.idl

///|
/// [ProgressEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEventInit)
#external
pub type ProgressEventInit

///|
pub impl TJsValue for ProgressEventInit with to_js(self : ProgressEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ProgressEventInit with from_js_any(value : JsAny) -> ProgressEventInit = "%identity"

///|
pub fn ProgressEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  length_computable? : Bool,
  loaded? : Double,
  total? : Double,
) -> ProgressEventInit {
  progress_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(length_computable),
    opt_to_js(loaded),
    opt_to_js(total),
  )
}

///|
pub fn ProgressEventInit::empty() -> ProgressEventInit {
  progress_event_init_empty_ffi()
}

///|
pub fn ProgressEventInit::bubbles(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::cancelable(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::composed(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::length_computable(self : ProgressEventInit) -> Bool? {
  progress_event_init_get_length_computable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::loaded(self : ProgressEventInit) -> Double? {
  progress_event_init_get_loaded_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ProgressEventInit::total(self : ProgressEventInit) -> Double? {
  progress_event_init_get_total_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn progress_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  length_computable : JsValue,
  loaded : JsValue,
  total : JsValue,
) -> ProgressEventInit =
  #|(bubbles, cancelable, composed, lengthComputable, loaded, total) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (lengthComputable !== undefined) obj.lengthComputable = lengthComputable;
  #|  if (loaded !== undefined) obj.loaded = loaded;
  #|  if (total !== undefined) obj.total = total;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn progress_event_init_empty_ffi() -> ProgressEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn progress_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn progress_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn progress_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn progress_event_init_get_length_computable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lengthComputable"

///|
#cfg(target="js")
extern "js" fn progress_event_init_get_loaded_ffi(obj : JsValue) -> JsValue = "(obj) => obj.loaded"

///|
#cfg(target="js")
extern "js" fn progress_event_init_get_total_ffi(obj : JsValue) -> JsValue = "(obj) => obj.total"

///|
#cfg(target="wasm-gc")
fn progress_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  length_computable : JsValue,
  loaded : JsValue,
  total : JsValue,
) -> ProgressEventInit = "webapi_ProgressEventInit" "new"

///|
#cfg(target="wasm-gc")
fn progress_event_init_empty_ffi() -> ProgressEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn progress_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ProgressEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn progress_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ProgressEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn progress_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ProgressEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn progress_event_init_get_length_computable_ffi(obj : JsValue) -> JsValue = "webapi_ProgressEventInit" "get_lengthComputable"

///|
#cfg(target="wasm-gc")
fn progress_event_init_get_loaded_ffi(obj : JsValue) -> JsValue = "webapi_ProgressEventInit" "get_loaded"

///|
#cfg(target="wasm-gc")
fn progress_event_init_get_total_ffi(obj : JsValue) -> JsValue = "webapi_ProgressEventInit" "get_total"
