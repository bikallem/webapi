// Do not edit. This file is generated.
// MoonBit type: Blob
// Specifications: FileAPI.idl

///|
/// [Blob](https://developer.mozilla.org/en-US/docs/Web/API/Blob)
#external
pub type Blob

///|
pub impl TJsValue for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub fn[T : TBlob] Blob::into(self : Blob) -> T = "%identity"

///|
pub impl TBlob for Blob

///|
pub fn Blob::new(
  blob_parts? : Array[BlobPart],
  options? : BlobPropertyBag = BlobPropertyBag::empty(),
) -> Blob {
  blob_new_ffi(opt_to_js(blob_parts), TJsValue::to_js(options))
}

///|
/// [Blob](https://developer.mozilla.org/en-US/docs/Web/API/Blob) interface.
pub trait TBlob: TJsValue {
  size(self : Self) -> UInt64 = _
  type_(self : Self) -> String = _
  slice(self : Self, start? : Int64, end? : Int64, content_type? : String) -> Blob = _
  stream(self : Self) -> ReadableStream = _
  text(self : Self) -> JsPromise[String] = _
  array_buffer(self : Self) -> JsPromise[ArrayBuffer] = _
  bytes(self : Self) -> JsPromise[Uint8Array] = _
}

///|
/// [Blob.size](https://developer.mozilla.org/en-US/docs/Web/API/Blob/size)
impl TBlob with size(self : Self) -> UInt64 {
  blob_size_ffi(TJsValue::to_js(self))
}

///|
/// [Blob.type](https://developer.mozilla.org/en-US/docs/Web/API/Blob/type)
impl TBlob with type_(self : Self) -> String {
  blob_type_ffi(TJsValue::to_js(self))
}

///|
/// [Blob.slice](https://developer.mozilla.org/en-US/docs/Web/API/Blob/slice)
impl TBlob with slice(
  self : Self,
  start? : Int64,
  end? : Int64,
  content_type? : String,
) -> Blob {
  blob_slice_ffi(
    TJsValue::to_js(self),
    opt_to_js(start),
    opt_to_js(end),
    opt_to_js(content_type),
  )
}

///|
/// [Blob.stream](https://developer.mozilla.org/en-US/docs/Web/API/Blob/stream)
impl TBlob with stream(self : Self) -> ReadableStream {
  blob_stream_ffi(TJsValue::to_js(self))
}

///|
/// [Blob.text](https://developer.mozilla.org/en-US/docs/Web/API/Blob/text)
impl TBlob with text(self : Self) -> JsPromise[String] {
  blob_text_ffi(TJsValue::to_js(self))
}

///|
/// [Blob.arrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/Blob/arrayBuffer)
impl TBlob with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi(TJsValue::to_js(self))
}

///|
/// [Blob.bytes](https://developer.mozilla.org/en-US/docs/Web/API/Blob/bytes)
impl TBlob with bytes(self : Self) -> JsPromise[Uint8Array] {
  blob_bytes_ffi(TJsValue::to_js(self))
}
