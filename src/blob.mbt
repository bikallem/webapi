// Auto-generated MoonBit bindings for Blob

// Do not edit manually

//
// WebIDL Interface:
// // GENERATED CONTENT - DO NOT EDIT
// // Content was automatically extracted by Reffy into webref
// // (https://github.com/w3c/webref)
// // Source: File API (https://w3c.github.io/FileAPI/)
// 
// [Exposed=(Window,Worker), Serializable]
// interface Blob {
//   constructor(optional sequence<BlobPart> blobParts,
//               optional BlobPropertyBag options = {});
// 
//   readonly attribute unsigned long long size;
//   readonly attribute DOMString type;
// 
//   // slice Blob into byte-ranged chunks
//   Blob slice(optional [Clamp] long long start,
//             optional [Clamp] long long end,
//             optional DOMString contentType);
// 
//   // read from the Blob.
//   [NewObject] ReadableStream stream();
//   [NewObject] Promise<USVString> text();
//   [NewObject] Promise<ArrayBuffer> arrayBuffer();
//   [NewObject] Promise<Uint8Array> bytes();
// };

///|
#external
pub type Blob

///|
pub trait TBlob: TJsValue {
  size(self : Self) -> UInt64 = _
  type_(self : Self) -> String = _
  slice(self : Self, start? : Int64, end? : Int64, content_type? : String) -> Blob = _
  stream(self : Self) -> JsValue = _
  text(self : Self) -> JsPromise[String] = _
  array_buffer(self : Self) -> JsPromise[ArrayBuffer] = _
  bytes(self : Self) -> JsPromise[Uint8Array] = _
}

///|
pub impl TBlob for Blob

///|
pub impl TJsValue for Blob with to_js(self : Blob) -> JsValue = "%identity"

///|
pub fn Blob::null() -> Blob {
  JsValue::null()
}

///|
fn blob_new_ffi(blob_parts : JsValue, options : JsValue) -> Blob = "webapi_Blob" "new"

///|
pub fn Blob::new(
  blob_parts? : Array[JsValue],
  options? : BlobPropertyBag = BlobPropertyBag::empty(),
) -> Blob {
  blob_new_ffi(
    match blob_parts {
      Some(v) => TJsValue::to_js(v)
      None => JsValue::undefined()
    },
    TJsValue::to_js(options),
  )
}

///|
fn blob_slice_ffi(
  obj : JsValue,
  start : JsValue,
  end : JsValue,
  content_type : JsValue,
) -> JsValue = "webapi_Blob" "slice"

///|
impl TBlob with slice(
  self : Self,
  start? : Int64,
  end? : Int64,
  content_type? : String,
) -> Blob {
  let start_js = opt_to_js(start)
  let end_js = opt_to_js(end)
  let content_type_js = opt_to_js(content_type)
  blob_slice_ffi(TJsValue::to_js(self), start_js, end_js, content_type_js).unsafe_cast()
}

///|
fn blob_stream_ffi(obj : JsValue) -> JsValue = "webapi_Blob" "stream"

///|
impl TBlob with stream(self : Self) -> JsValue {
  blob_stream_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn blob_text_ffi(obj : JsValue) -> JsValue = "webapi_Blob" "text"

///|
impl TBlob with text(self : Self) -> JsPromise[String] {
  blob_text_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn blob_array_buffer_ffi(obj : JsValue) -> JsValue = "webapi_Blob" "arrayBuffer"

///|
impl TBlob with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn blob_bytes_ffi(obj : JsValue) -> JsValue = "webapi_Blob" "bytes"

///|
impl TBlob with bytes(self : Self) -> JsPromise[Uint8Array] {
  blob_bytes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn blob_size_ffi(obj : JsValue) -> JsValue = "webapi_Blob" "size"

///|
impl TBlob with size(self : Self) -> UInt64 {
  blob_size_ffi(self.to_js()).unsafe_cast()
}

///|
fn blob_type_ffi(obj : JsValue) -> String = "webapi_Blob" "type"

///|
impl TBlob with type_(self : Self) -> String {
  blob_type_ffi(self.to_js())
}
