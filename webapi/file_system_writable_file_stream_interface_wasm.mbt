///|
fn file_system_writable_file_stream_write_ffi_wasm(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "webapi_FileSystemWritableFileStream" "write"

///|
fn file_system_writable_file_stream_write_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_write_ffi_wasm(obj, data).unsafe_cast()
}

///|
fn file_system_writable_file_stream_seek_ffi_wasm(
  obj : JsValue,
  position : JsValue,
) -> JsValue = "webapi_FileSystemWritableFileStream" "seek"

///|
fn file_system_writable_file_stream_seek_ffi(
  obj : JsValue,
  position : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_seek_ffi_wasm(obj, position).unsafe_cast()
}

///|
fn file_system_writable_file_stream_truncate_ffi_wasm(
  obj : JsValue,
  size : JsValue,
) -> JsValue = "webapi_FileSystemWritableFileStream" "truncate"

///|
fn file_system_writable_file_stream_truncate_ffi(
  obj : JsValue,
  size : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_truncate_ffi_wasm(obj, size).unsafe_cast()
}
