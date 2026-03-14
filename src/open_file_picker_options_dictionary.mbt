// Do not edit. This file is generated.
// MoonBit type: OpenFilePickerOptions
// Specifications: file-system-access.idl

/// [OpenFilePickerOptions](https://developer.mozilla.org/en-US/docs/Web/API/OpenFilePickerOptions)
#external
pub type OpenFilePickerOptions

pub impl TJsValue for OpenFilePickerOptions with to_js(self: OpenFilePickerOptions) -> JsValue = "%identity"

pub impl FromJsAny for OpenFilePickerOptions with from_js_any(value : JsAny) -> OpenFilePickerOptions = "%identity"

pub fn OpenFilePickerOptions::new(types? : Array[FilePickerAcceptType], 
exclude_accept_all_option? : Bool, 
id? : String, 
start_in? : &TStartInDirectory, 
multiple? : Bool) -> OpenFilePickerOptions {
  open_file_picker_options_ffi(opt_to_js(types), opt_to_js(exclude_accept_all_option), opt_to_js(id), match start_in {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(multiple))
}

pub fn OpenFilePickerOptions::empty() -> OpenFilePickerOptions { open_file_picker_options_empty_ffi() }

pub fn OpenFilePickerOptions::types(self : OpenFilePickerOptions) -> Array[FilePickerAcceptType]? {
  open_file_picker_options_get_types_ffi(TJsValue::to_js(self)).to_option()
}

pub fn OpenFilePickerOptions::exclude_accept_all_option(self : OpenFilePickerOptions) -> Bool? {
  open_file_picker_options_get_exclude_accept_all_option_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn OpenFilePickerOptions::id(self : OpenFilePickerOptions) -> String? {
  open_file_picker_options_get_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn OpenFilePickerOptions::start_in(self : OpenFilePickerOptions) -> StartInDirectory? {
  open_file_picker_options_get_start_in_ffi(TJsValue::to_js(self)).to_option()
}

pub fn OpenFilePickerOptions::multiple(self : OpenFilePickerOptions) -> Bool? {
  open_file_picker_options_get_multiple_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn open_file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue, multiple: JsValue) -> OpenFilePickerOptions = 
#|(types, excludeAcceptAllOption, id, startIn, multiple) => {
#|  const obj = {};
#|  if (types !== undefined) obj.types = types;
#|  if (excludeAcceptAllOption !== undefined) obj.excludeAcceptAllOption = excludeAcceptAllOption;
#|  if (id !== undefined) obj.id = id;
#|  if (startIn !== undefined) obj.startIn = startIn;
#|  if (multiple !== undefined) obj.multiple = multiple;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn open_file_picker_options_empty_ffi() -> OpenFilePickerOptions = "() => {}"

#cfg(target="js")
extern "js" fn open_file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "(obj) => obj.types"

#cfg(target="js")
extern "js" fn open_file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "(obj) => obj.excludeAcceptAllOption"

#cfg(target="js")
extern "js" fn open_file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "(obj) => obj.id"

#cfg(target="js")
extern "js" fn open_file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "(obj) => obj.startIn"

#cfg(target="js")
extern "js" fn open_file_picker_options_get_multiple_ffi(obj: JsValue) -> JsValue = "(obj) => obj.multiple"

#cfg(target="wasm-gc")
fn open_file_picker_options_ffi(types: JsValue, exclude_accept_all_option: JsValue, id: JsValue, start_in: JsValue, multiple: JsValue) -> OpenFilePickerOptions = "webapi_OpenFilePickerOptions" "new"

#cfg(target="wasm-gc")
fn open_file_picker_options_empty_ffi() -> OpenFilePickerOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn open_file_picker_options_get_types_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_types"

#cfg(target="wasm-gc")
fn open_file_picker_options_get_exclude_accept_all_option_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_excludeAcceptAllOption"

#cfg(target="wasm-gc")
fn open_file_picker_options_get_id_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_id"

#cfg(target="wasm-gc")
fn open_file_picker_options_get_start_in_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_startIn"

#cfg(target="wasm-gc")
fn open_file_picker_options_get_multiple_ffi(obj: JsValue) -> JsValue = "webapi_OpenFilePickerOptions" "get_multiple"