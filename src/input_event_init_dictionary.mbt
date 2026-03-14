// Do not edit. This file is generated.
// MoonBit type: InputEventInit
// Specifications: uievents.idl, dom.idl

/// [InputEventInit](https://developer.mozilla.org/en-US/docs/Web/API/InputEventInit)
#external
pub type InputEventInit

pub impl TJsValue for InputEventInit with to_js(self: InputEventInit) -> JsValue = "%identity"

pub impl FromJsAny for InputEventInit with from_js_any(value : JsAny) -> InputEventInit = "%identity"

pub fn InputEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
view? : &TWindow, 
detail? : Int, 
which? : UInt, 
data? : String, 
is_composing? : Bool, 
input_type? : String) -> InputEventInit {
  input_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(view), opt_to_js(detail), opt_to_js(which), opt_to_js(data), opt_to_js(is_composing), opt_to_js(input_type))
}

pub fn InputEventInit::empty() -> InputEventInit { input_event_init_empty_ffi() }

pub fn InputEventInit::bubbles(self : InputEventInit) -> Bool? {
  input_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::cancelable(self : InputEventInit) -> Bool? {
  input_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::composed(self : InputEventInit) -> Bool? {
  input_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::view(self : InputEventInit) -> Window? {
  input_event_init_get_view_ffi(TJsValue::to_js(self)).to_option()
}

pub fn InputEventInit::detail(self : InputEventInit) -> Int? {
  input_event_init_get_detail_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::which(self : InputEventInit) -> UInt? {
  input_event_init_get_which_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::data(self : InputEventInit) -> String? {
  input_event_init_get_data_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::is_composing(self : InputEventInit) -> Bool? {
  input_event_init_get_is_composing_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn InputEventInit::input_type(self : InputEventInit) -> String? {
  input_event_init_get_input_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn input_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, data: JsValue, is_composing: JsValue, input_type: JsValue) -> InputEventInit = 
#|(bubbles, cancelable, composed, view, detail, which, data, isComposing, inputType) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (view !== undefined) obj.view = view;
#|  if (detail !== undefined) obj.detail = detail;
#|  if (which !== undefined) obj.which = which;
#|  if (data !== undefined) obj.data = data;
#|  if (isComposing !== undefined) obj.isComposing = isComposing;
#|  if (inputType !== undefined) obj.inputType = inputType;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn input_event_init_empty_ffi() -> InputEventInit = "() => {}"

#cfg(target="js")
extern "js" fn input_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn input_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn input_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn input_event_init_get_view_ffi(obj: JsValue) -> JsValue = "(obj) => obj.view"

#cfg(target="js")
extern "js" fn input_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "(obj) => obj.detail"

#cfg(target="js")
extern "js" fn input_event_init_get_which_ffi(obj: JsValue) -> JsValue = "(obj) => obj.which"

#cfg(target="js")
extern "js" fn input_event_init_get_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.data"

#cfg(target="js")
extern "js" fn input_event_init_get_is_composing_ffi(obj: JsValue) -> JsValue = "(obj) => obj.isComposing"

#cfg(target="js")
extern "js" fn input_event_init_get_input_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.inputType"

#cfg(target="wasm-gc")
fn input_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, data: JsValue, is_composing: JsValue, input_type: JsValue) -> InputEventInit = "webapi_InputEventInit" "new"

#cfg(target="wasm-gc")
fn input_event_init_empty_ffi() -> InputEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn input_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn input_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn input_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_composed"

#cfg(target="wasm-gc")
fn input_event_init_get_view_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_view"

#cfg(target="wasm-gc")
fn input_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_detail"

#cfg(target="wasm-gc")
fn input_event_init_get_which_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_which"

#cfg(target="wasm-gc")
fn input_event_init_get_data_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_data"

#cfg(target="wasm-gc")
fn input_event_init_get_is_composing_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_isComposing"

#cfg(target="wasm-gc")
fn input_event_init_get_input_type_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_inputType"