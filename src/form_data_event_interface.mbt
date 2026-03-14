// Do not edit. This file is generated.
// MoonBit type: FormDataEvent
// Specifications: html.idl

/// [FormDataEvent](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent)
#external
pub type FormDataEvent

pub impl TJsValue for FormDataEvent with to_js(self: FormDataEvent) -> JsValue = "%identity"

pub impl FromJsAny for FormDataEvent with from_js_any(value : JsAny) -> FormDataEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFormDataEvent] FormDataEvent::into(self : FormDataEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFormDataEvent] FormDataEvent::unsafe_into(self : FormDataEvent) -> T = "%identity"

pub impl HasConstructor for FormDataEvent with constructor_name() { "FormDataEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFormDataEvent + HasConstructor] FormDataEvent::try_into(self : FormDataEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TFormDataEvent for FormDataEvent

pub impl TEvent for FormDataEvent

pub fn FormDataEvent::new(type_ : String, 
event_init_dict : FormDataEventInit) -> FormDataEvent {
  form_data_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [FormDataEvent](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent) interface.
pub trait TFormDataEvent: TEvent {
  form_data(self : Self) -> FormData = _
}

/// [FormDataEvent.formData](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEvent/formData)
impl TFormDataEvent with form_data(self : Self) -> FormData {
  form_data_event_form_data_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn form_data_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> FormDataEvent = "(type_, event_init_dict) => new FormDataEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn form_data_event_form_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formData"

///|
#cfg(target="js")
fn form_data_event_form_data_ffi(obj: JsValue) -> FormData {
  form_data_event_form_data_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn form_data_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> FormDataEvent = "webapi_FormDataEvent" "new"

#cfg(target="wasm-gc")
fn form_data_event_form_data_ffi(obj: JsValue) -> FormData = "webapi_FormDataEvent" "get_formData"