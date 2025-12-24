///|
#external
pub type WorkerNavigator

///|
pub impl TJsValue for WorkerNavigator with to_js(self : WorkerNavigator) -> JsValue = "%identity"

///|
pub fn[T : TWorkerNavigator] WorkerNavigator::into(self : WorkerNavigator) -> T = "%identity"

///|
pub impl TWorkerNavigator for WorkerNavigator

///|
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
}

///|
extern "js" fn worker_navigator_app_code_name_ffi(obj : JsValue) -> String = "(obj) => obj.appCodeName"

///|
impl TWorkerNavigator with app_code_name(self : Self) -> String {
  worker_navigator_app_code_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_app_name_ffi(obj : JsValue) -> String = "(obj) => obj.appName"

///|
impl TWorkerNavigator with app_name(self : Self) -> String {
  worker_navigator_app_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_app_version_ffi(obj : JsValue) -> String = "(obj) => obj.appVersion"

///|
impl TWorkerNavigator with app_version(self : Self) -> String {
  worker_navigator_app_version_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_platform_ffi(obj : JsValue) -> String = "(obj) => obj.platform"

///|
impl TWorkerNavigator with platform(self : Self) -> String {
  worker_navigator_platform_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_product_ffi(obj : JsValue) -> String = "(obj) => obj.product"

///|
impl TWorkerNavigator with product(self : Self) -> String {
  worker_navigator_product_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_product_sub_ffi(obj : JsValue) -> String = "(obj) => obj.productSub"

///|
impl TWorkerNavigator with product_sub(self : Self) -> String {
  worker_navigator_product_sub_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_user_agent_ffi(obj : JsValue) -> String = "(obj) => obj.userAgent"

///|
impl TWorkerNavigator with user_agent(self : Self) -> String {
  worker_navigator_user_agent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_vendor_ffi(obj : JsValue) -> String = "(obj) => obj.vendor"

///|
impl TWorkerNavigator with vendor(self : Self) -> String {
  worker_navigator_vendor_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_vendor_sub_ffi(obj : JsValue) -> String = "(obj) => obj.vendorSub"

///|
impl TWorkerNavigator with vendor_sub(self : Self) -> String {
  worker_navigator_vendor_sub_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.taintEnabled(obj)"

///|
impl TWorkerNavigator with taint_enabled(self : Self) -> Bool {
  worker_navigator_taint_enabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_oscpu_ffi(obj : JsValue) -> String = "(obj) => obj.oscpu"

///|
impl TWorkerNavigator with oscpu(self : Self) -> String {
  worker_navigator_oscpu_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_language_ffi(obj : JsValue) -> String = "(obj) => obj.language"

///|
impl TWorkerNavigator with language(self : Self) -> String {
  worker_navigator_language_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_languages_ffi(obj : JsValue) -> JsValue = "(obj) => obj.languages"

///|
impl TWorkerNavigator with languages(self : Self) -> JsValue {
  worker_navigator_languages_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_on_line_ffi(obj : JsValue) -> Bool = "(obj) => obj.onLine"

///|
impl TWorkerNavigator with on_line(self : Self) -> Bool {
  worker_navigator_on_line_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_navigator_hardware_concurrency_ffi(
  obj : JsValue,
) -> UInt64 = "(obj) => obj.hardwareConcurrency"

///|
impl TWorkerNavigator with hardware_concurrency(self : Self) -> UInt64 {
  worker_navigator_hardware_concurrency_ffi(TJsValue::to_js(self))
}
