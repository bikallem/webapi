extern "js" fn not_restored_reasons_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
fn not_restored_reasons_src_ffi(obj: JsValue) -> String {
  not_restored_reasons_src_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reasons_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
fn not_restored_reasons_id_ffi(obj: JsValue) -> String {
  not_restored_reasons_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reasons_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn not_restored_reasons_name_ffi(obj: JsValue) -> String {
  not_restored_reasons_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reasons_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.url"

///|
fn not_restored_reasons_url_ffi(obj: JsValue) -> String {
  not_restored_reasons_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reasons_reasons_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reasons"

///|
fn not_restored_reasons_reasons_ffi(obj: JsValue) -> JsValue {
  not_restored_reasons_reasons_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reasons_children_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.children"

///|
fn not_restored_reasons_children_ffi(obj: JsValue) -> JsValue {
  not_restored_reasons_children_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reasons_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn not_restored_reasons_to_json_ffi(obj: JsValue) -> JsValue {
  not_restored_reasons_to_json_ffi_js(obj).unsafe_cast()
}