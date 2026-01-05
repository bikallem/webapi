// Do not edit. This file is generated.
// MoonBit type: Response
// Specifications: fetch.idl

///|
#external
pub type Response

///|
pub impl TJsValue for Response with to_js(self : Response) -> JsValue = "%identity"

///|
pub fn[T : TResponse] Response::into(self : Response) -> T = "%identity"

///|
pub impl TResponse for Response

///|
extern "js" fn response_new_ffi(body : JsValue, init : JsValue) -> Response = "(body, init) => new Response(body, init)"

///|
pub fn Response::new(
  body? : BodyInit = JsValue::null(),
  init? : ResponseInit = ResponseInit::empty(),
) -> Response {
  response_new_ffi(TJsValue::to_js(body), TJsValue::to_js(init))
}

///|
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
extern "js" fn response_error_ffi() -> Response = "() => Response.error()"

///|
pub fn Response::error() -> Response {
  response_error_ffi()
}

///|
extern "js" fn response_redirect_ffi(
  url : JsValue,
  status : JsValue,
) -> Response = "(url, status) => Response.redirect(url, status)"

///|
pub fn Response::redirect(
  url : String,
  status? : UInt = (302 : UInt),
) -> Response {
  response_redirect_ffi(TJsValue::to_js(url), TJsValue::to_js(status))
}

///|
extern "js" fn response_json_ffi(data : JsValue, init : JsValue) -> Response = "(data, init) => Response.json(data, init)"

///|
pub fn Response::json(
  data : JsValue,
  init? : ResponseInit = ResponseInit::empty(),
) -> Response {
  response_json_ffi(TJsValue::to_js(data), TJsValue::to_js(init))
}

///|
extern "js" fn response_type_ffi(obj : JsValue) -> ResponseType = "(obj) => obj.type"

///|
impl TResponse with type_(self : Self) -> ResponseType {
  response_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_url_ffi(obj : JsValue) -> String = "(obj) => obj.url"

///|
impl TResponse with url(self : Self) -> String {
  response_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_redirected_ffi(obj : JsValue) -> Bool = "(obj) => obj.redirected"

///|
impl TResponse with redirected(self : Self) -> Bool {
  response_redirected_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_status_ffi(obj : JsValue) -> UInt = "(obj) => obj.status"

///|
impl TResponse with status(self : Self) -> UInt {
  response_status_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_ok_ffi(obj : JsValue) -> Bool = "(obj) => obj.ok"

///|
impl TResponse with ok(self : Self) -> Bool {
  response_ok_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_status_text_ffi(obj : JsValue) -> String = "(obj) => obj.statusText"

///|
impl TResponse with status_text(self : Self) -> String {
  response_status_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_headers_ffi(obj : JsValue) -> Headers = "(obj) => obj.headers"

///|
impl TResponse with headers(self : Self) -> Headers {
  response_headers_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_clone_ffi(obj : JsValue) -> Response = "(obj) => obj.clone(obj)"

///|
impl TResponse with clone(self : Self) -> Response {
  response_clone_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_body_ffi(obj : JsValue) -> ReadableStream = "(obj) => obj.body"

///|
impl TResponse with body(self : Self) -> ReadableStream {
  response_body_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_body_used_ffi(obj : JsValue) -> Bool = "(obj) => obj.bodyUsed"

///|
impl TResponse with body_used(self : Self) -> Bool {
  response_body_used_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_array_buffer_ffi(
  obj : JsValue,
) -> JsPromise[ArrayBuffer] = "(obj) => obj.arrayBuffer(obj)"

///|
impl TResponse with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  response_array_buffer_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_blob_ffi(obj : JsValue) -> JsPromise[Blob] = "(obj) => obj.blob(obj)"

///|
impl TResponse with blob(self : Self) -> JsPromise[Blob] {
  response_blob_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_bytes_ffi(obj : JsValue) -> JsPromise[Uint8Array] = "(obj) => obj.bytes(obj)"

///|
impl TResponse with bytes(self : Self) -> JsPromise[Uint8Array] {
  response_bytes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_form_data_ffi(obj : JsValue) -> JsPromise[FormData] = "(obj) => obj.formData(obj)"

///|
impl TResponse with form_data(self : Self) -> JsPromise[FormData] {
  response_form_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_json_2_ffi(obj : JsValue) -> JsPromise[JsValue] = "(obj) => obj.json_2(obj)"

///|
impl TResponse with json_2(self : Self) -> JsPromise[JsValue] {
  response_json_2_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn response_text_ffi(obj : JsValue) -> JsPromise[String] = "(obj) => obj.text(obj)"

///|
impl TResponse with text(self : Self) -> JsPromise[String] {
  response_text_ffi(TJsValue::to_js(self))
}
