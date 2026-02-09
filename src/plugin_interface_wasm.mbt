///|
fn plugin_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Plugin" "get_name"

///|
fn plugin_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(plugin_name_ffi_wasm(obj))
}

///|
fn plugin_description_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Plugin" "get_description"

///|
fn plugin_description_ffi(obj : JsValue) -> String {
  jsvalue_to_string(plugin_description_ffi_wasm(obj))
}

///|
fn plugin_filename_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Plugin" "get_filename"

///|
fn plugin_filename_ffi(obj : JsValue) -> String {
  jsvalue_to_string(plugin_filename_ffi_wasm(obj))
}

///|
fn plugin_length_ffi(obj : JsValue) -> UInt = "webapi_Plugin" "get_length"
