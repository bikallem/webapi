///|
#external
pub type FormDataEntryValue

///|
pub impl TJsValue for FormDataEntryValue with to_js(self : FormDataEntryValue) -> JsValue = "%identity"

///|
pub(open) trait TFormDataEntryValue {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TFormDataEntryValue] FormDataEntryValue::into(
  self : FormDataEntryValue,
) -> T = "%identity"

///|
pub impl TFormDataEntryValue for File with to_js(self : File) -> JsValue = "%identity"

///|
pub impl TFormDataEntryValue for String with to_js(self : String) -> JsValue = "%identity"
