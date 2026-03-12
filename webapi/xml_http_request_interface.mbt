// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequest
// Specifications: xhr.idl

///|
/// [XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest)
#external
pub type XMLHttpRequest

///|
pub impl TJsValue for XMLHttpRequest with to_js(self : XMLHttpRequest) -> JsValue = "%identity"

///|
pub impl FromJsAny for XMLHttpRequest with from_js_any(value : JsAny) -> XMLHttpRequest = "%identity"

///|
pub fn[T : TXMLHttpRequest] XMLHttpRequest::into(self : XMLHttpRequest) -> T = "%identity"

///|
pub impl TXMLHttpRequest for XMLHttpRequest

///|
pub impl TXMLHttpRequestEventTarget for XMLHttpRequest

///|
pub impl TEventTarget for XMLHttpRequest

///|
pub fn XMLHttpRequest::new() -> XMLHttpRequest {
  xml_http_request_new_ffi()
}

///|
pub const XML_HTTP_REQUEST_UNSENT : UInt = 0

///|
pub const XML_HTTP_REQUEST_OPENED : UInt = 1

///|
pub const XML_HTTP_REQUEST_HEADERS_RECEIVED : UInt = 2

///|
pub const XML_HTTP_REQUEST_LOADING : UInt = 3

///|
pub const XML_HTTP_REQUEST_DONE : UInt = 4

///|
pub(open) trait TXMLHttpRequestSendBody: TJsValue {}

///|
pub impl TXMLHttpRequestSendBody for Document

///|
pub impl TXMLHttpRequestSendBody for XMLHttpRequestBodyInit

///|
/// [XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest) interface.
pub trait TXMLHttpRequest: TXMLHttpRequestEventTarget {
  onreadystatechange(self : Self) -> EventHandler = _
  set_onreadystatechange(self : Self, onreadystatechange : (Event) -> JsValue) -> Unit = _
  ready_state(self : Self) -> UInt = _
  open(self : Self, method_ : String, url : String) -> Unit = _
  open_with_credentials(
    self : Self,
    method_ : String,
    url : String,
    async_ : Bool,
    username? : String,
    password? : String,
  ) -> Unit = _
  set_request_header(self : Self, name : String, value : String) -> Unit = _
  timeout(self : Self) -> UInt = _
  set_timeout(self : Self, timeout : UInt) -> Unit = _
  with_credentials(self : Self) -> Bool = _
  set_with_credentials(self : Self, with_credentials : Bool) -> Unit = _
  upload(self : Self) -> XMLHttpRequestUpload = _
  send(self : Self, body? : &TXMLHttpRequestSendBody) -> Unit = _
  abort(self : Self) -> Unit = _
  response_url(self : Self) -> String = _
  status(self : Self) -> UInt = _
  status_text(self : Self) -> String = _
  get_response_header(self : Self, name : String) -> String? = _
  get_all_response_headers(self : Self) -> String = _
  override_mime_type(self : Self, mime : String) -> Unit = _
  response_type(self : Self) -> XMLHttpRequestResponseType = _
  set_response_type(self : Self, response_type : XMLHttpRequestResponseType) -> Unit = _
  response(self : Self) -> JsValue = _
  response_text(self : Self) -> String = _
  response_xml(self : Self) -> Document = _
}

///|
/// [XMLHttpRequest.onreadystatechange](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/onreadystatechange)
impl TXMLHttpRequest with onreadystatechange(self : Self) -> EventHandler {
  xml_http_request_onreadystatechange_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.onreadystatechange](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/onreadystatechange)
impl TXMLHttpRequest with set_onreadystatechange(
  self : Self,
  onreadystatechange : (Event) -> JsValue,
) -> Unit {
  xml_http_request_set_onreadystatechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onreadystatechange)),
  )
}

///|
/// [XMLHttpRequest.readyState](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/readyState)
impl TXMLHttpRequest with ready_state(self : Self) -> UInt {
  xml_http_request_ready_state_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.open](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/open)
impl TXMLHttpRequest with open(self : Self, method_ : String, url : String) -> Unit {
  xml_http_request_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(method_),
    TJsValue::to_js(url),
  )
}

