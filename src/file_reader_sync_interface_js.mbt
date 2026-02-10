extern "js" fn file_reader_sync_new_ffi() -> FileReaderSync = "() => new FileReaderSync()"

extern "js" fn file_reader_sync_read_as_array_buffer_ffi_js(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsArrayBuffer(blob)"

///|
fn file_reader_sync_read_as_array_buffer_ffi(obj: JsValue, blob: JsValue) -> ArrayBuffer {
  file_reader_sync_read_as_array_buffer_ffi_js(obj, blob).unsafe_cast()
}

extern "js" fn file_reader_sync_read_as_binary_string_ffi_js(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsBinaryString(blob)"

///|
fn file_reader_sync_read_as_binary_string_ffi(obj: JsValue, blob: JsValue) -> String {
  file_reader_sync_read_as_binary_string_ffi_js(obj, blob).unsafe_cast()
}

extern "js" fn file_reader_sync_read_as_text_ffi_js(obj: JsValue, blob: JsValue, encoding: JsValue) -> JsValue = "(obj, blob, encoding) => obj.readAsText(blob, encoding)"

///|
fn file_reader_sync_read_as_text_ffi(obj: JsValue, blob: JsValue, encoding: JsValue) -> String {
  file_reader_sync_read_as_text_ffi_js(obj, blob, encoding).unsafe_cast()
}

extern "js" fn file_reader_sync_read_as_data_url_ffi_js(obj: JsValue, blob: JsValue) -> JsValue = "(obj, blob) => obj.readAsDataURL(blob)"

///|
fn file_reader_sync_read_as_data_url_ffi(obj: JsValue, blob: JsValue) -> String {
  file_reader_sync_read_as_data_url_ffi_js(obj, blob).unsafe_cast()
}