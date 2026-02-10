fn response_new_ffi(body: JsValue, init: JsValue) -> Response = "webapi_Response" "new"

fn response_error_ffi() -> Response = "webapi_Response" "error"

fn response_redirect_ffi(url: JsValue, status: JsValue) -> Response = "webapi_Response" "redirect"

fn response_json_ffi(data: JsValue, init: JsValue) -> Response = "webapi_Response" "json"

fn response_type_ffi(obj: JsValue) -> ResponseType = "webapi_Response" "get_type"

fn response_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "get_url"

///|
fn response_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(response_url_ffi_wasm(obj))
}

fn response_redirected_ffi(obj: JsValue) -> Bool = "webapi_Response" "get_redirected"

fn response_status_ffi(obj: JsValue) -> UInt = "webapi_Response" "get_status"

fn response_ok_ffi(obj: JsValue) -> Bool = "webapi_Response" "get_ok"

fn response_status_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "get_statusText"

///|
fn response_status_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(response_status_text_ffi_wasm(obj))
}

fn response_headers_ffi(obj: JsValue) -> Headers = "webapi_Response" "get_headers"

fn response_clone_ffi(obj: JsValue) -> Response = "webapi_Response" "clone"

fn response_body_ffi(obj: JsValue) -> ReadableStream = "webapi_Response" "get_body"

fn response_body_used_ffi(obj: JsValue) -> Bool = "webapi_Response" "get_bodyUsed"

fn response_array_buffer_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "arrayBuffer"

///|
fn response_array_buffer_ffi(obj: JsValue) -> @js_async.Promise[ArrayBuffer] {
  response_array_buffer_ffi_wasm(obj).unsafe_cast()
}

fn response_blob_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "blob"

///|
fn response_blob_ffi(obj: JsValue) -> @js_async.Promise[Blob] {
  response_blob_ffi_wasm(obj).unsafe_cast()
}

fn response_bytes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "bytes"

///|
fn response_bytes_ffi(obj: JsValue) -> @js_async.Promise[Uint8Array] {
  response_bytes_ffi_wasm(obj).unsafe_cast()
}

fn response_form_data_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "formData"

///|
fn response_form_data_ffi(obj: JsValue) -> @js_async.Promise[FormData] {
  response_form_data_ffi_wasm(obj).unsafe_cast()
}

fn response_json_2_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "json_2"

///|
fn response_json_2_ffi(obj: JsValue) -> @js_async.Promise[JsValue] {
  response_json_2_ffi_wasm(obj).unsafe_cast()
}

fn response_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Response" "text"

///|
fn response_text_ffi(obj: JsValue) -> @js_async.Promise[String] {
  response_text_ffi_wasm(obj).unsafe_cast()
}