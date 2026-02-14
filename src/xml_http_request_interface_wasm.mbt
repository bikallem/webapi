///|
fn xml_http_request_new_ffi() -> XMLHttpRequest = "webapi_XMLHttpRequest" "new"

///|
fn xml_http_request_onreadystatechange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "get_onreadystatechange"

///|
fn xml_http_request_onreadystatechange_ffi(obj : JsValue) -> EventHandler {
  xml_http_request_onreadystatechange_ffi_wasm(obj).unsafe_cast()
}

///|
fn xml_http_request_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "set_onreadystatechange"

///|
fn xml_http_request_ready_state_ffi(obj : JsValue) -> UInt = "webapi_XMLHttpRequest" "get_readyState"

///|
fn xml_http_request_open_ffi(
  obj : JsValue,
  method_ : JsValue,
  url : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "open"

///|
fn xml_http_request_open_with_credentials_ffi(
  obj : JsValue,
  method_ : JsValue,
  url : JsValue,
  async_ : JsValue,
  username : JsValue,
  password : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "open_with_credentials"

///|
fn xml_http_request_set_request_header_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "setRequestHeader"

///|
fn xml_http_request_timeout_ffi(obj : JsValue) -> UInt = "webapi_XMLHttpRequest" "get_timeout"

///|
fn xml_http_request_set_timeout_ffi(obj : JsValue, timeout : JsValue) -> Unit = "webapi_XMLHttpRequest" "set_timeout"

///|
fn xml_http_request_with_credentials_ffi(obj : JsValue) -> Bool = "webapi_XMLHttpRequest" "get_withCredentials"

///|
fn xml_http_request_set_with_credentials_ffi(
  obj : JsValue,
  with_credentials : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "set_withCredentials"

///|
fn xml_http_request_upload_ffi(obj : JsValue) -> XMLHttpRequestUpload = "webapi_XMLHttpRequest" "get_upload"

///|
fn xml_http_request_send_ffi(obj : JsValue, body : JsValue) -> Unit = "webapi_XMLHttpRequest" "send"

///|
fn xml_http_request_abort_ffi(obj : JsValue) -> Unit = "webapi_XMLHttpRequest" "abort"

///|
fn xml_http_request_response_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "get_responseURL"

///|
fn xml_http_request_response_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(xml_http_request_response_url_ffi_wasm(obj))
}

///|
fn xml_http_request_status_ffi(obj : JsValue) -> UInt = "webapi_XMLHttpRequest" "get_status"

///|
fn xml_http_request_status_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "get_statusText"

///|
fn xml_http_request_status_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(xml_http_request_status_text_ffi_wasm(obj))
}

///|
fn xml_http_request_get_response_header_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "webapi_XMLHttpRequest" "getResponseHeader"

///|
fn xml_http_request_get_all_response_headers_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "getAllResponseHeaders"

///|
fn xml_http_request_get_all_response_headers_ffi(obj : JsValue) -> String {
  jsvalue_to_string(xml_http_request_get_all_response_headers_ffi_wasm(obj))
}

///|
fn xml_http_request_override_mime_type_ffi(
  obj : JsValue,
  mime : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "overrideMimeType"

///|
fn xml_http_request_response_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "get_responseType"

///|
fn xml_http_request_response_type_ffi(
  obj : JsValue,
) -> XMLHttpRequestResponseType {
  XMLHttpRequestResponseType::from_unchecked(
    jsvalue_to_string(xml_http_request_response_type_ffi_wasm(obj)),
  )
}

///|
fn xml_http_request_set_response_type_ffi(
  obj : JsValue,
  response_type : JsValue,
) -> Unit = "webapi_XMLHttpRequest" "set_responseType"

///|
fn xml_http_request_response_ffi(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "get_response"

///|
fn xml_http_request_response_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_XMLHttpRequest" "get_responseText"

///|
fn xml_http_request_response_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(xml_http_request_response_text_ffi_wasm(obj))
}

///|
fn xml_http_request_response_xml_ffi(obj : JsValue) -> Document = "webapi_XMLHttpRequest" "get_responseXML"
