// Do not edit. This file is generated.
// MoonBit type: CustomEventInit
// Specifications: dom.idl

///|
/// [CustomEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CustomEventInit)
#external
pub type CustomEventInit

///|
pub impl TJsValue for CustomEventInit with to_js(self : CustomEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for CustomEventInit with from_js_any(value : JsAny) -> CustomEventInit = "%identity"

///|
pub fn CustomEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  detail? : JsValue,
) -> CustomEventInit {
  custom_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(detail),
  )
}

///|
pub fn CustomEventInit::empty() -> CustomEventInit {
  custom_event_init_empty_ffi()
}

///|
pub fn CustomEventInit::bubbles(self : CustomEventInit) -> Bool? {
  custom_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CustomEventInit::cancelable(self : CustomEventInit) -> Bool? {
  custom_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CustomEventInit::composed(self : CustomEventInit) -> Bool? {
  custom_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CustomEventInit::detail(self : CustomEventInit) -> JsValue? {
  custom_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn custom_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  detail : JsValue,
) -> CustomEventInit =
  #|(bubbles, cancelable, composed, detail) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn custom_event_init_empty_ffi() -> CustomEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn custom_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn custom_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn custom_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn custom_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="wasm-gc")
fn custom_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  detail : JsValue,
) -> CustomEventInit = "webapi_CustomEventInit" "new"

///|
#cfg(target="wasm-gc")
fn custom_event_init_empty_ffi() -> CustomEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn custom_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn custom_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn custom_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn custom_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_CustomEventInit" "get_detail"
