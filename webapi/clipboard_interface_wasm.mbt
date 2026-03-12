fn clipboard_read_ffi_wasm(obj: JsValue, formats: JsValue) -> JsValue = "webapi_Clipboard" "read"

///|
fn clipboard_read_ffi(obj: JsValue, formats: JsValue) -> JsPromise[ClipboardItems] {
  clipboard_read_ffi_wasm(obj, formats).unsafe_cast()
}

fn clipboard_read_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Clipboard" "readText"

///|
fn clipboard_read_text_ffi(obj: JsValue) -> JsPromise[String] {
  clipboard_read_text_ffi_wasm(obj).unsafe_cast()
}

fn clipboard_write_ffi_wasm(obj: JsValue, data: JsValue) -> JsValue = "webapi_Clipboard" "write"

///|
fn clipboard_write_ffi(obj: JsValue, data: JsValue) -> JsPromise[JsValue] {
  clipboard_write_ffi_wasm(obj, data).unsafe_cast()
}

fn clipboard_write_text_ffi_wasm(obj: JsValue, data: JsValue) -> JsValue = "webapi_Clipboard" "writeText"

///|
fn clipboard_write_text_ffi(obj: JsValue, data: JsValue) -> JsPromise[JsValue] {
  clipboard_write_text_ffi_wasm(obj, data).unsafe_cast()
}