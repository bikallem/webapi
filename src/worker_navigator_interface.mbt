// Do not edit. This file is generated.
// MoonBit type: WorkerNavigator
// Specifications: html.idl

///|
/// [WorkerNavigator](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator)
#external
pub type WorkerNavigator

///|
pub impl TJsValue for WorkerNavigator with to_js(self : WorkerNavigator) -> JsValue = "%identity"

///|
pub impl FromJsAny for WorkerNavigator with from_js_any(value : JsAny) -> WorkerNavigator = "%identity"

///|
pub fn[T : TWorkerNavigator] WorkerNavigator::into(self : WorkerNavigator) -> T = "%identity"

///|
pub impl TWorkerNavigator for WorkerNavigator

///|
/// [WorkerNavigator](https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator) interface.
pub trait TWorkerNavigator: TJsValue {
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
  languages(self : Self) -> JsValue = _
  on_line(self : Self) -> Bool = _
  hardware_concurrency(self : Self) -> UInt64 = _
  storage(self : Self) -> StorageManager = _
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
impl TWorkerNavigator with languages(self : Self) -> JsValue {
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
