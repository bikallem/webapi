// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequest
// Specifications: xhr.idl

///|
#external
pub type XMLHttpRequest

///|
pub impl TJsValue for XMLHttpRequest with to_js(self : XMLHttpRequest) -> JsValue = "%identity"

///|
pub fn[T : TXMLHttpRequest] XMLHttpRequest::into(self : XMLHttpRequest) -> T = "%identity"

///|
pub impl TXMLHttpRequest for XMLHttpRequest

///|
pub impl TXMLHttpRequestEventTarget for XMLHttpRequest

///|
pub impl TEventTarget for XMLHttpRequest

///|
extern "js" fn xml_http_request_new_ffi() -> XMLHttpRequest = "() => new XMLHttpRequest()"

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
pub(open) trait TXMLHttpRequestSendBody {
  to_js(self : Self) -> JsValue
}

///|
pub impl TXMLHttpRequestSendBody for Document with to_js(self : Document) -> JsValue = "%identity"

///|
pub impl TXMLHttpRequestSendBody for XMLHttpRequestBodyInit with to_js(
  self : XMLHttpRequestBodyInit,
) -> JsValue = "%identity"

///|
pub trait TXMLHttpRequest: TXMLHttpRequestEventTarget {
  onreadystatechange(self : Self) -> EventHandler = _
  set_onreadystatechange(self : Self, onreadystatechange : EventHandler) -> Unit = _
  ready_state(self : Self) -> UInt = _
  open(self : Self, method_ : String, url : String) -> Unit = _
  open_2(
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
extern "js" fn xml_http_request_onreadystatechange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.onreadystatechange"

///|
impl TXMLHttpRequest with onreadystatechange(self : Self) -> EventHandler {
  xml_http_request_onreadystatechange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_set_onreadystatechange_ffi(
  obj : JsValue,
  onreadystatechange : JsValue,
) -> Unit = "(obj, onreadystatechange) => { obj.onreadystatechange = onreadystatechange; }"

///|
impl TXMLHttpRequest with set_onreadystatechange(
  self : Self,
  onreadystatechange : EventHandler,
) -> Unit {
  xml_http_request_set_onreadystatechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onreadystatechange),
  )
}

///|
extern "js" fn xml_http_request_ready_state_ffi(obj : JsValue) -> UInt = "(obj) => obj.readyState"

///|
impl TXMLHttpRequest with ready_state(self : Self) -> UInt {
  xml_http_request_ready_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_open_ffi(
  obj : JsValue,
  method_ : JsValue,
  url : JsValue,
) -> Unit = "(obj, method_, url) => obj.open(method_, url)"

///|
impl TXMLHttpRequest with open(self : Self, method_ : String, url : String) -> Unit {
  xml_http_request_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(method_),
    TJsValue::to_js(url),
  )
}

///|
extern "js" fn xml_http_request_open_2_ffi(
  obj : JsValue,
  method_ : JsValue,
  url : JsValue,
  async_ : JsValue,
  username : JsValue,
  password : JsValue,
) -> Unit = "(obj, method_, url, async_, username, password) => obj.open_2(method_, url, async_, username, password)"

///|
impl TXMLHttpRequest with open_2(
  self : Self,
  method_ : String,
  url : String,
  async_ : Bool,
  username? : String = JsValue::null(),
  password? : String = JsValue::null(),
) -> Unit {
  xml_http_request_open_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(method_),
    TJsValue::to_js(url),
    TJsValue::to_js(async_),
    TJsValue::to_js(username),
    TJsValue::to_js(password),
  )
}

///|
extern "js" fn xml_http_request_set_request_header_ffi(
  obj : JsValue,
  name : JsValue,
  value : JsValue,
) -> Unit = "(obj, name, value) => obj.setRequestHeader(name, value)"

///|
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
extern "js" fn xml_http_request_timeout_ffi(obj : JsValue) -> UInt = "(obj) => obj.timeout"

