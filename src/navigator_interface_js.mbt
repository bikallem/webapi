///|
extern "js" fn navigator_user_activation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.userActivation"

///|
fn navigator_user_activation_ffi(obj : JsValue) -> UserActivation {
  navigator_user_activation_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_max_touch_points_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.maxTouchPoints"

///|
fn navigator_max_touch_points_ffi(obj : JsValue) -> Int {
  navigator_max_touch_points_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_clipboard_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clipboard"

///|
fn navigator_clipboard_ffi(obj : JsValue) -> Clipboard {
  navigator_clipboard_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_app_code_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appCodeName"

///|
fn navigator_app_code_name_ffi(obj : JsValue) -> String {
  navigator_app_code_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_app_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appName"

///|
fn navigator_app_name_ffi(obj : JsValue) -> String {
  navigator_app_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_app_version_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appVersion"

///|
fn navigator_app_version_ffi(obj : JsValue) -> String {
  navigator_app_version_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_platform_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.platform"

///|
fn navigator_platform_ffi(obj : JsValue) -> String {
  navigator_platform_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_product_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.product"

///|
fn navigator_product_ffi(obj : JsValue) -> String {
  navigator_product_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_product_sub_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.productSub"

///|
fn navigator_product_sub_ffi(obj : JsValue) -> String {
  navigator_product_sub_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_user_agent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.userAgent"

///|
fn navigator_user_agent_ffi(obj : JsValue) -> String {
  navigator_user_agent_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_vendor_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vendor"

///|
fn navigator_vendor_ffi(obj : JsValue) -> String {
  navigator_vendor_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_vendor_sub_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vendorSub"

///|
fn navigator_vendor_sub_ffi(obj : JsValue) -> String {
  navigator_vendor_sub_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_taint_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.taintEnabled()"

///|
fn navigator_taint_enabled_ffi(obj : JsValue) -> Bool {
  navigator_taint_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_oscpu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oscpu"

///|
fn navigator_oscpu_ffi(obj : JsValue) -> String {
  navigator_oscpu_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
fn navigator_language_ffi(obj : JsValue) -> String {
  navigator_language_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_languages_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.languages"

///|
fn navigator_languages_ffi(obj : JsValue) -> JsValue {
  navigator_languages_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_on_line_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onLine"

///|
fn navigator_on_line_ffi(obj : JsValue) -> Bool {
  navigator_on_line_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_register_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "(obj, scheme, url) => obj.registerProtocolHandler(scheme, url)"

///|
extern "js" fn navigator_unregister_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "(obj, scheme, url) => obj.unregisterProtocolHandler(scheme, url)"

///|
extern "js" fn navigator_cookie_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cookieEnabled"

///|
fn navigator_cookie_enabled_ffi(obj : JsValue) -> Bool {
  navigator_cookie_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_plugins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.plugins"

///|
fn navigator_plugins_ffi(obj : JsValue) -> PluginArray {
  navigator_plugins_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_mime_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mimeTypes"

///|
fn navigator_mime_types_ffi(obj : JsValue) -> MimeTypeArray {
  navigator_mime_types_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_java_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.javaEnabled()"

///|
fn navigator_java_enabled_ffi(obj : JsValue) -> Bool {
  navigator_java_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_pdf_viewer_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pdfViewerEnabled"

///|
fn navigator_pdf_viewer_enabled_ffi(obj : JsValue) -> Bool {
  navigator_pdf_viewer_enabled_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_hardware_concurrency_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hardwareConcurrency"

///|
fn navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 {
  navigator_hardware_concurrency_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn navigator_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.storage"

///|
fn navigator_storage_ffi(obj : JsValue) -> StorageManager {
  navigator_storage_ffi_js(obj).unsafe_cast()
}
