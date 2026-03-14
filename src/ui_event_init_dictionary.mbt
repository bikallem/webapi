// Do not edit. This file is generated.
// MoonBit type: UIEventInit
// Specifications: uievents.idl, dom.idl

/// [UIEventInit](https://developer.mozilla.org/en-US/docs/Web/API/UIEventInit)
#external
pub type UIEventInit

pub impl TJsValue for UIEventInit with to_js(self: UIEventInit) -> JsValue = "%identity"

pub impl FromJsAny for UIEventInit with from_js_any(value : JsAny) -> UIEventInit = "%identity"

pub fn UIEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
view? : &TWindow, 
detail? : Int, 
which? : UInt) -> UIEventInit {
  ui_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(view), opt_to_js(detail), opt_to_js(which))
}

pub fn UIEventInit::empty() -> UIEventInit { ui_event_init_empty_ffi() }

pub fn UIEventInit::bubbles(self : UIEventInit) -> Bool? {
  ui_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn UIEventInit::cancelable(self : UIEventInit) -> Bool? {
  ui_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn UIEventInit::composed(self : UIEventInit) -> Bool? {
  ui_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn UIEventInit::view(self : UIEventInit) -> Window? {
  ui_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

pub fn UIEventInit::detail(self : UIEventInit) -> Int? {
  ui_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn UIEventInit::which(self : UIEventInit) -> UInt? {
  ui_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn ui_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue) -> UIEventInit = 
#|(bubbles, cancelable, composed, view, detail, which) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (view !== undefined) obj.view = view;
#|  if (detail !== undefined) obj.detail = detail;
#|  if (which !== undefined) obj.which = which;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn ui_event_init_empty_ffi() -> UIEventInit = "() => {}"

#cfg(target="js")
extern "js" fn ui_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn ui_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn ui_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn ui_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

#cfg(target="js")
extern "js" fn ui_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

#cfg(target="js")
extern "js" fn ui_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"

#cfg(target="wasm-gc")
fn ui_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue) -> UIEventInit = "webapi_UIEventInit" "new"

#cfg(target="wasm-gc")
fn ui_event_init_empty_ffi() -> UIEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn ui_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_UIEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn ui_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_UIEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn ui_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_UIEventInit" "get_composed"

#cfg(target="wasm-gc")
fn ui_event_init_get_view_ffi(obj: JsValue) -> JsValue = "webapi_UIEventInit" "get_view"

#cfg(target="wasm-gc")
fn ui_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "webapi_UIEventInit" "get_detail"

#cfg(target="wasm-gc")
fn ui_event_init_get_which_ffi(obj: JsValue) -> JsValue = "webapi_UIEventInit" "get_which"