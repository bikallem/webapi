// Do not edit. This file is generated.
// MoonBit type: FocusEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [FocusEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FocusEventInit)
#external
pub type FocusEventInit

///|
pub impl TJsValue for FocusEventInit with to_js(self : FocusEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for FocusEventInit with from_js_any(value : JsAny) -> FocusEventInit = "%identity"

///|
pub fn FocusEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view? : &TWindow,
  detail? : Int,
  which? : UInt,
  related_target? : &TEventTarget,
) -> FocusEventInit {
  focus_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view),
    opt_to_js(detail),
    opt_to_js(which),
    opt_to_js(related_target),
  )
}

///|
pub fn FocusEventInit::empty() -> FocusEventInit {
  focus_event_init_empty_ffi()
}

///|
pub fn FocusEventInit::bubbles(self : FocusEventInit) -> Bool? {
  focus_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FocusEventInit::cancelable(self : FocusEventInit) -> Bool? {
  focus_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FocusEventInit::composed(self : FocusEventInit) -> Bool? {
  focus_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FocusEventInit::view(self : FocusEventInit) -> Window? {
  focus_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn FocusEventInit::detail(self : FocusEventInit) -> Int? {
  focus_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FocusEventInit::which(self : FocusEventInit) -> UInt? {
  focus_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FocusEventInit::related_target(self : FocusEventInit) -> EventTarget? {
  focus_event_init_get_related_target_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn focus_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  related_target : JsValue,
) -> FocusEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, relatedTarget) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn focus_event_init_empty_ffi() -> FocusEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
#cfg(target="js")
extern "js" fn focus_event_init_get_related_target_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.relatedTarget"

///|
#cfg(target="wasm-gc")
fn focus_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  related_target : JsValue,
) -> FocusEventInit = "webapi_FocusEventInit" "new"

///|
#cfg(target="wasm-gc")
fn focus_event_init_empty_ffi() -> FocusEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_view"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_detail"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_which"

///|
#cfg(target="wasm-gc")
fn focus_event_init_get_related_target_ffi(obj : JsValue) -> JsValue = "webapi_FocusEventInit" "get_relatedTarget"
