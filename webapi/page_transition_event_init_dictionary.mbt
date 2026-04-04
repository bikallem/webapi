// Do not edit. This file is generated.
// MoonBit type: PageTransitionEventInit
// Specifications: dom.idl, html.idl

///|
/// [PageTransitionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEventInit)
#external
pub type PageTransitionEventInit

///|
pub impl TJsValue for PageTransitionEventInit with to_js(
  self : PageTransitionEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for PageTransitionEventInit with from_js_any(value : JsAny) -> PageTransitionEventInit = "%identity"

///|
pub fn PageTransitionEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  persisted? : Bool,
) -> PageTransitionEventInit {
  page_transition_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(persisted),
  )
}

///|
pub fn PageTransitionEventInit::empty() -> PageTransitionEventInit {
  page_transition_event_init_empty_ffi()
}

///|
pub fn PageTransitionEventInit::bubbles(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageTransitionEventInit::cancelable(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageTransitionEventInit::composed(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageTransitionEventInit::persisted(
  self : PageTransitionEventInit,
) -> Bool? {
  page_transition_event_init_get_persisted_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn page_transition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  persisted : JsValue,
) -> PageTransitionEventInit =
  #|(bubbles, cancelable, composed, persisted) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (persisted !== undefined) obj.persisted = persisted;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn page_transition_event_init_empty_ffi() -> PageTransitionEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn page_transition_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn page_transition_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn page_transition_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn page_transition_event_init_get_persisted_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.persisted"

///|
#cfg(target="wasm-gc")
fn page_transition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  persisted : JsValue,
) -> PageTransitionEventInit = "webapi_PageTransitionEventInit" "new"

///|
#cfg(target="wasm-gc")
fn page_transition_event_init_empty_ffi() -> PageTransitionEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn page_transition_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn page_transition_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn page_transition_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn page_transition_event_init_get_persisted_ffi(obj : JsValue) -> JsValue = "webapi_PageTransitionEventInit" "get_persisted"