///|
impl TXMLHttpRequest with timeout(self : Self) -> UInt {
  xml_http_request_timeout_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_set_timeout_ffi(
  obj : JsValue,
  timeout : JsValue,
) -> Unit = "(obj, timeout) => { obj.timeout = timeout; }"

///|
impl TXMLHttpRequest with set_timeout(self : Self, timeout : UInt) -> Unit {
  xml_http_request_set_timeout_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(timeout),
  )
}

///|
extern "js" fn xml_http_request_with_credentials_ffi(obj : JsValue) -> Bool = "(obj) => obj.withCredentials"

///|
impl TXMLHttpRequest with with_credentials(self : Self) -> Bool {
  xml_http_request_with_credentials_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_set_with_credentials_ffi(
  obj : JsValue,
  with_credentials : JsValue,
) -> Unit = "(obj, withCredentials) => { obj.withCredentials = with_credentials; }"

///|
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
extern "js" fn xml_http_request_upload_ffi(
  obj : JsValue,
) -> XMLHttpRequestUpload = "(obj) => obj.upload"

///|
impl TXMLHttpRequest with upload(self : Self) -> XMLHttpRequestUpload {
  xml_http_request_upload_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_send_ffi(obj : JsValue, body : JsValue) -> Unit = "(obj, body) => obj.send(body)"

///|
impl TXMLHttpRequest with send(
  self : Self,
  body? : &TXMLHttpRequestSendBody = JsValue::null(),
) -> Unit {
  xml_http_request_send_ffi(TJsValue::to_js(self), body.to_js())
}

///|
extern "js" fn xml_http_request_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort()"

///|
impl TXMLHttpRequest with abort(self : Self) -> Unit {
  xml_http_request_abort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_response_url_ffi(obj : JsValue) -> String = "(obj) => obj.responseURL"

///|
impl TXMLHttpRequest with response_url(self : Self) -> String {
  xml_http_request_response_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_status_ffi(obj : JsValue) -> UInt = "(obj) => obj.status"

///|
impl TXMLHttpRequest with status(self : Self) -> UInt {
  xml_http_request_status_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_status_text_ffi(obj : JsValue) -> String = "(obj) => obj.statusText"

///|
impl TXMLHttpRequest with status_text(self : Self) -> String {
  xml_http_request_status_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_get_response_header_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.getResponseHeader(name)"

///|
impl TXMLHttpRequest with get_response_header(self : Self, name : String) -> String? {
  let result = xml_http_request_get_response_header_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn xml_http_request_get_all_response_headers_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.getAllResponseHeaders()"

///|
impl TXMLHttpRequest with get_all_response_headers(self : Self) -> String {
  xml_http_request_get_all_response_headers_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_override_mime_type_ffi(
  obj : JsValue,
  mime : JsValue,
) -> Unit = "(obj, mime) => obj.overrideMimeType(mime)"

///|
impl TXMLHttpRequest with override_mime_type(self : Self, mime : String) -> Unit {
  xml_http_request_override_mime_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(mime),
  )
}

///|
extern "js" fn xml_http_request_response_type_ffi(
  obj : JsValue,
) -> XMLHttpRequestResponseType = "(obj) => obj.responseType"

///|
impl TXMLHttpRequest with response_type(self : Self) -> XMLHttpRequestResponseType {
  xml_http_request_response_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_set_response_type_ffi(
  obj : JsValue,
  response_type : JsValue,
) -> Unit = "(obj, responseType) => { obj.responseType = response_type; }"

///|
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
extern "js" fn xml_http_request_response_ffi(obj : JsValue) -> JsValue = "(obj) => obj.response"

///|
impl TXMLHttpRequest with response(self : Self) -> JsValue {
  xml_http_request_response_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_response_text_ffi(obj : JsValue) -> String = "(obj) => obj.responseText"

///|
impl TXMLHttpRequest with response_text(self : Self) -> String {
  xml_http_request_response_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_response_xml_ffi(obj : JsValue) -> Document = "(obj) => obj.responseXML"

///|
impl TXMLHttpRequest with response_xml(self : Self) -> Document {
  xml_http_request_response_xml_ffi(TJsValue::to_js(self))
}
