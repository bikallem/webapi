// Do not edit. This file is generated.
// MoonBit type: Response
// Specifications: fetch.idl

///|
/// [Response](https://developer.mozilla.org/en-US/docs/Web/API/Response)
#external
pub type Response

///|
pub impl TJsValue for Response with to_js(self : Response) -> JsValue = "%identity"

///|
pub fn[T : TResponse] Response::into(self : Response) -> T = "%identity"

///|
pub impl TResponse for Response

///|
pub fn Response::new(
  body? : &TBodyInit = JsValue::null(),
  init? : ResponseInit = ResponseInit::empty(),
) -> Response {
  response_new_ffi(body.to_js(), TJsValue::to_js(init))
}

///|
/// [Response](https://developer.mozilla.org/en-US/docs/Web/API/Response) interface.
pub trait TResponse: TJsValue {
  type_(self : Self) -> ResponseType = _
  url(self : Self) -> String = _
  redirected(self : Self) -> Bool = _
  status(self : Self) -> UInt = _
  ok(self : Self) -> Bool = _
  status_text(self : Self) -> String = _
  headers(self : Self) -> Headers = _
  clone(self : Self) -> Response = _
  body(self : Self) -> ReadableStream = _
  body_used(self : Self) -> Bool = _
  array_buffer(self : Self) -> JsPromise[ArrayBuffer] = _
  blob(self : Self) -> JsPromise[Blob] = _
  bytes(self : Self) -> JsPromise[Uint8Array] = _
  form_data(self : Self) -> JsPromise[FormData] = _
  json_2(self : Self) -> JsPromise[JsValue] = _
  text(self : Self) -> JsPromise[String] = _
}

///|
/// [Response.error](https://developer.mozilla.org/en-US/docs/Web/API/Response/error)
pub fn Response::error() -> Response {
  response_error_ffi()
}

///|
/// [Response.redirect](https://developer.mozilla.org/en-US/docs/Web/API/Response/redirect)
pub fn Response::redirect(
  url : String,
  status? : UInt = (302 : UInt),
) -> Response {
  response_redirect_ffi(TJsValue::to_js(url), TJsValue::to_js(status))
}

///|
/// [Response.json](https://developer.mozilla.org/en-US/docs/Web/API/Response/json)
pub fn Response::json(
  data : JsValue,
  init? : ResponseInit = ResponseInit::empty(),
) -> Response {
  response_json_ffi(TJsValue::to_js(data), TJsValue::to_js(init))
}

///|
/// [Response.type](https://developer.mozilla.org/en-US/docs/Web/API/Response/type)
impl TResponse with type_(self : Self) -> ResponseType {
  response_type_ffi(TJsValue::to_js(self))
}

///|
/// [Response.url](https://developer.mozilla.org/en-US/docs/Web/API/Response/url)
impl TResponse with url(self : Self) -> String {
  response_url_ffi(TJsValue::to_js(self))
}

///|
/// [Response.redirected](https://developer.mozilla.org/en-US/docs/Web/API/Response/redirected)
impl TResponse with redirected(self : Self) -> Bool {
  response_redirected_ffi(TJsValue::to_js(self))
}

///|
/// [Response.status](https://developer.mozilla.org/en-US/docs/Web/API/Response/status)
impl TResponse with status(self : Self) -> UInt {
  response_status_ffi(TJsValue::to_js(self))
}

///|
/// [Response.ok](https://developer.mozilla.org/en-US/docs/Web/API/Response/ok)
impl TResponse with ok(self : Self) -> Bool {
  response_ok_ffi(TJsValue::to_js(self))
}

///|
/// [Response.statusText](https://developer.mozilla.org/en-US/docs/Web/API/Response/statusText)
impl TResponse with status_text(self : Self) -> String {
  response_status_text_ffi(TJsValue::to_js(self))
}

///|
/// [Response.headers](https://developer.mozilla.org/en-US/docs/Web/API/Response/headers)
impl TResponse with headers(self : Self) -> Headers {
  response_headers_ffi(TJsValue::to_js(self))
}

///|
/// [Response.clone](https://developer.mozilla.org/en-US/docs/Web/API/Response/clone)
impl TResponse with clone(self : Self) -> Response {
  response_clone_ffi(TJsValue::to_js(self))
}

///|
/// [Response.body](https://developer.mozilla.org/en-US/docs/Web/API/Response/body)
impl TResponse with body(self : Self) -> ReadableStream {
  response_body_ffi(TJsValue::to_js(self))
}

///|
/// [Response.bodyUsed](https://developer.mozilla.org/en-US/docs/Web/API/Response/bodyUsed)
impl TResponse with body_used(self : Self) -> Bool {
  response_body_used_ffi(TJsValue::to_js(self))
}

///|
/// [Response.arrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/Response/arrayBuffer)
impl TResponse with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  response_array_buffer_ffi(TJsValue::to_js(self))
}

///|
/// [Response.blob](https://developer.mozilla.org/en-US/docs/Web/API/Response/blob)
impl TResponse with blob(self : Self) -> JsPromise[Blob] {
  response_blob_ffi(TJsValue::to_js(self))
}

///|
/// [Response.bytes](https://developer.mozilla.org/en-US/docs/Web/API/Response/bytes)
impl TResponse with bytes(self : Self) -> JsPromise[Uint8Array] {
  response_bytes_ffi(TJsValue::to_js(self))
}

///|
/// [Response.formData](https://developer.mozilla.org/en-US/docs/Web/API/Response/formData)
impl TResponse with form_data(self : Self) -> JsPromise[FormData] {
  response_form_data_ffi(TJsValue::to_js(self))
}

///|
/// [Response.json_2](https://developer.mozilla.org/en-US/docs/Web/API/Response/json_2)
impl TResponse with json_2(self : Self) -> JsPromise[JsValue] {
  response_json_2_ffi(TJsValue::to_js(self))
}

///|
/// [Response.text](https://developer.mozilla.org/en-US/docs/Web/API/Response/text)
impl TResponse with text(self : Self) -> JsPromise[String] {
  response_text_ffi(TJsValue::to_js(self))
}
