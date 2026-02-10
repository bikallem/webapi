///|
fn not_restored_reasons_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_src"

///|
fn not_restored_reasons_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_src_ffi_wasm(obj))
}

///|
fn not_restored_reasons_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_id"

///|
fn not_restored_reasons_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_id_ffi_wasm(obj))
}

///|
fn not_restored_reasons_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_name"

///|
fn not_restored_reasons_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_name_ffi_wasm(obj))
}

///|
fn not_restored_reasons_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_url"

///|
fn not_restored_reasons_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(not_restored_reasons_url_ffi_wasm(obj))
}

///|
fn not_restored_reasons_reasons_ffi(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_reasons"

///|
fn not_restored_reasons_children_ffi(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "get_children"

///|
fn not_restored_reasons_to_json_ffi(obj : JsValue) -> JsValue = "webapi_NotRestoredReasons" "toJSON"