///|
/// [XMLHttpRequest.open](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/open)
impl TXMLHttpRequest with open_with_credentials(
  self : Self,
  method_ : String,
  url : String,
  async_ : Bool,
  username? : String,
  password? : String,
) -> Unit {
  xml_http_request_open_with_credentials_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(method_),
    TJsValue::to_js(url),
    TJsValue::to_js(async_),
    opt_to_js(username),
    opt_to_js(password),
  )
}

///|
/// [XMLHttpRequest.setRequestHeader](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/setRequestHeader)
impl TXMLHttpRequest with set_request_header(
  self : Self,
  name : String,
  value : String,
) -> Unit {
  xml_http_request_set_request_header_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(value),
  )
}

///|
/// [XMLHttpRequest.timeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/timeout)
impl TXMLHttpRequest with timeout(self : Self) -> UInt {
  xml_http_request_timeout_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.timeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/timeout)
impl TXMLHttpRequest with set_timeout(self : Self, timeout : UInt) -> Unit {
  xml_http_request_set_timeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(timeout),
  )
}

///|
/// [XMLHttpRequest.withCredentials](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/withCredentials)
impl TXMLHttpRequest with with_credentials(self : Self) -> Bool {
  xml_http_request_with_credentials_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.withCredentials](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/withCredentials)
impl TXMLHttpRequest with set_with_credentials(
  self : Self,
  with_credentials : Bool,
) -> Unit {
  xml_http_request_set_with_credentials_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(with_credentials),
  )
}

///|
/// [XMLHttpRequest.upload](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/upload)
impl TXMLHttpRequest with upload(self : Self) -> XMLHttpRequestUpload {
  xml_http_request_upload_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.send](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/send)
impl TXMLHttpRequest with send(self : Self, body? : &TXMLHttpRequestSendBody) -> Unit {
  xml_http_request_send_ffi(
    TJsValue::to_js(self),
    match body {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [XMLHttpRequest.abort](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/abort)
impl TXMLHttpRequest with abort(self : Self) -> Unit {
  xml_http_request_abort_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.responseURL](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseURL)
impl TXMLHttpRequest with response_url(self : Self) -> String {
  xml_http_request_response_url_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.status](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/status)
impl TXMLHttpRequest with status(self : Self) -> UInt {
  xml_http_request_status_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.statusText](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/statusText)
impl TXMLHttpRequest with status_text(self : Self) -> String {
  xml_http_request_status_text_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.getResponseHeader](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/getResponseHeader)
impl TXMLHttpRequest with get_response_header(self : Self, name : String) -> String? {
  xml_http_request_get_response_header_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  ).to_option_prim()
}

///|
/// [XMLHttpRequest.getAllResponseHeaders](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/getAllResponseHeaders)
impl TXMLHttpRequest with get_all_response_headers(self : Self) -> String {
  xml_http_request_get_all_response_headers_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.overrideMimeType](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/overrideMimeType)
impl TXMLHttpRequest with override_mime_type(self : Self, mime : String) -> Unit {
  xml_http_request_override_mime_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(mime),
  )
}

///|
/// [XMLHttpRequest.responseType](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseType)
impl TXMLHttpRequest with response_type(self : Self) -> XMLHttpRequestResponseType {
  xml_http_request_response_type_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.responseType](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseType)
impl TXMLHttpRequest with set_response_type(
  self : Self,
  response_type : XMLHttpRequestResponseType,
) -> Unit {
  xml_http_request_set_response_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(response_type),
  )
}

///|
/// [XMLHttpRequest.response](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/response)
impl TXMLHttpRequest with response(self : Self) -> JsValue {
  xml_http_request_response_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.responseText](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseText)
impl TXMLHttpRequest with response_text(self : Self) -> String {
  xml_http_request_response_text_ffi(TJsValue::to_js(self))
}

///|
/// [XMLHttpRequest.responseXML](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseXML)
impl TXMLHttpRequest with response_xml(self : Self) -> Document {
  xml_http_request_response_xml_ffi(TJsValue::to_js(self))
}
