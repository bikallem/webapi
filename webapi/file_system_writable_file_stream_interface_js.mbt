///|
extern "js" fn file_system_writable_file_stream_write_ffi_js(
  obj : JsValue,
  data : JsValue,
) -> JsValue = "(obj, data) => obj.write(data)"

///|
fn file_system_writable_file_stream_write_ffi(
  obj : JsValue,
  data : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_write_ffi_js(obj, data).unsafe_cast()
}

///|
extern "js" fn file_system_writable_file_stream_seek_ffi_js(
  obj : JsValue,
  position : JsValue,
) -> JsValue = "(obj, position) => obj.seek(position)"

///|
fn file_system_writable_file_stream_seek_ffi(
  obj : JsValue,
  position : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_seek_ffi_js(obj, position).unsafe_cast()
}

///|
extern "js" fn file_system_writable_file_stream_truncate_ffi_js(
  obj : JsValue,
  size : JsValue,
) -> JsValue = "(obj, size) => obj.truncate(size)"

///|
fn file_system_writable_file_stream_truncate_ffi(
  obj : JsValue,
  size : JsValue,
) -> JsPromise[JsValue] {
  file_system_writable_file_stream_truncate_ffi_js(obj, size).unsafe_cast()
}
