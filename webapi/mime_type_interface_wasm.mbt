fn mime_type_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MimeType" "get_type"

///|
fn mime_type_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mime_type_type_ffi_wasm(obj))
}

fn mime_type_description_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MimeType" "get_description"

///|
fn mime_type_description_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mime_type_description_ffi_wasm(obj))
}

fn mime_type_suffixes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MimeType" "get_suffixes"

///|
fn mime_type_suffixes_ffi(obj: JsValue) -> String {
  jsvalue_to_string(mime_type_suffixes_ffi_wasm(obj))
}

fn mime_type_enabled_plugin_ffi(obj: JsValue) -> Plugin = "webapi_MimeType" "get_enabledPlugin"