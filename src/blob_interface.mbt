// Do not edit. This file is generated.
// MoonBit type: Blob
// Specifications: FileAPI.idl

/// [Blob](https://developer.mozilla.org/en-US/docs/Web/API/Blob)
#external
pub type Blob

pub impl TJsValue for Blob with to_js(self: Blob) -> JsValue = "%identity"

pub impl FromJsAny for Blob with from_js_any(value : JsAny) -> Blob = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TBlob] Blob::into(self : Blob) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TBlob] Blob::unsafe_into(self : Blob) -> T = "%identity"

pub impl HasConstructor for Blob with constructor_name() { "Blob" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TBlob + HasConstructor] Blob::try_into(self : Blob) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TBlob for Blob

pub fn Blob::new(blob_parts? : Array[BlobPart], 
options? : BlobPropertyBag) -> Blob {
  blob_new_ffi(opt_to_js(blob_parts), opt_to_js(options))
}

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

/// [Blob.size](https://developer.mozilla.org/en-US/docs/Web/API/Blob/size)
impl TBlob with size(self : Self) -> UInt64 {
  blob_size_ffi(TJsValue::to_js(self))
}

/// [Blob.type](https://developer.mozilla.org/en-US/docs/Web/API/Blob/type)
impl TBlob with type_(self : Self) -> String {
  blob_type_ffi(TJsValue::to_js(self))
}

/// [Blob.slice](https://developer.mozilla.org/en-US/docs/Web/API/Blob/slice)
impl TBlob with slice(self : Self, 
start? : Int64, 
end? : Int64, 
content_type? : String) -> Blob {
  blob_slice_ffi(TJsValue::to_js(self), opt_to_js(start), opt_to_js(end), opt_to_js(content_type))
}

/// [Blob.stream](https://developer.mozilla.org/en-US/docs/Web/API/Blob/stream)
impl TBlob with stream(self : Self) -> ReadableStream {
  blob_stream_ffi(TJsValue::to_js(self))
}

/// [Blob.text](https://developer.mozilla.org/en-US/docs/Web/API/Blob/text)
impl TBlob with text(self : Self) -> JsPromise[String] {
  blob_text_ffi(TJsValue::to_js(self))
}

/// [Blob.arrayBuffer](https://developer.mozilla.org/en-US/docs/Web/API/Blob/arrayBuffer)
impl TBlob with array_buffer(self : Self) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi(TJsValue::to_js(self))
}

/// [Blob.bytes](https://developer.mozilla.org/en-US/docs/Web/API/Blob/bytes)
impl TBlob with bytes(self : Self) -> JsPromise[Uint8Array] {
  blob_bytes_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn blob_new_ffi(blob_parts: JsValue, options: JsValue) -> Blob = "(blob_parts, options) => new Blob(blob_parts, options)"

#cfg(target="js")
extern "js" fn blob_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn blob_size_ffi(obj: JsValue) -> UInt64 {
  blob_size_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn blob_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn blob_type_ffi(obj: JsValue) -> String {
  blob_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn blob_slice_ffi_js(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> JsValue = "(obj, start, end, content_type) => obj.slice(start, end, content_type)"

///|
#cfg(target="js")
fn blob_slice_ffi(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> Blob {
  blob_slice_ffi_js(obj, start, end, content_type).unsafe_cast()
}

#cfg(target="js")
extern "js" fn blob_stream_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.stream()"

///|
#cfg(target="js")
fn blob_stream_ffi(obj: JsValue) -> ReadableStream {
  blob_stream_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn blob_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.text()"

///|
#cfg(target="js")
fn blob_text_ffi(obj: JsValue) -> JsPromise[String] {
  blob_text_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn blob_array_buffer_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.arrayBuffer()"

///|
#cfg(target="js")
fn blob_array_buffer_ffi(obj: JsValue) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn blob_bytes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bytes()"

///|
#cfg(target="js")
fn blob_bytes_ffi(obj: JsValue) -> JsPromise[Uint8Array] {
  blob_bytes_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn blob_new_ffi(blob_parts: JsValue, options: JsValue) -> Blob = "webapi_Blob" "new"

#cfg(target="wasm-gc")
fn blob_size_ffi(obj: JsValue) -> UInt64 = "webapi_Blob" "get_size"

#cfg(target="wasm-gc")
fn blob_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "get_type"

///|
#cfg(target="wasm-gc")
fn blob_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(blob_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn blob_slice_ffi(obj: JsValue, start: JsValue, end: JsValue, content_type: JsValue) -> Blob = "webapi_Blob" "slice"

#cfg(target="wasm-gc")
fn blob_stream_ffi(obj: JsValue) -> ReadableStream = "webapi_Blob" "stream"

#cfg(target="wasm-gc")
fn blob_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "text"

///|
#cfg(target="wasm-gc")
fn blob_text_ffi(obj: JsValue) -> JsPromise[String] {
  blob_text_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn blob_array_buffer_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "arrayBuffer"

///|
#cfg(target="wasm-gc")
fn blob_array_buffer_ffi(obj: JsValue) -> JsPromise[ArrayBuffer] {
  blob_array_buffer_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn blob_bytes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Blob" "bytes"

///|
#cfg(target="wasm-gc")
fn blob_bytes_ffi(obj: JsValue) -> JsPromise[Uint8Array] {
  blob_bytes_ffi_wasm(obj).unsafe_cast()
}