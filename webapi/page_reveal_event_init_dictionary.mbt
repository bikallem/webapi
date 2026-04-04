// Do not edit. This file is generated.
// MoonBit type: PageRevealEventInit
// Specifications: dom.idl, html.idl

///|
/// [PageRevealEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEventInit)
#external
pub type PageRevealEventInit

///|
pub impl TJsValue for PageRevealEventInit with to_js(self : PageRevealEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for PageRevealEventInit with from_js_any(value : JsAny) -> PageRevealEventInit = "%identity"

///|
pub fn PageRevealEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view_transition? : ViewTransition,
) -> PageRevealEventInit {
  page_reveal_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view_transition),
  )
}

///|
pub fn PageRevealEventInit::empty() -> PageRevealEventInit {
  page_reveal_event_init_empty_ffi()
}

///|
pub fn PageRevealEventInit::bubbles(self : PageRevealEventInit) -> Bool? {
  page_reveal_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageRevealEventInit::cancelable(self : PageRevealEventInit) -> Bool? {
  page_reveal_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageRevealEventInit::composed(self : PageRevealEventInit) -> Bool? {
  page_reveal_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn PageRevealEventInit::view_transition(
  self : PageRevealEventInit,
) -> ViewTransition? {
  page_reveal_event_init_get_view_transition_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn page_reveal_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view_transition : JsValue,
) -> PageRevealEventInit =
  #|(bubbles, cancelable, composed, viewTransition) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (viewTransition !== undefined) obj.viewTransition = viewTransition;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn page_reveal_event_init_empty_ffi() -> PageRevealEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn page_reveal_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn page_reveal_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn page_reveal_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn page_reveal_event_init_get_view_transition_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.viewTransition"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view_transition : JsValue,
) -> PageRevealEventInit = "webapi_PageRevealEventInit" "new"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_init_empty_ffi() -> PageRevealEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_init_get_view_transition_ffi(obj : JsValue) -> JsValue = "webapi_PageRevealEventInit" "get_viewTransition"
