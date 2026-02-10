extern "js" fn response_new_ffi(body: JsValue, init: JsValue) -> Response = "(body, init) => new Response(body, init)"

extern "js" fn response_error_ffi_js() -> JsValue = "() => Response.error()"

///|
fn response_error_ffi() -> Response {
  response_error_ffi_js().unsafe_cast()
}

extern "js" fn response_redirect_ffi_js(url: JsValue, status: JsValue) -> JsValue = "(url, status) => Response.redirect(url, status)"

///|
fn response_redirect_ffi(url: JsValue, status: JsValue) -> Response {
  response_redirect_ffi_js(url, status).unsafe_cast()
}

extern "js" fn response_json_ffi_js(data: JsValue, init: JsValue) -> JsValue = "(data, init) => Response.json(data, init)"

///|
fn response_json_ffi(data: JsValue, init: JsValue) -> Response {
  response_json_ffi_js(data, init).unsafe_cast()
}

extern "js" fn response_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn response_type_ffi(obj: JsValue) -> ResponseType {
  response_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
fn response_url_ffi(obj: JsValue) -> String {
  response_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_redirected_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.redirected"

///|
fn response_redirected_ffi(obj: JsValue) -> Bool {
  response_redirected_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_status_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.status"

///|
fn response_status_ffi(obj: JsValue) -> UInt {
  response_status_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_ok_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ok"

///|
fn response_ok_ffi(obj: JsValue) -> Bool {
  response_ok_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_status_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.statusText"

///|
fn response_status_text_ffi(obj: JsValue) -> String {
  response_status_text_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_headers_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.headers"

///|
fn response_headers_ffi(obj: JsValue) -> Headers {
  response_headers_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_clone_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.clone()"

///|
fn response_clone_ffi(obj: JsValue) -> Response {
  response_clone_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_body_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.body"

///|
fn response_body_ffi(obj: JsValue) -> ReadableStream {
  response_body_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_body_used_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bodyUsed"

///|
fn response_body_used_ffi(obj: JsValue) -> Bool {
  response_body_used_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_array_buffer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

///|
fn response_array_buffer_ffi(obj: JsValue) -> @js_async.Promise[ArrayBuffer] {
  response_array_buffer_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_blob_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.blob()"

///|
fn response_blob_ffi(obj: JsValue) -> @js_async.Promise[Blob] {
  response_blob_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_bytes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

///|
fn response_bytes_ffi(obj: JsValue) -> @js_async.Promise[Uint8Array] {
  response_bytes_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_form_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.formData()"

///|
fn response_form_data_ffi(obj: JsValue) -> @js_async.Promise[FormData] {
  response_form_data_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_json_2_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.json_2()"

///|
fn response_json_2_ffi(obj: JsValue) -> @js_async.Promise[JsValue] {
  response_json_2_ffi_js(obj).unsafe_cast()
}

extern "js" fn response_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text()"

///|
fn response_text_ffi(obj: JsValue) -> @js_async.Promise[String] {
  response_text_ffi_js(obj).unsafe_cast()
}