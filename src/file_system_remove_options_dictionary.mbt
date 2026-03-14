// Do not edit. This file is generated.
// MoonBit type: FileSystemRemoveOptions
// Specifications: fs.idl

/// [FileSystemRemoveOptions](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemRemoveOptions)
#external
pub type FileSystemRemoveOptions

pub impl TJsValue for FileSystemRemoveOptions with to_js(self: FileSystemRemoveOptions) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemRemoveOptions with from_js_any(value : JsAny) -> FileSystemRemoveOptions = "%identity"

pub fn FileSystemRemoveOptions::new(recursive? : Bool) -> FileSystemRemoveOptions {
  file_system_remove_options_ffi(opt_to_js(recursive))
}

pub fn FileSystemRemoveOptions::empty() -> FileSystemRemoveOptions { file_system_remove_options_empty_ffi() }

pub fn FileSystemRemoveOptions::recursive(self : FileSystemRemoveOptions) -> Bool? {
  file_system_remove_options_get_recursive_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn file_system_remove_options_ffi(recursive: JsValue) -> FileSystemRemoveOptions = 
#|(recursive) => {
#|  const obj = {};
#|  if (recursive !== undefined) obj.recursive = recursive;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn file_system_remove_options_empty_ffi() -> FileSystemRemoveOptions = "() => {}"

#cfg(target="js")
extern "js" fn file_system_remove_options_get_recursive_ffi(obj: JsValue) -> JsValue = "(obj) => obj.recursive"

#cfg(target="wasm-gc")
fn file_system_remove_options_ffi(recursive: JsValue) -> FileSystemRemoveOptions = "webapi_FileSystemRemoveOptions" "new"

#cfg(target="wasm-gc")
fn file_system_remove_options_empty_ffi() -> FileSystemRemoveOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn file_system_remove_options_get_recursive_ffi(obj: JsValue) -> JsValue = "webapi_FileSystemRemoveOptions" "get_recursive"