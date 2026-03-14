// Do not edit. This file is generated.
// MoonBit type: FileSystemGetFileOptions
// Specifications: fs.idl

///|
/// [FileSystemGetFileOptions](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemGetFileOptions)
#external
pub type FileSystemGetFileOptions

///|
pub impl TJsValue for FileSystemGetFileOptions with to_js(
  self : FileSystemGetFileOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for FileSystemGetFileOptions with from_js_any(value : JsAny) -> FileSystemGetFileOptions = "%identity"

///|
pub fn FileSystemGetFileOptions::new(
  create? : Bool,
) -> FileSystemGetFileOptions {
  file_system_get_file_options_ffi(opt_to_js(create))
}

///|
pub fn FileSystemGetFileOptions::empty() -> FileSystemGetFileOptions {
  file_system_get_file_options_empty_ffi()
}

///|
pub fn FileSystemGetFileOptions::create(
  self : FileSystemGetFileOptions,
) -> Bool? {
  file_system_get_file_options_get_create_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn file_system_get_file_options_ffi(
  create : JsValue,
) -> FileSystemGetFileOptions =
  #|(create) => {
  #|  const obj = {};
  #|  if (create !== undefined) obj.create = create;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn file_system_get_file_options_empty_ffi() -> FileSystemGetFileOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn file_system_get_file_options_get_create_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.create"

///|
#cfg(target="wasm-gc")
fn file_system_get_file_options_ffi(
  create : JsValue,
) -> FileSystemGetFileOptions = "webapi_FileSystemGetFileOptions" "new"

///|
#cfg(target="wasm-gc")
fn file_system_get_file_options_empty_ffi() -> FileSystemGetFileOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn file_system_get_file_options_get_create_ffi(obj : JsValue) -> JsValue = "webapi_FileSystemGetFileOptions" "get_create"
