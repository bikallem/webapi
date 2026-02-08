extern "js" fn response_new_ffi(body: JsValue, init: JsValue) -> Response = "(body, init) => new Response(body, init)"

extern "js" fn response_error_ffi() -> JsValue = "() => Response.error()"

extern "js" fn response_redirect_ffi(url: JsValue, status: JsValue) -> JsValue = "(url, status) => Response.redirect(url, status)"

extern "js" fn response_json_ffi(data: JsValue, init: JsValue) -> JsValue = "(data, init) => Response.json(data, init)"

extern "js" fn response_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn response_url_ffi(obj: JsValue) -> JsValue = "(obj) => obj.url"

extern "js" fn response_redirected_ffi(obj: JsValue) -> JsValue = "(obj) => obj.redirected"

extern "js" fn response_status_ffi(obj: JsValue) -> JsValue = "(obj) => obj.status"

extern "js" fn response_ok_ffi(obj: JsValue) -> JsValue = "(obj) => obj.ok"

extern "js" fn response_status_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.statusText"

extern "js" fn response_headers_ffi(obj: JsValue) -> JsValue = "(obj) => obj.headers"

extern "js" fn response_clone_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clone()"

extern "js" fn response_body_ffi(obj: JsValue) -> JsValue = "(obj) => obj.body"

extern "js" fn response_body_used_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bodyUsed"

extern "js" fn response_array_buffer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

extern "js" fn response_blob_ffi(obj: JsValue) -> JsValue = "(obj) => obj.blob()"

extern "js" fn response_bytes_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

extern "js" fn response_form_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.formData()"

extern "js" fn response_json_2_ffi(obj: JsValue) -> JsValue = "(obj) => obj.json_2()"

extern "js" fn response_text_ffi(obj: JsValue) -> JsValue = "(obj) => obj.text()"