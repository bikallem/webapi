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
  description? : String,
  accept? : JsValue,
) -> FilePickerAcceptType {
  file_picker_accept_type_ffi(opt_to_js(description), opt_to_js(accept))
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

///|
#cfg(target="js")
extern "js" fn file_picker_accept_type_ffi(
  description : JsValue,
  accept : JsValue,
) -> FilePickerAcceptType =
  #|(description, accept) => {
  #|  const obj = {};
  #|  if (description !== undefined) obj.description = description;
  #|  if (accept !== undefined) obj.accept = accept;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn file_picker_accept_type_empty_ffi() -> FilePickerAcceptType = "() => {}"

///|
#cfg(target="js")
extern "js" fn file_picker_accept_type_get_description_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.description"

///|
#cfg(target="js")
extern "js" fn file_picker_accept_type_get_accept_ffi(obj : JsValue) -> JsValue = "(obj) => obj.accept"

///|
#cfg(target="wasm-gc")
fn file_picker_accept_type_ffi(
  description : JsValue,
  accept : JsValue,
) -> FilePickerAcceptType = "webapi_FilePickerAcceptType" "new"

///|
#cfg(target="wasm-gc")
fn file_picker_accept_type_empty_ffi() -> FilePickerAcceptType = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn file_picker_accept_type_get_description_ffi(obj : JsValue) -> JsValue = "webapi_FilePickerAcceptType" "get_description"

///|
#cfg(target="wasm-gc")
fn file_picker_accept_type_get_accept_ffi(obj : JsValue) -> JsValue = "webapi_FilePickerAcceptType" "get_accept"
