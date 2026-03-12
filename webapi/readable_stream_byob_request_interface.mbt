// Do not edit. This file is generated.
// MoonBit type: ReadableStreamBYOBRequest
// Specifications: streams.idl

/// [ReadableStreamBYOBRequest](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest)
#external
pub type ReadableStreamBYOBRequest

pub impl TJsValue for ReadableStreamBYOBRequest with to_js(self: ReadableStreamBYOBRequest) -> JsValue = "%identity"

pub impl FromJsAny for ReadableStreamBYOBRequest with from_js_any(value : JsAny) -> ReadableStreamBYOBRequest = "%identity"

pub fn[T: TReadableStreamBYOBRequest] ReadableStreamBYOBRequest::into(self : ReadableStreamBYOBRequest) -> T = "%identity"

pub impl TReadableStreamBYOBRequest for ReadableStreamBYOBRequest

/// [ReadableStreamBYOBRequest](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest) interface.
pub trait TReadableStreamBYOBRequest: TJsValue {
  view(self : Self) -> ArrayBufferView = _
  respond(self : Self, bytes_written : UInt64) -> Unit = _
  respond_with_new_view(self : Self, view : &TArrayBufferView) -> Unit = _
}

/// [ReadableStreamBYOBRequest.view](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest/view)
impl TReadableStreamBYOBRequest with view(self : Self) -> ArrayBufferView {
  readable_stream_byob_request_view_ffi(TJsValue::to_js(self))
}

/// [ReadableStreamBYOBRequest.respond](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest/respond)
impl TReadableStreamBYOBRequest with respond(self : Self, 
bytes_written : UInt64) -> Unit {
  readable_stream_byob_request_respond_ffi(TJsValue::to_js(self), TJsValue::to_js(bytes_written))
}

/// [ReadableStreamBYOBRequest.respondWithNewView](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBRequest/respondWithNewView)
impl TReadableStreamBYOBRequest with respond_with_new_view(self : Self, 
view : &TArrayBufferView) -> Unit {
  readable_stream_byob_request_respond_with_new_view_ffi(TJsValue::to_js(self), view.to_js())
}