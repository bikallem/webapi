// Do not edit. This file is generated.
// MoonBit type: WorkerNavigator
// Specifications: service-workers.idl, permissions.idl, html.idl

///|
/// [WorkerNavigator](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator)
#external
pub type WorkerNavigator

///|
pub impl TJsValue for WorkerNavigator with to_js(self : WorkerNavigator) -> JsValue = "%identity"

///|
pub impl FromJsAny for WorkerNavigator with from_js_any(value : JsAny) -> WorkerNavigator = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWorkerNavigator] WorkerNavigator::into(self : WorkerNavigator) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWorkerNavigator] WorkerNavigator::unsafe_into(
  self : WorkerNavigator,
) -> T = "%identity"

///|
pub impl HasConstructor for WorkerNavigator with constructor_name() {
  "WorkerNavigator"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWorkerNavigator + HasConstructor] WorkerNavigator::try_into(
  self : WorkerNavigator,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWorkerNavigator for WorkerNavigator

///|
/// [WorkerNavigator](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator) interface.
pub trait TWorkerNavigator: TJsValue {
  permissions(self : Self) -> Permissions = _
  service_worker(self : Self) -> ServiceWorkerContainer = _
  app_code_name(self : Self) -> String = _
  app_name(self : Self) -> String = _
  app_version(self : Self) -> String = _
  platform(self : Self) -> String = _
  product(self : Self) -> String = _
  product_sub(self : Self) -> String = _
  user_agent(self : Self) -> String = _
  vendor(self : Self) -> String = _
  vendor_sub(self : Self) -> String = _
  taint_enabled(self : Self) -> Bool = _
  oscpu(self : Self) -> String = _
  language(self : Self) -> String = _
  languages(self : Self) -> Array[String] = _
  on_line(self : Self) -> Bool = _
  hardware_concurrency(self : Self) -> UInt64 = _
  storage(self : Self) -> StorageManager = _
}

///|
/// [WorkerNavigator.permissions](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/permissions)
impl TWorkerNavigator with permissions(self : Self) -> Permissions {
  worker_navigator_permissions_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.serviceWorker](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/serviceWorker)
impl TWorkerNavigator with service_worker(self : Self) -> ServiceWorkerContainer {
  worker_navigator_service_worker_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.appCodeName](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/appCodeName)
impl TWorkerNavigator with app_code_name(self : Self) -> String {
  worker_navigator_app_code_name_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.appName](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/appName)
impl TWorkerNavigator with app_name(self : Self) -> String {
  worker_navigator_app_name_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.appVersion](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/appVersion)
impl TWorkerNavigator with app_version(self : Self) -> String {
  worker_navigator_app_version_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.platform](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/platform)
impl TWorkerNavigator with platform(self : Self) -> String {
  worker_navigator_platform_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.product](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/product)
impl TWorkerNavigator with product(self : Self) -> String {
  worker_navigator_product_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.productSub](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/productSub)
impl TWorkerNavigator with product_sub(self : Self) -> String {
  worker_navigator_product_sub_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.userAgent](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/userAgent)
impl TWorkerNavigator with user_agent(self : Self) -> String {
  worker_navigator_user_agent_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.vendor](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/vendor)
impl TWorkerNavigator with vendor(self : Self) -> String {
  worker_navigator_vendor_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.vendorSub](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/vendorSub)
impl TWorkerNavigator with vendor_sub(self : Self) -> String {
  worker_navigator_vendor_sub_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.taintEnabled](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/taintEnabled)
impl TWorkerNavigator with taint_enabled(self : Self) -> Bool {
  worker_navigator_taint_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.oscpu](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/oscpu)
impl TWorkerNavigator with oscpu(self : Self) -> String {
  worker_navigator_oscpu_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.language](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/language)
impl TWorkerNavigator with language(self : Self) -> String {
  worker_navigator_language_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.languages](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/languages)
impl TWorkerNavigator with languages(self : Self) -> Array[String] {
  worker_navigator_languages_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.onLine](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/onLine)
impl TWorkerNavigator with on_line(self : Self) -> Bool {
  worker_navigator_on_line_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.hardwareConcurrency](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/hardwareConcurrency)
impl TWorkerNavigator with hardware_concurrency(self : Self) -> UInt64 {
  worker_navigator_hardware_concurrency_ffi(TJsValue::to_js(self))
}

///|
/// [WorkerNavigator.storage](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator/storage)
impl TWorkerNavigator with storage(self : Self) -> StorageManager {
  worker_navigator_storage_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_permissions_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.permissions"

///|
#cfg(target="js")
fn worker_navigator_permissions_ffi(obj : JsValue) -> Permissions {
  worker_navigator_permissions_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_service_worker_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.serviceWorker"

///|
#cfg(target="js")
fn worker_navigator_service_worker_ffi(obj : JsValue) -> ServiceWorkerContainer {
  worker_navigator_service_worker_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_app_code_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appCodeName"

///|
#cfg(target="js")
fn worker_navigator_app_code_name_ffi(obj : JsValue) -> String {
  worker_navigator_app_code_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_app_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appName"

///|
#cfg(target="js")
fn worker_navigator_app_name_ffi(obj : JsValue) -> String {
  worker_navigator_app_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_app_version_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appVersion"

///|
#cfg(target="js")
fn worker_navigator_app_version_ffi(obj : JsValue) -> String {
  worker_navigator_app_version_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_platform_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.platform"

///|
#cfg(target="js")
fn worker_navigator_platform_ffi(obj : JsValue) -> String {
  worker_navigator_platform_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_product_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.product"

///|
#cfg(target="js")
fn worker_navigator_product_ffi(obj : JsValue) -> String {
  worker_navigator_product_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_product_sub_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.productSub"

///|
#cfg(target="js")
fn worker_navigator_product_sub_ffi(obj : JsValue) -> String {
  worker_navigator_product_sub_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_user_agent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.userAgent"

///|
#cfg(target="js")
fn worker_navigator_user_agent_ffi(obj : JsValue) -> String {
  worker_navigator_user_agent_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_vendor_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vendor"

///|
#cfg(target="js")
fn worker_navigator_vendor_ffi(obj : JsValue) -> String {
  worker_navigator_vendor_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_vendor_sub_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vendorSub"

///|
#cfg(target="js")
fn worker_navigator_vendor_sub_ffi(obj : JsValue) -> String {
  worker_navigator_vendor_sub_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_taint_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.taintEnabled()"

///|
#cfg(target="js")
fn worker_navigator_taint_enabled_ffi(obj : JsValue) -> Bool {
  worker_navigator_taint_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_oscpu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oscpu"

///|
#cfg(target="js")
fn worker_navigator_oscpu_ffi(obj : JsValue) -> String {
  worker_navigator_oscpu_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
#cfg(target="js")
fn worker_navigator_language_ffi(obj : JsValue) -> String {
  worker_navigator_language_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_languages_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.languages"

///|
#cfg(target="js")
fn worker_navigator_languages_ffi(obj : JsValue) -> Array[String] {
  worker_navigator_languages_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_on_line_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onLine"

///|
#cfg(target="js")
fn worker_navigator_on_line_ffi(obj : JsValue) -> Bool {
  worker_navigator_on_line_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_hardware_concurrency_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.hardwareConcurrency"

///|
#cfg(target="js")
fn worker_navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 {
  worker_navigator_hardware_concurrency_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn worker_navigator_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.storage"

///|
#cfg(target="js")
fn worker_navigator_storage_ffi(obj : JsValue) -> StorageManager {
  worker_navigator_storage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_permissions_ffi(obj : JsValue) -> Permissions = "webapi_WorkerNavigator" "get_permissions"

///|
#cfg(target="wasm-gc")
fn worker_navigator_service_worker_ffi(obj : JsValue) -> ServiceWorkerContainer = "webapi_WorkerNavigator" "get_serviceWorker"

///|
#cfg(target="wasm-gc")
fn worker_navigator_app_code_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_appCodeName"

///|
#cfg(target="wasm-gc")
fn worker_navigator_app_code_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_app_code_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_app_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_appName"

///|
#cfg(target="wasm-gc")
fn worker_navigator_app_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_app_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_app_version_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_appVersion"

///|
#cfg(target="wasm-gc")
fn worker_navigator_app_version_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_app_version_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_platform_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_platform"

///|
#cfg(target="wasm-gc")
fn worker_navigator_platform_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_platform_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_product_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_product"

///|
#cfg(target="wasm-gc")
fn worker_navigator_product_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_product_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_product_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_productSub"

///|
#cfg(target="wasm-gc")
fn worker_navigator_product_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_product_sub_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_user_agent_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_userAgent"

///|
#cfg(target="wasm-gc")
fn worker_navigator_user_agent_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_user_agent_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_vendor_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_vendor"

///|
#cfg(target="wasm-gc")
fn worker_navigator_vendor_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_vendor_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_vendor_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_vendorSub"

///|
#cfg(target="wasm-gc")
fn worker_navigator_vendor_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_vendor_sub_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "webapi_WorkerNavigator" "taintEnabled"

///|
#cfg(target="wasm-gc")
fn worker_navigator_oscpu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_oscpu"

///|
#cfg(target="wasm-gc")
fn worker_navigator_oscpu_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_oscpu_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_WorkerNavigator" "get_language"

///|
#cfg(target="wasm-gc")
fn worker_navigator_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(worker_navigator_language_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_languages_ffi_wasm(obj : JsValue) -> JsArray = "webapi_WorkerNavigator" "get_languages"

///|
#cfg(target="wasm-gc")
fn worker_navigator_languages_ffi(obj : JsValue) -> Array[String] {
  worker_navigator_languages_ffi_wasm(obj).to_string_array()
}

///|
#cfg(target="wasm-gc")
fn worker_navigator_on_line_ffi(obj : JsValue) -> Bool = "webapi_WorkerNavigator" "get_onLine"

///|
#cfg(target="wasm-gc")
fn worker_navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 = "webapi_WorkerNavigator" "get_hardwareConcurrency"

///|
#cfg(target="wasm-gc")
fn worker_navigator_storage_ffi(obj : JsValue) -> StorageManager = "webapi_WorkerNavigator" "get_storage"
