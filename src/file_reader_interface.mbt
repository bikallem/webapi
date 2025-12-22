///|
#external
pub type FileReader

///|
pub impl TJsValue for FileReader with to_js(self : FileReader) -> JsValue = "%identity"

///|
pub fn[T : TFileReader] FileReader::into(self : FileReader) -> T = "%identity"

///|
pub impl TFileReader for FileReader

///|
pub impl TEventTarget for FileReader

///|
extern "js" fn file_reader_new_ffi() -> FileReader = "() => new FileReader()"

///|
pub fn FileReader::new() -> FileReader {
  file_reader_new_ffi()
}

///|
pub trait TFileReader: TEventTarget {
  read_as_array_buffer(self : Self, blob : &TBlob) -> Unit = _
  read_as_binary_string(self : Self, blob : &TBlob) -> Unit = _
  read_as_text(self : Self, blob : &TBlob, encoding? : String) -> Unit = _
  read_as_data_url(self : Self, blob : &TBlob) -> Unit = _
  abort(self : Self) -> Unit = _
}

///|
extern "js" fn file_reader_read_as_array_buffer_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsArrayBuffer(obj, blob)"

///|
impl TFileReader with read_as_array_buffer(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_array_buffer_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}

///|
extern "js" fn file_reader_read_as_binary_string_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsBinaryString(obj, blob)"

///|
impl TFileReader with read_as_binary_string(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_binary_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
  )
}

///|
extern "js" fn file_reader_read_as_text_ffi(
  obj : JsValue,
  blob : JsValue,
  encoding : JsValue,
) -> Unit = "(obj, blob, encoding) => obj.readAsText(obj, blob, encoding)"

///|
impl TFileReader with read_as_text(
  self : Self,
  blob : &TBlob,
  encoding? : String,
) -> Unit {
  file_reader_read_as_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob),
    opt_to_js(encoding),
  )
}

///|
extern "js" fn file_reader_read_as_data_url_ffi(
  obj : JsValue,
  blob : JsValue,
) -> Unit = "(obj, blob) => obj.readAsDataURL(obj, blob)"

///|
impl TFileReader with read_as_data_url(self : Self, blob : &TBlob) -> Unit {
  file_reader_read_as_data_url_ffi(TJsValue::to_js(self), TJsValue::to_js(blob))
}

///|
extern "js" fn file_reader_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort(obj)"

///|
impl TFileReader with abort(self : Self) -> Unit {
  file_reader_abort_ffi(TJsValue::to_js(self))
}
