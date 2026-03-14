// Do not edit. This file is generated.
// MoonBit type: FileSystemReadWriteOptions
// Specifications: fs.idl

/// [FileSystemReadWriteOptions](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemReadWriteOptions)
#external
pub type FileSystemReadWriteOptions

pub impl TJsValue for FileSystemReadWriteOptions with to_js(self: FileSystemReadWriteOptions) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemReadWriteOptions with from_js_any(value : JsAny) -> FileSystemReadWriteOptions = "%identity"

pub fn FileSystemReadWriteOptions::new(at? : UInt64) -> FileSystemReadWriteOptions {
  file_system_read_write_options_ffi(opt_to_js(at))
}

pub fn FileSystemReadWriteOptions::empty() -> FileSystemReadWriteOptions { file_system_read_write_options_empty_ffi() }

pub fn FileSystemReadWriteOptions::at(self : FileSystemReadWriteOptions) -> UInt64? {
  file_system_read_write_options_get_at_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn file_system_read_write_options_ffi(at: JsValue) -> FileSystemReadWriteOptions = 
#|(at) => {
#|  const obj = {};
#|  if (at !== undefined) obj.at = at;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn file_system_read_write_options_empty_ffi() -> FileSystemReadWriteOptions = "() => {}"

#cfg(target="js")
extern "js" fn file_system_read_write_options_get_at_ffi(obj: JsValue) -> JsValue = "(obj) => obj.at"

#cfg(target="wasm-gc")
fn file_system_read_write_options_ffi(at: JsValue) -> FileSystemReadWriteOptions = "webapi_FileSystemReadWriteOptions" "new"

#cfg(target="wasm-gc")
fn file_system_read_write_options_empty_ffi() -> FileSystemReadWriteOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn file_system_read_write_options_get_at_ffi(obj: JsValue) -> JsValue = "webapi_FileSystemReadWriteOptions" "get_at"