fn file_new_ffi(file_bits: JsValue, file_name: JsValue, options: JsValue) -> File = "webapi_File" "new"

fn file_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_File" "get_name"

///|
fn file_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(file_name_ffi_wasm(obj))
}

fn file_last_modified_ffi(obj: JsValue) -> Int64 = "webapi_File" "get_lastModified"