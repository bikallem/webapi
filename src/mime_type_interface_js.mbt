extern "js" fn mime_type_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
fn mime_type_type_ffi(obj: JsValue) -> String {
  mime_type_type_ffi_js(obj).unsafe_cast()
}

extern "js" fn mime_type_description_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.description"

///|
fn mime_type_description_ffi(obj: JsValue) -> String {
  mime_type_description_ffi_js(obj).unsafe_cast()
}

extern "js" fn mime_type_suffixes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.suffixes"

///|
fn mime_type_suffixes_ffi(obj: JsValue) -> String {
  mime_type_suffixes_ffi_js(obj).unsafe_cast()
}

extern "js" fn mime_type_enabled_plugin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.enabledPlugin"

///|
fn mime_type_enabled_plugin_ffi(obj: JsValue) -> Plugin {
  mime_type_enabled_plugin_ffi_js(obj).unsafe_cast()
}