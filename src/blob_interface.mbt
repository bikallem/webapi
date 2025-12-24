///|
#external
pub type Blob

///|
pub impl TJsValue for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub fn[T : TBlob] Blob::into(self : Blob) -> T = "%identity"

///|
pub impl TBlob for Blob

///|
extern "js" fn blob_new_ffi(blob_parts : JsValue, options : JsValue) -> Blob = "(blob_parts, options) => new Blob(blob_parts, options)"

///|
pub fn Blob::new(
  blob_parts? : Array[BlobPart],
  options? : BlobPropertyBag = BlobPropertyBag::empty(),
) -> Blob {
  blob_new_ffi(opt_to_js(blob_parts), TJsValue::to_js(options))
}

///|
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
extern "js" fn blob_size_ffi(obj : JsValue) -> UInt64 = "(obj) => obj.size"

///|
impl TBlob with size(self : Self) -> UInt64 {
  blob_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn blob_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl TBlob with type_(self : Self) -> String {
  blob_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn blob_slice_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  content_type : JsValue,
) -> Blob = "(obj, start, end, content_type) => obj.slice(obj, start, end, content_type)"

///|
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
extern "js" fn blob_stream_ffi(obj : JsValue) -> ReadableStream = "(obj) => obj.stream(obj)"

///|
impl TBlob with stream(self : Self) -> ReadableStream {
  blob_stream_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn blob_text_ffi(obj : JsValue) -> JsPromise[String] = "(obj) => obj.text(obj)"

///|
impl TBlob with text(self : Self) -> JsPromise[String] {
  blob_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn blob_array_buffer_ffi(obj : JsValue) -> JsPromise[ArrayBuffer] = "(obj) => obj.arrayBuffer(obj)"

///|
impl TBlob with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn blob_bytes_ffi(obj : JsValue) -> JsPromise[Uint8Array] = "(obj) => obj.bytes(obj)"

///|
impl TBlob with bytes(self : Self) -> JsPromise[Uint8Array] {
  blob_bytes_ffi(TJsValue::to_js(self))
}
