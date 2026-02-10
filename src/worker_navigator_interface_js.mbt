extern "js" fn worker_navigator_app_code_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.appCodeName"

///|
fn worker_navigator_app_code_name_ffi(obj: JsValue) -> String {
  worker_navigator_app_code_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_app_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.appName"

///|
fn worker_navigator_app_name_ffi(obj: JsValue) -> String {
  worker_navigator_app_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_app_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.appVersion"

///|
fn worker_navigator_app_version_ffi(obj: JsValue) -> String {
  worker_navigator_app_version_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_platform_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.platform"

///|
fn worker_navigator_platform_ffi(obj: JsValue) -> String {
  worker_navigator_platform_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_product_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.product"

///|
fn worker_navigator_product_ffi(obj: JsValue) -> String {
  worker_navigator_product_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_product_sub_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.productSub"

///|
fn worker_navigator_product_sub_ffi(obj: JsValue) -> String {
  worker_navigator_product_sub_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_user_agent_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.userAgent"

///|
fn worker_navigator_user_agent_ffi(obj: JsValue) -> String {
  worker_navigator_user_agent_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_vendor_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vendor"

///|
fn worker_navigator_vendor_ffi(obj: JsValue) -> String {
  worker_navigator_vendor_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_vendor_sub_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vendorSub"

///|
fn worker_navigator_vendor_sub_ffi(obj: JsValue) -> String {
  worker_navigator_vendor_sub_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_taint_enabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.taintEnabled()"

///|
fn worker_navigator_taint_enabled_ffi(obj: JsValue) -> Bool {
  worker_navigator_taint_enabled_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_oscpu_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oscpu"

///|
fn worker_navigator_oscpu_ffi(obj: JsValue) -> String {
  worker_navigator_oscpu_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_language_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.language"

///|
fn worker_navigator_language_ffi(obj: JsValue) -> String {
  worker_navigator_language_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_languages_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.languages"

///|
fn worker_navigator_languages_ffi(obj: JsValue) -> JsValue {
  worker_navigator_languages_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_on_line_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onLine"

///|
fn worker_navigator_on_line_ffi(obj: JsValue) -> Bool {
  worker_navigator_on_line_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_hardware_concurrency_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hardwareConcurrency"

///|
fn worker_navigator_hardware_concurrency_ffi(obj: JsValue) -> UInt64 {
  worker_navigator_hardware_concurrency_ffi_js(obj).unsafe_cast()
}

extern "js" fn worker_navigator_storage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.storage"

///|
fn worker_navigator_storage_ffi(obj: JsValue) -> StorageManager {
  worker_navigator_storage_ffi_js(obj).unsafe_cast()
}