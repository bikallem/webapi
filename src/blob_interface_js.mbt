extern "js" fn blob_new_ffi(blob_parts: JsValue, options: JsValue) -> Blob = "(blob_parts, options) => new Blob(blob_parts, options)"

extern "js" fn blob_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
fn blob_size_ffi(obj: JsValue) -> UInt64 {
  blob_size_ffi_js(obj).unsafe_cast()
}

extern "js" fn blob_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn blob_type_ffi(obj: JsValue) -> String {
  blob_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn blob_slice_ffi_js(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> JsValue = "(obj, start, end, content_type) => obj.slice(start, end, content_type)"

///|
fn blob_slice_ffi(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> Blob {
  blob_slice_ffi_js(obj, start, end, content_type).unsafe_cast()
}

extern "js" fn blob_stream_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.stream()"

///|
fn blob_stream_ffi(obj: JsValue) -> ReadableStream {
  blob_stream_ffi_js(obj).unsafe_cast()
}

extern "js" fn blob_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text()"

///|
fn blob_text_ffi(obj: JsValue) -> @js_async.Promise[String] {
  blob_text_ffi_js(obj).unsafe_cast()
}

extern "js" fn blob_array_buffer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

///|
fn blob_array_buffer_ffi(obj: JsValue) -> @js_async.Promise[ArrayBuffer] {
  blob_array_buffer_ffi_js(obj).unsafe_cast()
}

extern "js" fn blob_bytes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

///|
fn blob_bytes_ffi(obj: JsValue) -> @js_async.Promise[Uint8Array] {
  blob_bytes_ffi_js(obj).unsafe_cast()
}