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