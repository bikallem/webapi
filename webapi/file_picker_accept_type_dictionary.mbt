// Do not edit. This file is generated.
// MoonBit type: FilePickerAcceptType
// Specifications: file-system-access.idl

///|
/// [FilePickerAcceptType](https://developer.mozilla.org/en-US/docs/Web/API/FilePickerAcceptType)
#external
pub type FilePickerAcceptType

///|
pub impl TJsValue for FilePickerAcceptType with to_js(
  self : FilePickerAcceptType,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FilePickerAcceptType with from_js_any(value : JsAny) -> FilePickerAcceptType = "%identity"

///|
pub fn FilePickerAcceptType::new(
  description? : String = "",
  accept? : JsValue,
) -> FilePickerAcceptType {
  file_picker_accept_type_ffi(TJsValue::to_js(description), opt_to_js(accept))
}

///|
pub fn FilePickerAcceptType::empty() -> FilePickerAcceptType {
  file_picker_accept_type_empty_ffi()
}

///|
pub fn FilePickerAcceptType::description(
  self : FilePickerAcceptType,
) -> String? {
  file_picker_accept_type_get_description_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FilePickerAcceptType::accept(self : FilePickerAcceptType) -> JsValue? {
  file_picker_accept_type_get_accept_ffi(TJsValue::to_js(self)).to_option()
}
