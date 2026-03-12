// Do not edit. This file is generated.
// MoonBit type: FormDataEntryValue
// Specifications: xhr.idl

///|
/// [FormDataEntryValue](https://developer.mozilla.org/en-US/docs/Web/API/FormDataEntryValue)
#external
pub type FormDataEntryValue

///|
pub impl TJsValue for FormDataEntryValue with to_js(self : FormDataEntryValue) -> JsValue = "%identity"

///|
pub impl FromJsAny for FormDataEntryValue with from_js_any(value : JsAny) -> FormDataEntryValue = "%identity"

///|
pub(open) trait TFormDataEntryValue: TJsValue {}

///|
pub fn[T : TFormDataEntryValue + FromJsAny] FormDataEntryValue::into(
  self : FormDataEntryValue,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TFormDataEntryValue] FormDataEntryValue::from(
  value : T,
) -> FormDataEntryValue = "%identity"

///|
pub impl TFormDataEntryValue for FormDataEntryValue

///|
pub impl TFormDataEntryValue for File

///|
pub impl TFormDataEntryValue for String
