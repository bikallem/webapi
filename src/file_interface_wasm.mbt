///|
fn file_new_ffi(
  file_bits : JsValue,
  file_name : JsValue,
  options : JsValue,
) -> File = "webapi_File" "new"

///|
fn file_name_ffi(obj : JsValue) -> JsValue = "webapi_File" "get_name"

///|
fn file_last_modified_ffi(obj : JsValue) -> JsValue = "webapi_File" "get_lastModified"
