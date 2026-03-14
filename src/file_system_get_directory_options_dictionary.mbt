// Do not edit. This file is generated.
// MoonBit type: FileSystemGetDirectoryOptions
// Specifications: fs.idl

/// [FileSystemGetDirectoryOptions](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemGetDirectoryOptions)
#external
pub type FileSystemGetDirectoryOptions

pub impl TJsValue for FileSystemGetDirectoryOptions with to_js(self: FileSystemGetDirectoryOptions) -> JsValue = "%identity"

pub impl FromJsAny for FileSystemGetDirectoryOptions with from_js_any(value : JsAny) -> FileSystemGetDirectoryOptions = "%identity"

pub fn FileSystemGetDirectoryOptions::new(create? : Bool) -> FileSystemGetDirectoryOptions {
  file_system_get_directory_options_ffi(opt_to_js(create))
}

pub fn FileSystemGetDirectoryOptions::empty() -> FileSystemGetDirectoryOptions { file_system_get_directory_options_empty_ffi() }

pub fn FileSystemGetDirectoryOptions::create(self : FileSystemGetDirectoryOptions) -> Bool? {
  file_system_get_directory_options_get_create_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn file_system_get_directory_options_ffi(create: JsValue) -> FileSystemGetDirectoryOptions = 
#|(create) => {
#|  const obj = {};
#|  if (create !== undefined) obj.create = create;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn file_system_get_directory_options_empty_ffi() -> FileSystemGetDirectoryOptions = "() => {}"

#cfg(target="js")
extern "js" fn file_system_get_directory_options_get_create_ffi(obj: JsValue) -> JsValue = "(obj) => obj.create"

#cfg(target="wasm-gc")
fn file_system_get_directory_options_ffi(create: JsValue) -> FileSystemGetDirectoryOptions = "webapi_FileSystemGetDirectoryOptions" "new"

#cfg(target="wasm-gc")
fn file_system_get_directory_options_empty_ffi() -> FileSystemGetDirectoryOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn file_system_get_directory_options_get_create_ffi(obj: JsValue) -> JsValue = "webapi_FileSystemGetDirectoryOptions" "get_create"