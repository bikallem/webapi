// Do not edit. This file is generated.
// MoonBit type: CompositionEventInit
// Specifications: dom.idl, uievents.idl

///|
/// [CompositionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEventInit)
#external
pub type CompositionEventInit

///|
pub impl TJsValue for CompositionEventInit with to_js(
  self : CompositionEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CompositionEventInit with from_js_any(value : JsAny) -> CompositionEventInit = "%identity"

///|
pub fn CompositionEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  view? : &TWindow,
  detail? : Int,
  which? : UInt,
  data? : String,
) -> CompositionEventInit {
  composition_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(view),
    opt_to_js(detail),
    opt_to_js(which),
    opt_to_js(data),
  )
}

///|
pub fn CompositionEventInit::empty() -> CompositionEventInit {
  composition_event_init_empty_ffi()
}

///|
pub fn CompositionEventInit::bubbles(self : CompositionEventInit) -> Bool? {
  composition_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CompositionEventInit::cancelable(self : CompositionEventInit) -> Bool? {
  composition_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CompositionEventInit::composed(self : CompositionEventInit) -> Bool? {
  composition_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CompositionEventInit::view(self : CompositionEventInit) -> Window? {
  composition_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn CompositionEventInit::detail(self : CompositionEventInit) -> Int? {
  composition_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CompositionEventInit::which(self : CompositionEventInit) -> UInt? {
  composition_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CompositionEventInit::data(self : CompositionEventInit) -> String? {
  composition_event_init_get_data_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn composition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
) -> CompositionEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, data) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (data !== undefined) obj.data = data;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn composition_event_init_empty_ffi() -> CompositionEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_view_ffi(obj : JsValue) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_which_ffi(obj : JsValue) -> JsValue = "(obj) => obj.which"

///|
#cfg(target="js")
extern "js" fn composition_event_init_get_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="wasm-gc")
fn composition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
) -> CompositionEventInit = "webapi_CompositionEventInit" "new"

///|
#cfg(target="wasm-gc")
fn composition_event_init_empty_ffi() -> CompositionEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_view_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_view"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_detail_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_detail"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_which_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_which"

///|
#cfg(target="wasm-gc")
fn composition_event_init_get_data_ffi(obj : JsValue) -> JsValue = "webapi_CompositionEventInit" "get_data"
