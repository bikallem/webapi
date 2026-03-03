// Do not edit. This file is generated.
// MoonBit type: DirectoryPickerOptions
// Specifications: file-system-access.idl

///|
/// [DirectoryPickerOptions](https://developer.mozilla.org/en-US/docs/Web/API/DirectoryPickerOptions)
#external
pub type DirectoryPickerOptions

///|
pub impl TJsValue for DirectoryPickerOptions with to_js(
  self : DirectoryPickerOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for DirectoryPickerOptions with from_js_any(value : JsAny) -> DirectoryPickerOptions = "%identity"

///|
pub fn DirectoryPickerOptions::new(
  id? : String,
  start_in? : &TStartInDirectory,
  mode? : FileSystemPermissionMode,
) -> DirectoryPickerOptions {
  directory_picker_options_ffi(
    opt_to_js(id),
    match start_in {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(mode),
  )
}

///|
pub fn DirectoryPickerOptions::empty() -> DirectoryPickerOptions {
  directory_picker_options_empty_ffi()
}

///|
pub fn DirectoryPickerOptions::id(self : DirectoryPickerOptions) -> String? {
  directory_picker_options_get_id_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn DirectoryPickerOptions::start_in(
  self : DirectoryPickerOptions,
) -> StartInDirectory? {
  directory_picker_options_get_start_in_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn DirectoryPickerOptions::mode(
  self : DirectoryPickerOptions,
) -> FileSystemPermissionMode? {
  directory_picker_options_get_mode_ffi(TJsValue::to_js(self)).to_option()
}
