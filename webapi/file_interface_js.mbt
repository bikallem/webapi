///|
extern "js" fn file_new_ffi(
  file_bits : JsValue,
  file_name : JsValue,
  options : JsValue,
) -> File = "(file_bits, file_name, options) => new File(file_bits, file_name, options)"

///|
extern "js" fn file_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn file_name_ffi(obj : JsValue) -> String {
  file_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn file_last_modified_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lastModified"

///|
fn file_last_modified_ffi(obj : JsValue) -> Int64 {
  file_last_modified_ffi_js(obj).unsafe_cast()
}
