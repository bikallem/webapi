extern "js" fn xml_http_request_new_ffi() -> XMLHttpRequest = "() => new XMLHttpRequest()"

extern "js" fn xml_http_request_onreadystatechange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onreadystatechange"

///|
fn xml_http_request_onreadystatechange_ffi(obj: JsValue) -> EventHandler {
  xml_http_request_onreadystatechange_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_set_onreadystatechange_ffi(obj: JsValue, onreadystatechange: JsValue) -> Unit = "(obj, onreadystatechange) => { obj.onreadystatechange = onreadystatechange; }"

extern "js" fn xml_http_request_ready_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn xml_http_request_ready_state_ffi(obj: JsValue) -> UInt {
  xml_http_request_ready_state_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_open_ffi(obj: JsValue, method_: JsValue, url: JsValue) -> Unit = "(obj, method_, url) => obj.open(method_, url)"

extern "js" fn xml_http_request_open_2_ffi(obj: JsValue, method_: JsValue, url: JsValue, async_: JsValue, username: JsValue, password: JsValue) -> Unit = "(obj, method_, url, async_, username, password) => obj.open_2(method_, url, async_, username, password)"

extern "js" fn xml_http_request_set_request_header_ffi(obj: JsValue, name: JsValue, value: JsValue) -> Unit = "(obj, name, value) => obj.setRequestHeader(name, value)"

extern "js" fn xml_http_request_timeout_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.timeout"

///|
fn xml_http_request_timeout_ffi(obj: JsValue) -> UInt {
  xml_http_request_timeout_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_set_timeout_ffi(obj: JsValue, timeout: JsValue) -> Unit = "(obj, timeout) => { obj.timeout = timeout; }"

extern "js" fn xml_http_request_with_credentials_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.withCredentials"

///|
fn xml_http_request_with_credentials_ffi(obj: JsValue) -> Bool {
  xml_http_request_with_credentials_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_set_with_credentials_ffi(obj: JsValue, with_credentials: JsValue) -> Unit = "(obj, withCredentials) => { obj.withCredentials = withCredentials; }"

extern "js" fn xml_http_request_upload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.upload"

///|
fn xml_http_request_upload_ffi(obj: JsValue) -> XMLHttpRequestUpload {
  xml_http_request_upload_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_send_ffi(obj: JsValue, body: JsValue) -> Unit = "(obj, body) => obj.send(body)"

extern "js" fn xml_http_request_abort_ffi(obj: JsValue) -> Unit = "(obj) => obj.abort()"

extern "js" fn xml_http_request_response_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.responseURL"

///|
fn xml_http_request_response_url_ffi(obj: JsValue) -> String {
  xml_http_request_response_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_status_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.status"

///|
fn xml_http_request_status_ffi(obj: JsValue) -> UInt {
  xml_http_request_status_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_status_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.statusText"

///|
fn xml_http_request_status_text_ffi(obj: JsValue) -> String {
  xml_http_request_status_text_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_get_response_header_ffi(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.getResponseHeader(name)"

extern "js" fn xml_http_request_get_all_response_headers_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getAllResponseHeaders()"

///|
fn xml_http_request_get_all_response_headers_ffi(obj: JsValue) -> String {
  xml_http_request_get_all_response_headers_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_override_mime_type_ffi(obj: JsValue, mime: JsValue) -> Unit = "(obj, mime) => obj.overrideMimeType(mime)"

extern "js" fn xml_http_request_response_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.responseType"

///|
fn xml_http_request_response_type_ffi(obj: JsValue) -> XMLHttpRequestResponseType {
  xml_http_request_response_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_set_response_type_ffi(obj: JsValue, response_type: JsValue) -> Unit = "(obj, responseType) => { obj.responseType = responseType; }"

extern "js" fn xml_http_request_response_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.response"

///|
fn xml_http_request_response_ffi(obj: JsValue) -> JsValue {
  xml_http_request_response_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_response_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.responseText"

///|
fn xml_http_request_response_text_ffi(obj: JsValue) -> String {
  xml_http_request_response_text_ffi_js(obj).unsafe_cast()
}

extern "js" fn xml_http_request_response_xml_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.responseXML"

///|
fn xml_http_request_response_xml_ffi(obj: JsValue) -> Document {
  xml_http_request_response_xml_ffi_js(obj).unsafe_cast()
}