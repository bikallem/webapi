// Do not edit. This file is generated.
// MoonBit type: ReadableStreamBYOBRequest
// Specifications: streams.idl

///|
/// [ReadableStreamBYOBRequest](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest)
#external
pub type ReadableStreamBYOBRequest

///|
pub impl TJsValue for ReadableStreamBYOBRequest with to_js(
  self : ReadableStreamBYOBRequest,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ReadableStreamBYOBRequest with from_js_any(value : JsAny) -> ReadableStreamBYOBRequest = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TReadableStreamBYOBRequest] ReadableStreamBYOBRequest::into(
  self : ReadableStreamBYOBRequest,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TReadableStreamBYOBRequest] ReadableStreamBYOBRequest::unsafe_into(
  self : ReadableStreamBYOBRequest,
) -> T = "%identity"

///|
pub impl HasConstructor for ReadableStreamBYOBRequest with constructor_name() {
  "ReadableStreamBYOBRequest"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TReadableStreamBYOBRequest + HasConstructor] ReadableStreamBYOBRequest::try_into(
  self : ReadableStreamBYOBRequest,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TReadableStreamBYOBRequest for ReadableStreamBYOBRequest

///|
/// [ReadableStreamBYOBRequest](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest) interface.
pub trait TReadableStreamBYOBRequest: TJsValue {
  view(self : Self) -> ArrayBufferView = _
  respond(self : Self, bytes_written : UInt64) -> Unit = _
  respond_with_new_view(self : Self, view : &TArrayBufferView) -> Unit = _
}

///|
/// [ReadableStreamBYOBRequest.view](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest/view)
impl TReadableStreamBYOBRequest with view(self : Self) -> ArrayBufferView {
  readable_stream_byob_request_view_ffi(TJsValue::to_js(self))
}

///|
/// [ReadableStreamBYOBRequest.respond](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest/respond)
impl TReadableStreamBYOBRequest with respond(
  self : Self,
  bytes_written : UInt64,
) -> Unit {
  readable_stream_byob_request_respond_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bytes_written),
  )
}

///|
/// [ReadableStreamBYOBRequest.respondWithNewView](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest/respondWithNewView)
impl TReadableStreamBYOBRequest with respond_with_new_view(
  self : Self,
  view : &TArrayBufferView,
) -> Unit {
  readable_stream_byob_request_respond_with_new_view_ffi(
    TJsValue::to_js(self),
    view.to_js(),
  )
}

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_request_view_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
fn readable_stream_byob_request_view_ffi(obj : JsValue) -> ArrayBufferView {
  readable_stream_byob_request_view_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_request_respond_ffi(
  obj : JsValue,
  bytes_written : JsValue,
) -> Unit = "(obj, bytes_written) => obj.respond(bytes_written)"

///|
#cfg(target="js")
extern "js" fn readable_stream_byob_request_respond_with_new_view_ffi(
  obj : JsValue,
  view : JsValue,
) -> Unit = "(obj, view) => obj.respondWithNewView(view)"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_request_view_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ReadableStreamBYOBRequest" "get_view"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_request_view_ffi(obj : JsValue) -> ArrayBufferView {
  readable_stream_byob_request_view_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_request_respond_ffi(
  obj : JsValue,
  bytes_written : JsValue,
) -> Unit = "webapi_ReadableStreamBYOBRequest" "respond"

///|
#cfg(target="wasm-gc")
fn readable_stream_byob_request_respond_with_new_view_ffi(
  obj : JsValue,
  view : JsValue,
) -> Unit = "webapi_ReadableStreamBYOBRequest" "respondWithNewView"
