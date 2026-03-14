// Do not edit. This file is generated.
// MoonBit type: FormDataEventInit
// Specifications: dom.idl, html.idl

/// [FormDataEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEventInit)
#external
pub type FormDataEventInit

pub impl TJsValue for FormDataEventInit with to_js(self: FormDataEventInit) -> JsValue = "%identity"

pub impl FromJsAny for FormDataEventInit with from_js_any(value : JsAny) -> FormDataEventInit = "%identity"

pub fn FormDataEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
form_data : &TFormData) -> FormDataEventInit {
  form_data_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), TJsValue::to_js(form_data))
}

pub fn FormDataEventInit::empty() -> FormDataEventInit { form_data_event_init_empty_ffi() }

pub fn FormDataEventInit::bubbles(self : FormDataEventInit) -> Bool? {
  form_data_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FormDataEventInit::cancelable(self : FormDataEventInit) -> Bool? {
  form_data_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FormDataEventInit::composed(self : FormDataEventInit) -> Bool? {
  form_data_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FormDataEventInit::form_data(self : FormDataEventInit) -> FormData {
  form_data_event_init_get_form_data_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn form_data_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, form_data: JsValue) -> FormDataEventInit = 
#|(bubbles, cancelable, composed, formData) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (formData !== undefined) obj.formData = formData;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn form_data_event_init_empty_ffi() -> FormDataEventInit = "() => {}"

#cfg(target="js")
extern "js" fn form_data_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn form_data_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn form_data_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn form_data_event_init_get_form_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formData"

///|
#cfg(target="js")
fn form_data_event_init_get_form_data_ffi(obj: JsValue) -> FormData {
  form_data_event_init_get_form_data_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn form_data_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, form_data: JsValue) -> FormDataEventInit = "webapi_FormDataEventInit" "new"

#cfg(target="wasm-gc")
fn form_data_event_init_empty_ffi() -> FormDataEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn form_data_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_FormDataEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn form_data_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_FormDataEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn form_data_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_FormDataEventInit" "get_composed"

#cfg(target="wasm-gc")
fn form_data_event_init_get_form_data_ffi(obj: JsValue) -> FormData = "webapi_FormDataEventInit" "get_formData"