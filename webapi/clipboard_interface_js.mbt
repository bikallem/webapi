extern "js" fn clipboard_read_ffi_js(obj: JsValue, formats: JsValue) -> JsValue = "(obj, formats) => obj.read(formats)"

///|
fn clipboard_read_ffi(obj: JsValue, formats: JsValue) -> JsPromise[ClipboardItems] {
  clipboard_read_ffi_js(obj, formats).unsafe_cast()
}

extern "js" fn clipboard_read_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readText()"

///|
fn clipboard_read_text_ffi(obj: JsValue) -> JsPromise[String] {
  clipboard_read_text_ffi_js(obj).unsafe_cast()
}

extern "js" fn clipboard_write_ffi_js(obj: JsValue, data: JsValue) -> JsValue = "(obj, data) => obj.write(data)"

///|
fn clipboard_write_ffi(obj: JsValue, data: JsValue) -> JsPromise[JsValue] {
  clipboard_write_ffi_js(obj, data).unsafe_cast()
}

extern "js" fn clipboard_write_text_ffi_js(obj: JsValue, data: JsValue) -> JsValue = "(obj, data) => obj.writeText(data)"

///|
fn clipboard_write_text_ffi(obj: JsValue, data: JsValue) -> JsPromise[JsValue] {
  clipboard_write_text_ffi_js(obj, data).unsafe_cast()
}