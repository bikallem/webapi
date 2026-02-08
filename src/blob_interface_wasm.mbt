fn blob_new_ffi(blob_parts: JsValue, options: JsValue) -> Blob = "webapi_Blob" "new"

fn blob_size_ffi(obj: JsValue) -> JsValue = "webapi_Blob" "get_size"

fn blob_type_ffi(obj: JsValue) -> JsValue = "webapi_Blob" "get_type"

fn blob_slice_ffi(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> JsValue = "webapi_Blob" "slice"

fn blob_stream_ffi(obj: JsValue) -> JsValue = "webapi_Blob" "stream"

fn blob_text_ffi(obj: JsValue) -> JsValue = "webapi_Blob" "text"

fn blob_array_buffer_ffi(obj: JsValue) -> JsValue = "webapi_Blob" "arrayBuffer"

fn blob_bytes_ffi(obj: JsValue) -> JsValue = "webapi_Blob" "bytes"