// Do not edit. This file is generated.
// MoonBit type: FileSystemRemoveOptions
// Specifications: fs.idl

///|
/// [FileSystemRemoveOptions](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemRemoveOptions)
#external
pub type FileSystemRemoveOptions

///|
pub impl TJsValue for FileSystemRemoveOptions with to_js(
  self : FileSystemRemoveOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemRemoveOptions with from_js_any(value : JsAny) -> FileSystemRemoveOptions = "%identity"

///|
pub fn FileSystemRemoveOptions::new(
  recursive? : Bool = false,
) -> FileSystemRemoveOptions {
  file_system_remove_options_ffi(TJsValue::to_js(recursive))
}

///|
pub fn FileSystemRemoveOptions::empty() -> FileSystemRemoveOptions {
  file_system_remove_options_empty_ffi()
}

///|
pub fn FileSystemRemoveOptions::recursive(
  self : FileSystemRemoveOptions,
) -> Bool? {
  file_system_remove_options_get_recursive_ffi(TJsValue::to_js(self)).to_option_prim()
}
