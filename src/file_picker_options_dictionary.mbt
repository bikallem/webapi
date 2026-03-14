// Do not edit. This file is generated.
// MoonBit type: FilePickerOptions
// Specifications: file-system-access.idl

/// [FilePickerOptions](https://developer.mozilla.org/en-US/docs/Web/API/FilePickerOptions)
#external
pub type FilePickerOptions

pub impl TJsValue for FilePickerOptions with to_js(self: FilePickerOptions) -> JsValue = "%identity"

pub impl FromJsAny for FilePickerOptions with from_js_any(value : JsAny) -> FilePickerOptions = "%identity"

pub fn FilePickerOptions::new(types? : Array[FilePickerAcceptType], 
exclude_accept_all_option? : Bool, 
id? : String, 
start_in? : &TStartInDirectory) -> FilePickerOptions {
  file_picker_options_ffi(opt_to_js(types), opt_to_js(exclude_accept_all_option), opt_to_js(id), match start_in {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn FilePickerOptions::empty() -> FilePickerOptions { file_picker_options_empty_ffi() }

pub fn FilePickerOptions::types(self : FilePickerOptions) -> Array[FilePickerAcceptType]? {
  file_picker_options_get_types_ffi(TJsValue::to_js(self)).to_option()
}

pub fn FilePickerOptions::exclude_accept_all_option(self : FilePickerOptions) -> Bool? {
  file_picker_options_get_exclude_accept_all_option_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FilePickerOptions::id(self : FilePickerOptions) -> String? {
  file_picker_options_get_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn FilePickerOptions::start_in(self : FilePickerOptions) -> StartInDirectory? {
  file_picker_options_get_start_in_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue) -> FilePickerOptions = 
#|(types, excludeAcceptAllOption, id, startIn) => {
#|  const obj = {};
#|  if (types !== undefined) obj.types = types;
#|  if (excludeAcceptAllOption !== undefined) obj.excludeAcceptAllOption = excludeAcceptAllOption;
#|  if (id !== undefined) obj.id = id;
#|  if (startIn !== undefined) obj.startIn = startIn;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn file_picker_options_empty_ffi() -> FilePickerOptions = "() => {}"

#cfg(target="js")
extern "js" fn file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "(obj) => obj.types"

#cfg(target="js")
extern "js" fn file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "(obj) => obj.excludeAcceptAllOption"

#cfg(target="js")
extern "js" fn file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.id"

#cfg(target="js")
extern "js" fn file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "(obj) => obj.startIn"

#cfg(target="wasm-gc")
fn file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue) -> FilePickerOptions = "webapi_FilePickerOptions" "new"

#cfg(target="wasm-gc")
fn file_picker_options_empty_ffi() -> FilePickerOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_types"

#cfg(target="wasm-gc")
fn file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_excludeAcceptAllOption"

#cfg(target="wasm-gc")
fn file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_id"

#cfg(target="wasm-gc")
fn file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "webapi_FilePickerOptions" "get_startIn"