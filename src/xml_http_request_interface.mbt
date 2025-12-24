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
  send(self : Self, body? : &TXMLHttpRequestSendBody) -> Unit = _
  abort(self : Self) -> Unit = _
  get_response_header(self : Self, name : String) -> String = _
  get_all_response_headers(self : Self) -> String = _
  override_mime_type(self : Self, mime : String) -> Unit = _
}

///|
extern "js" fn xml_http_request_open_ffi(
  obj : JsValue,
  method_ : JsValue,
  url : JsValue,
) -> Unit = "(obj, method_, url) => obj.open(obj, method_, url)"

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
) -> Unit = "(obj, method_, url, async_, username, password) => obj.open_2(obj, method_, url, async_, username, password)"

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
) -> Unit = "(obj, name, value) => obj.setRequestHeader(obj, name, value)"

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
extern "js" fn xml_http_request_send_ffi(obj : JsValue, body : JsValue) -> Unit = "(obj, body) => obj.send(obj, body)"

///|
impl TXMLHttpRequest with send(
  self : Self,
  body? : &TXMLHttpRequestSendBody = JsValue::null(),
) -> Unit {
  xml_http_request_send_ffi(TJsValue::to_js(self), body.to_js())
}

///|
extern "js" fn xml_http_request_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort(obj)"

///|
impl TXMLHttpRequest with abort(self : Self) -> Unit {
  xml_http_request_abort_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_get_response_header_ffi(
  obj : JsValue,
  name : JsValue,
) -> String = "(obj, name) => obj.getResponseHeader(obj, name)"

///|
impl TXMLHttpRequest with get_response_header(self : Self, name : String) -> String {
  xml_http_request_get_response_header_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
extern "js" fn xml_http_request_get_all_response_headers_ffi(
  obj : JsValue,
) -> String = "(obj) => obj.getAllResponseHeaders(obj)"

///|
impl TXMLHttpRequest with get_all_response_headers(self : Self) -> String {
  xml_http_request_get_all_response_headers_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xml_http_request_override_mime_type_ffi(
  obj : JsValue,
  mime : JsValue,
) -> Unit = "(obj, mime) => obj.overrideMimeType(obj, mime)"

///|
impl TXMLHttpRequest with override_mime_type(self : Self, mime : String) -> Unit {
  xml_http_request_override_mime_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(mime),
  )
}
