///|
fn navigator_user_activation_ffi(obj : JsValue) -> UserActivation = "webapi_Navigator" "get_userActivation"

///|
fn navigator_max_touch_points_ffi(obj : JsValue) -> Int = "webapi_Navigator" "get_maxTouchPoints"

///|
fn navigator_clipboard_ffi(obj : JsValue) -> Clipboard = "webapi_Navigator" "get_clipboard"

///|
fn navigator_app_code_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_appCodeName"

///|
fn navigator_app_code_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_app_code_name_ffi_wasm(obj))
}

///|
fn navigator_app_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_appName"

///|
fn navigator_app_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_app_name_ffi_wasm(obj))
}

///|
fn navigator_app_version_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_appVersion"

///|
fn navigator_app_version_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_app_version_ffi_wasm(obj))
}

///|
fn navigator_platform_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_platform"

///|
fn navigator_platform_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_platform_ffi_wasm(obj))
}

///|
fn navigator_product_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_product"

///|
fn navigator_product_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_product_ffi_wasm(obj))
}

///|
fn navigator_product_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_productSub"

///|
fn navigator_product_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_product_sub_ffi_wasm(obj))
}

///|
fn navigator_user_agent_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_userAgent"

///|
fn navigator_user_agent_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_user_agent_ffi_wasm(obj))
}

///|
fn navigator_vendor_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_vendor"

///|
fn navigator_vendor_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_vendor_ffi_wasm(obj))
}

///|
fn navigator_vendor_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_vendorSub"

///|
fn navigator_vendor_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_vendor_sub_ffi_wasm(obj))
}

///|
fn navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "taintEnabled"

///|
fn navigator_oscpu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_oscpu"

///|
fn navigator_oscpu_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_oscpu_ffi_wasm(obj))
}

///|
fn navigator_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_language"

///|
fn navigator_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_language_ffi_wasm(obj))
}

///|
fn navigator_languages_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "get_languages"

///|
fn navigator_on_line_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "get_onLine"

///|
fn navigator_register_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "webapi_Navigator" "registerProtocolHandler"

///|
fn navigator_unregister_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "webapi_Navigator" "unregisterProtocolHandler"

///|
fn navigator_cookie_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "get_cookieEnabled"

///|
fn navigator_plugins_ffi(obj : JsValue) -> PluginArray = "webapi_Navigator" "get_plugins"

///|
fn navigator_mime_types_ffi(obj : JsValue) -> MimeTypeArray = "webapi_Navigator" "get_mimeTypes"

///|
fn navigator_java_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "javaEnabled"

///|
fn navigator_pdf_viewer_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "get_pdfViewerEnabled"

///|
fn navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 = "webapi_Navigator" "get_hardwareConcurrency"

///|
fn navigator_storage_ffi(obj : JsValue) -> StorageManager = "webapi_Navigator" "get_storage"
