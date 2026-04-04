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
pub impl FromJsAny for Response with from_js_any(value : JsAny) -> Response = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TResponse] Response::into(self : Response) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TResponse] Response::unsafe_into(self : Response) -> T = "%identity"

///|
pub impl HasConstructor for Response with constructor_name() {
  "Response"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TResponse + HasConstructor] Response::try_into(
  self : Response,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TResponse for Response

///|
pub fn Response::new(body? : &TBodyInit, init? : ResponseInit) -> Response {
  response_new_ffi(
    match body {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(init),
  )
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
  json_body(self : Self) -> JsPromise[JsValue] = _
  text(self : Self) -> JsPromise[String] = _
}

///|
/// [Response.error](https://developer.mozilla.org/en-US/docs/Web/API/Response/error)
pub fn Response::error() -> Response {
  response_error_ffi()
}

///|
/// [Response.redirect](https://developer.mozilla.org/en-US/docs/Web/API/Response/redirect)
pub fn Response::redirect(url : String, status? : UInt) -> Response {
  response_redirect_ffi(TJsValue::to_js(url), opt_to_js(status))
}

///|
/// [Response.json](https://developer.mozilla.org/en-US/docs/Web/API/Response/json)
pub fn Response::json(data : JsValue, init? : ResponseInit) -> Response {
  response_json_ffi(TJsValue::to_js(data), opt_to_js(init))
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
/// [Response.json](https://developer.mozilla.org/en-US/docs/Web/API/Response/json)
impl TResponse with json_body(self : Self) -> JsPromise[JsValue] {
  response_json_body_ffi(TJsValue::to_js(self))
}

///|
/// [Response.text](https://developer.mozilla.org/en-US/docs/Web/API/Response/text)
impl TResponse with text(self : Self) -> JsPromise[String] {
  response_text_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn response_new_ffi(body : JsValue, init : JsValue) -> Response = "(body, init) => new Response(body, init)"

///|
#cfg(target="js")
extern "js" fn response_error_ffi_js() -> JsValue = "() => Response.error()"

///|
#cfg(target="js")
fn response_error_ffi() -> Response {
  response_error_ffi_js().unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_redirect_ffi_js(
  url : JsValue,
  status : JsValue,
) -> JsValue = "(url, status) => Response.redirect(url, status)"

///|
#cfg(target="js")
fn response_redirect_ffi(url : JsValue, status : JsValue) -> Response {
  response_redirect_ffi_js(url, status).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_json_ffi_js(data : JsValue, init : JsValue) -> JsValue = "(data, init) => Response.json(data, init)"

///|
#cfg(target="js")
fn response_json_ffi(data : JsValue, init : JsValue) -> Response {
  response_json_ffi_js(data, init).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn response_type_ffi(obj : JsValue) -> ResponseType {
  ResponseType::from_unchecked(response_type_ffi_js(obj).unsafe_cast())
}

///|
#cfg(target="js")
extern "js" fn response_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn response_url_ffi(obj : JsValue) -> String {
  response_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_redirected_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.redirected"

///|
#cfg(target="js")
fn response_redirected_ffi(obj : JsValue) -> Bool {
  response_redirected_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_status_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.status"

///|
#cfg(target="js")
fn response_status_ffi(obj : JsValue) -> UInt {
  response_status_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_ok_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ok"

///|
#cfg(target="js")
fn response_ok_ffi(obj : JsValue) -> Bool {
  response_ok_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_status_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.statusText"

///|
#cfg(target="js")
fn response_status_text_ffi(obj : JsValue) -> String {
  response_status_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_headers_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.headers"

///|
#cfg(target="js")
fn response_headers_ffi(obj : JsValue) -> Headers {
  response_headers_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_clone_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clone()"

///|
#cfg(target="js")
fn response_clone_ffi(obj : JsValue) -> Response {
  response_clone_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_body_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
#cfg(target="js")
fn response_body_ffi(obj : JsValue) -> ReadableStream {
  response_body_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_body_used_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bodyUsed"

///|
#cfg(target="js")
fn response_body_used_ffi(obj : JsValue) -> Bool {
  response_body_used_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_array_buffer_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

///|
#cfg(target="js")
fn response_array_buffer_ffi(obj : JsValue) -> JsPromise[ArrayBuffer] {
  response_array_buffer_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_blob_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.blob()"

///|
#cfg(target="js")
fn response_blob_ffi(obj : JsValue) -> JsPromise[Blob] {
  response_blob_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_bytes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bytes()"

///|
#cfg(target="js")
fn response_bytes_ffi(obj : JsValue) -> JsPromise[Uint8Array] {
  response_bytes_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_form_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.formData()"

///|
#cfg(target="js")
fn response_form_data_ffi(obj : JsValue) -> JsPromise[FormData] {
  response_form_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_json_body_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.json()"

///|
#cfg(target="js")
fn response_json_body_ffi(obj : JsValue) -> JsPromise[JsValue] {
  response_json_body_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn response_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text()"

///|
#cfg(target="js")
fn response_text_ffi(obj : JsValue) -> JsPromise[String] {
  response_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn response_new_ffi(body : JsValue, init : JsValue) -> Response = "webapi_Response" "new"

///|
#cfg(target="wasm-gc")
fn response_error_ffi() -> Response = "webapi_Response" "error"

///|
#cfg(target="wasm-gc")
fn response_redirect_ffi(url : JsValue, status : JsValue) -> Response = "webapi_Response" "redirect"

///|
#cfg(target="wasm-gc")
fn response_json_ffi(data : JsValue, init : JsValue) -> Response = "webapi_Response" "json"

///|
#cfg(target="wasm-gc")
fn response_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "get_type"

///|
#cfg(target="wasm-gc")
fn response_type_ffi(obj : JsValue) -> ResponseType {
  ResponseType::from_unchecked(jsvalue_to_string(response_type_ffi_wasm(obj)))
}

///|
#cfg(target="wasm-gc")
fn response_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "get_url"

///|
#cfg(target="wasm-gc")
fn response_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(response_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn response_redirected_ffi(obj : JsValue) -> Bool = "webapi_Response" "get_redirected"

///|
#cfg(target="wasm-gc")
fn response_status_ffi(obj : JsValue) -> UInt = "webapi_Response" "get_status"

///|
#cfg(target="wasm-gc")
fn response_ok_ffi(obj : JsValue) -> Bool = "webapi_Response" "get_ok"

///|
#cfg(target="wasm-gc")
fn response_status_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "get_statusText"

///|
#cfg(target="wasm-gc")
fn response_status_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(response_status_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn response_headers_ffi(obj : JsValue) -> Headers = "webapi_Response" "get_headers"

///|
#cfg(target="wasm-gc")
fn response_clone_ffi(obj : JsValue) -> Response = "webapi_Response" "clone"

///|
#cfg(target="wasm-gc")
fn response_body_ffi(obj : JsValue) -> ReadableStream = "webapi_Response" "get_body"

///|
#cfg(target="wasm-gc")
fn response_body_used_ffi(obj : JsValue) -> Bool = "webapi_Response" "get_bodyUsed"

///|
#cfg(target="wasm-gc")
fn response_array_buffer_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "arrayBuffer"

///|
#cfg(target="wasm-gc")
fn response_array_buffer_ffi(obj : JsValue) -> JsPromise[ArrayBuffer] {
  response_array_buffer_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn response_blob_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "blob"

///|
#cfg(target="wasm-gc")
fn response_blob_ffi(obj : JsValue) -> JsPromise[Blob] {
  response_blob_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn response_bytes_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "bytes"

///|
#cfg(target="wasm-gc")
fn response_bytes_ffi(obj : JsValue) -> JsPromise[Uint8Array] {
  response_bytes_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn response_form_data_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "formData"

///|
#cfg(target="wasm-gc")
fn response_form_data_ffi(obj : JsValue) -> JsPromise[FormData] {
  response_form_data_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn response_json_body_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "json_body"

///|
#cfg(target="wasm-gc")
fn response_json_body_ffi(obj : JsValue) -> JsPromise[JsValue] {
  response_json_body_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn response_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Response" "text"

///|
#cfg(target="wasm-gc")
fn response_text_ffi(obj : JsValue) -> JsPromise[String] {
  response_text_ffi_wasm(obj).unsafe_cast()
}
