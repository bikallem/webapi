///|
fn file_reader_sync_new_ffi() -> FileReaderSync = "webapi_FileReaderSync" "new"

///|
fn file_reader_sync_read_as_array_buffer_ffi(
  obj : JsValue,
  blob : JsValue,
) -> ArrayBuffer = "webapi_FileReaderSync" "readAsArrayBuffer"

///|
fn file_reader_sync_read_as_binary_string_ffi_wasm(
  obj : JsValue,
  blob : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsBinaryString"

///|
fn file_reader_sync_read_as_binary_string_ffi(
  obj : JsValue,
  blob : JsValue,
) -> String {
  jsvalue_to_string(file_reader_sync_read_as_binary_string_ffi_wasm(obj, blob))
}

///|
fn file_reader_sync_read_as_text_ffi_wasm(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsText"

///|
fn file_reader_sync_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> String {
  jsvalue_to_string(file_reader_sync_read_as_text_ffi_wasm(obj, blob, encoding))
}

///|
fn file_reader_sync_read_as_data_url_ffi_wasm(
  obj : JsValue,
  blob : JsValue,
) -> JsValue = "webapi_FileReaderSync" "readAsDataURL"

///|
fn file_reader_sync_read_as_data_url_ffi(
  obj : JsValue,
  blob : JsValue,
) -> String {
  jsvalue_to_string(file_reader_sync_read_as_data_url_ffi_wasm(obj, blob))
}
