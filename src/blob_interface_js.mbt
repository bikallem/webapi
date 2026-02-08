extern "js" fn blob_new_ffi(blob_parts: JsValue, options: JsValue) -> Blob = "(blob_parts, options) => new Blob(blob_parts, options)"

extern "js" fn blob_size_ffi(obj: JsValue) -> JsValue = "(obj) => obj.size"

extern "js" fn blob_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn blob_slice_ffi(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> JsValue = "(obj, start, end, content_type) => obj.slice(start, end, content_type)"

extern "js" fn blob_stream_ffi(obj: JsValue) -> JsValue = "(obj) => obj.stream()"

extern "js" fn blob_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.text()"

extern "js" fn blob_array_buffer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

extern "js" fn blob_bytes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"