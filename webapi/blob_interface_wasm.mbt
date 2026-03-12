fn blob_new_ffi(blob_parts: JsValue, options: JsValue) -> Blob = "webapi_Blob" "new"

fn blob_size_ffi(obj: JsValue) -> UInt64 = "webapi_Blob" "get_size"

fn blob_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "get_type"

///|
fn blob_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(blob_type_ffi_wasm(obj))
}

fn blob_slice_ffi(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> Blob = "webapi_Blob" "slice"

fn blob_stream_ffi(obj: JsValue) -> ReadableStream = "webapi_Blob" "stream"

fn blob_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "text"

///|
fn blob_text_ffi(obj: JsValue) -> JsPromise[String] {
  blob_text_ffi_wasm(obj).unsafe_cast()
}

fn blob_array_buffer_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "arrayBuffer"

///|
fn blob_array_buffer_ffi(obj: JsValue) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi_wasm(obj).unsafe_cast()
}

fn blob_bytes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "bytes"

///|
fn blob_bytes_ffi(obj: JsValue) -> JsPromise[Uint8Array] {
  blob_bytes_ffi_wasm(obj).unsafe_cast()
}