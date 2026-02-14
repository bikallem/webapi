///|
fn worker_navigator_app_code_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_appCodeName"

///|
fn worker_navigator_app_code_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_app_code_name_ffi_wasm(obj))
}

///|
fn worker_navigator_app_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_appName"

///|
fn worker_navigator_app_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_app_name_ffi_wasm(obj))
}

///|
fn worker_navigator_app_version_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_appVersion"

///|
fn worker_navigator_app_version_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_app_version_ffi_wasm(obj))
}

///|
fn worker_navigator_platform_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_platform"

///|
fn worker_navigator_platform_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_platform_ffi_wasm(obj))
}

///|
fn worker_navigator_product_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_product"

///|
fn worker_navigator_product_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_product_ffi_wasm(obj))
}

///|
fn worker_navigator_product_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_productSub"

///|
fn worker_navigator_product_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_product_sub_ffi_wasm(obj))
}

///|
fn worker_navigator_user_agent_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_userAgent"

///|
fn worker_navigator_user_agent_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_user_agent_ffi_wasm(obj))
}

///|
fn worker_navigator_vendor_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_vendor"

///|
fn worker_navigator_vendor_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_vendor_ffi_wasm(obj))
}

///|
fn worker_navigator_vendor_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_vendorSub"

///|
fn worker_navigator_vendor_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_vendor_sub_ffi_wasm(obj))
}

///|
fn worker_navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "webapi_WorkerNavigator" "taintEnabled"

///|
fn worker_navigator_oscpu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_oscpu"

///|
fn worker_navigator_oscpu_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_oscpu_ffi_wasm(obj))
}

///|
fn worker_navigator_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_language"

///|
fn worker_navigator_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_language_ffi_wasm(obj))
}

///|
fn worker_navigator_languages_ffi_wasm(obj : JsValue) -> JsArray = "webapi_WorkerNavigator" "get_languages"

///|
fn worker_navigator_languages_ffi(obj : JsValue) -> Array[String] {
  worker_navigator_languages_ffi_wasm(obj).to_string_array()
}

///|
fn worker_navigator_on_line_ffi(obj : JsValue) -> Bool = "webapi_WorkerNavigator" "get_onLine"

///|
fn worker_navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 = "webapi_WorkerNavigator" "get_hardwareConcurrency"

///|
fn worker_navigator_storage_ffi(obj : JsValue) -> StorageManager = "webapi_WorkerNavigator" "get_storage"
