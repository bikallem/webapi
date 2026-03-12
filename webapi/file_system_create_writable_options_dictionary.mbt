// Do not edit. This file is generated.
// MoonBit type: FileSystemCreateWritableOptions
// Specifications: fs.idl

/// [FileSystemCreateWritableOptions](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemCreateWritableOptions)
#external
pub type FileSystemCreateWritableOptions

pub impl TJsValue for FileSystemCreateWritableOptions with to_js(self: FileSystemCreateWritableOptions) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemCreateWritableOptions with from_js_any(value : JsAny) -> FileSystemCreateWritableOptions = "%identity"

pub fn FileSystemCreateWritableOptions::new(keep_existing_data? : Bool) -> FileSystemCreateWritableOptions {
  file_system_create_writable_options_ffi(opt_to_js(keep_existing_data))
}

pub fn FileSystemCreateWritableOptions::empty() -> FileSystemCreateWritableOptions { file_system_create_writable_options_empty_ffi() }

pub fn FileSystemCreateWritableOptions::keep_existing_data(self : FileSystemCreateWritableOptions) -> Bool? {
  file_system_create_writable_options_get_keep_existing_data_ffi(TJsValue::to_js(self)).to_option_prim()
}