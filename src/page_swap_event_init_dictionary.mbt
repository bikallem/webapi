// Do not edit. This file is generated.
// MoonBit type: PageSwapEventInit
// Specifications: dom.idl, html.idl

/// [PageSwapEventInit](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEventInit)
#external
pub type PageSwapEventInit

pub impl TJsValue for PageSwapEventInit with to_js(self: PageSwapEventInit) -> JsValue = "%identity"

pub impl FromJsAny for PageSwapEventInit with from_js_any(value : JsAny) -> PageSwapEventInit = "%identity"

pub fn PageSwapEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
activation? : &TNavigationActivation, 
view_transition? : ViewTransition) -> PageSwapEventInit {
  page_swap_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(activation), opt_to_js(view_transition))
}

pub fn PageSwapEventInit::empty() -> PageSwapEventInit { page_swap_event_init_empty_ffi() }

pub fn PageSwapEventInit::bubbles(self : PageSwapEventInit) -> Bool? {
  page_swap_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PageSwapEventInit::cancelable(self : PageSwapEventInit) -> Bool? {
  page_swap_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PageSwapEventInit::composed(self : PageSwapEventInit) -> Bool? {
  page_swap_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn PageSwapEventInit::activation(self : PageSwapEventInit) -> NavigationActivation? {
  page_swap_event_init_get_activation_ffi(TJsValue::to_js(self)).to_option()
}

pub fn PageSwapEventInit::view_transition(self : PageSwapEventInit) -> ViewTransition? {
  page_swap_event_init_get_view_transition_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn page_swap_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, activation: JsValue, view_transition: JsValue) -> PageSwapEventInit = 
#|(bubbles, cancelable, composed, activation, viewTransition) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (activation !== undefined) obj.activation = activation;
#|  if (viewTransition !== undefined) obj.viewTransition = viewTransition;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn page_swap_event_init_empty_ffi() -> PageSwapEventInit = "() => {}"

#cfg(target="js")
extern "js" fn page_swap_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn page_swap_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn page_swap_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn page_swap_event_init_get_activation_ffi(obj: JsValue) -> JsValue = "(obj) => obj.activation"

#cfg(target="js")
extern "js" fn page_swap_event_init_get_view_transition_ffi(obj: JsValue) -> JsValue = "(obj) => obj.viewTransition"

#cfg(target="wasm-gc")
fn page_swap_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, activation: JsValue, view_transition: JsValue) -> PageSwapEventInit = "webapi_PageSwapEventInit" "new"

#cfg(target="wasm-gc")
fn page_swap_event_init_empty_ffi() -> PageSwapEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn page_swap_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn page_swap_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn page_swap_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_composed"

#cfg(target="wasm-gc")
fn page_swap_event_init_get_activation_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_activation"

#cfg(target="wasm-gc")
fn page_swap_event_init_get_view_transition_ffi(obj: JsValue) -> JsValue = "webapi_PageSwapEventInit" "get_viewTransition"