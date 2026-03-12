// Do not edit. This file is generated.
// MoonBit type: SaveFilePickerOptions
// Specifications: file-system-access.idl

///|
/// [SaveFilePickerOptions](https://developer.mozilla.org/en-US/docs/Web/API/SaveFilePickerOptions)
#external
pub type SaveFilePickerOptions

///|
pub impl TJsValue for SaveFilePickerOptions with to_js(
  self : SaveFilePickerOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SaveFilePickerOptions with from_js_any(value : JsAny) -> SaveFilePickerOptions = "%identity"

///|
pub fn SaveFilePickerOptions::new(
  types? : Array[FilePickerAcceptType],
  exclude_accept_all_option? : Bool,
  id? : String,
  start_in? : &TStartInDirectory,
  suggested_name? : String,
) -> SaveFilePickerOptions {
  save_file_picker_options_ffi(
    opt_to_js(types),
    opt_to_js(exclude_accept_all_option),
    opt_to_js(id),
    match start_in {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(suggested_name),
  )
}

///|
pub fn SaveFilePickerOptions::empty() -> SaveFilePickerOptions {
  save_file_picker_options_empty_ffi()
}

///|
pub fn SaveFilePickerOptions::types(
  self : SaveFilePickerOptions,
) -> Array[FilePickerAcceptType]? {
  save_file_picker_options_get_types_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn SaveFilePickerOptions::exclude_accept_all_option(
  self : SaveFilePickerOptions,
) -> Bool? {
  save_file_picker_options_get_exclude_accept_all_option_ffi(
    TJsValue::to_js(self),
  ).to_option_prim()
}

///|
pub fn SaveFilePickerOptions::id(self : SaveFilePickerOptions) -> String? {
  save_file_picker_options_get_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn SaveFilePickerOptions::start_in(
  self : SaveFilePickerOptions,
) -> StartInDirectory? {
  save_file_picker_options_get_start_in_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn SaveFilePickerOptions::suggested_name(
  self : SaveFilePickerOptions,
) -> String? {
  save_file_picker_options_get_suggested_name_ffi(TJsValue::to_js(self)).to_option_prim()
}
