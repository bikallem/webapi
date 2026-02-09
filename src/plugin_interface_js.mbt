///|
extern "js" fn plugin_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn plugin_name_ffi(obj : JsValue) -> String {
  plugin_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn plugin_description_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.description"

///|
fn plugin_description_ffi(obj : JsValue) -> String {
  plugin_description_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn plugin_filename_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.filename"

///|
fn plugin_filename_ffi(obj : JsValue) -> String {
  plugin_filename_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn plugin_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn plugin_length_ffi(obj : JsValue) -> UInt {
  plugin_length_ffi_js(obj).unsafe_cast()
}
