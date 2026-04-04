// Do not edit. This file is generated.
// MoonBit type: Navigator
// Specifications: service-workers.idl, html.idl, vibration.idl, pointerevents.idl, permissions.idl, clipboard-apis.idl

///|
/// [Navigator](https://developer.mozilla.org/en-US/docs/Web/API/Navigator)
#external
pub type Navigator

///|
pub impl TJsValue for Navigator with to_js(self : Navigator) -> JsValue = "%identity"

///|
pub impl FromJsAny for Navigator with from_js_any(value : JsAny) -> Navigator = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TNavigator] Navigator::into(self : Navigator) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TNavigator] Navigator::unsafe_into(self : Navigator) -> T = "%identity"

///|
pub impl HasConstructor for Navigator with constructor_name() {
  "Navigator"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNavigator + HasConstructor] Navigator::try_into(
  self : Navigator,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TNavigator for Navigator

///|
/// [Navigator](https://developer.mozilla.org/en-US/docs/Web/API/Navigator) interface.
pub trait TNavigator: TJsValue {
  user_activation(self : Self) -> UserActivation = _
  vibrate(self : Self, pattern : &TVibratePattern) -> Bool = _
  permissions(self : Self) -> Permissions = _
  max_touch_points(self : Self) -> Int = _
  clipboard(self : Self) -> Clipboard = _
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
  register_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  unregister_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  cookie_enabled(self : Self) -> Bool = _
  plugins(self : Self) -> PluginArray = _
  mime_types(self : Self) -> MimeTypeArray = _
  java_enabled(self : Self) -> Bool = _
  pdf_viewer_enabled(self : Self) -> Bool = _
  hardware_concurrency(self : Self) -> UInt64 = _
  storage(self : Self) -> StorageManager = _
}

///|
/// [Navigator.userActivation](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/userActivation)
impl TNavigator with user_activation(self : Self) -> UserActivation {
  navigator_user_activation_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.vibrate](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vibrate)
impl TNavigator with vibrate(self : Self, pattern : &TVibratePattern) -> Bool {
  navigator_vibrate_ffi(TJsValue::to_js(self), pattern.to_js())
}

///|
/// [Navigator.permissions](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/permissions)
impl TNavigator with permissions(self : Self) -> Permissions {
  navigator_permissions_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.maxTouchPoints](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/maxTouchPoints)
impl TNavigator with max_touch_points(self : Self) -> Int {
  navigator_max_touch_points_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.clipboard](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/clipboard)
impl TNavigator with clipboard(self : Self) -> Clipboard {
  navigator_clipboard_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.serviceWorker](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/serviceWorker)
impl TNavigator with service_worker(self : Self) -> ServiceWorkerContainer {
  navigator_service_worker_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.appCodeName](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/appCodeName)
impl TNavigator with app_code_name(self : Self) -> String {
  navigator_app_code_name_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.appName](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/appName)
impl TNavigator with app_name(self : Self) -> String {
  navigator_app_name_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.appVersion](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/appVersion)
impl TNavigator with app_version(self : Self) -> String {
  navigator_app_version_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.platform](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/platform)
impl TNavigator with platform(self : Self) -> String {
  navigator_platform_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.product](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/product)
impl TNavigator with product(self : Self) -> String {
  navigator_product_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.productSub](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/productSub)
impl TNavigator with product_sub(self : Self) -> String {
  navigator_product_sub_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.userAgent](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/userAgent)
impl TNavigator with user_agent(self : Self) -> String {
  navigator_user_agent_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.vendor](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vendor)
impl TNavigator with vendor(self : Self) -> String {
  navigator_vendor_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.vendorSub](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vendorSub)
impl TNavigator with vendor_sub(self : Self) -> String {
  navigator_vendor_sub_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.taintEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/taintEnabled)
impl TNavigator with taint_enabled(self : Self) -> Bool {
  navigator_taint_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.oscpu](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/oscpu)
impl TNavigator with oscpu(self : Self) -> String {
  navigator_oscpu_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.language](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/language)
impl TNavigator with language(self : Self) -> String {
  navigator_language_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.languages](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/languages)
impl TNavigator with languages(self : Self) -> Array[String] {
  navigator_languages_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.onLine](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/onLine)
impl TNavigator with on_line(self : Self) -> Bool {
  navigator_on_line_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.registerProtocolHandler](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/registerProtocolHandler)
impl TNavigator with register_protocol_handler(
  self : Self,
  scheme : String,
  url : String,
) -> Unit {
  navigator_register_protocol_handler_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scheme),
    TJsValue::to_js(url),
  )
}

///|
/// [Navigator.unregisterProtocolHandler](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/unregisterProtocolHandler)
impl TNavigator with unregister_protocol_handler(
  self : Self,
  scheme : String,
  url : String,
) -> Unit {
  navigator_unregister_protocol_handler_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scheme),
    TJsValue::to_js(url),
  )
}

///|
/// [Navigator.cookieEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/cookieEnabled)
impl TNavigator with cookie_enabled(self : Self) -> Bool {
  navigator_cookie_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.plugins](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/plugins)
impl TNavigator with plugins(self : Self) -> PluginArray {
  navigator_plugins_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.mimeTypes](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/mimeTypes)
impl TNavigator with mime_types(self : Self) -> MimeTypeArray {
  navigator_mime_types_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.javaEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/javaEnabled)
impl TNavigator with java_enabled(self : Self) -> Bool {
  navigator_java_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.pdfViewerEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/pdfViewerEnabled)
impl TNavigator with pdf_viewer_enabled(self : Self) -> Bool {
  navigator_pdf_viewer_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.hardwareConcurrency](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/hardwareConcurrency)
impl TNavigator with hardware_concurrency(self : Self) -> UInt64 {
  navigator_hardware_concurrency_ffi(TJsValue::to_js(self))
}

///|
/// [Navigator.storage](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/storage)
impl TNavigator with storage(self : Self) -> StorageManager {
  navigator_storage_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn navigator_user_activation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.userActivation"

///|
#cfg(target="js")
fn navigator_user_activation_ffi(obj : JsValue) -> UserActivation {
  navigator_user_activation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_vibrate_ffi_js(
  obj : JsValue,
  pattern : JsValue,
) -> JsValue = "(obj, pattern) => obj.vibrate(pattern)"

///|
#cfg(target="js")
fn navigator_vibrate_ffi(obj : JsValue, pattern : JsValue) -> Bool {
  navigator_vibrate_ffi_js(obj, pattern).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_permissions_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.permissions"

///|
#cfg(target="js")
fn navigator_permissions_ffi(obj : JsValue) -> Permissions {
  navigator_permissions_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_max_touch_points_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.maxTouchPoints"

///|
#cfg(target="js")
fn navigator_max_touch_points_ffi(obj : JsValue) -> Int {
  navigator_max_touch_points_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_clipboard_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clipboard"

///|
#cfg(target="js")
fn navigator_clipboard_ffi(obj : JsValue) -> Clipboard {
  navigator_clipboard_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_service_worker_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.serviceWorker"

///|
#cfg(target="js")
fn navigator_service_worker_ffi(obj : JsValue) -> ServiceWorkerContainer {
  navigator_service_worker_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_app_code_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appCodeName"

///|
#cfg(target="js")
fn navigator_app_code_name_ffi(obj : JsValue) -> String {
  navigator_app_code_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_app_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appName"

///|
#cfg(target="js")
fn navigator_app_name_ffi(obj : JsValue) -> String {
  navigator_app_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_app_version_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.appVersion"

///|
#cfg(target="js")
fn navigator_app_version_ffi(obj : JsValue) -> String {
  navigator_app_version_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_platform_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.platform"

///|
#cfg(target="js")
fn navigator_platform_ffi(obj : JsValue) -> String {
  navigator_platform_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_product_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.product"

///|
#cfg(target="js")
fn navigator_product_ffi(obj : JsValue) -> String {
  navigator_product_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_product_sub_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.productSub"

///|
#cfg(target="js")
fn navigator_product_sub_ffi(obj : JsValue) -> String {
  navigator_product_sub_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_user_agent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.userAgent"

///|
#cfg(target="js")
fn navigator_user_agent_ffi(obj : JsValue) -> String {
  navigator_user_agent_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_vendor_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vendor"

///|
#cfg(target="js")
fn navigator_vendor_ffi(obj : JsValue) -> String {
  navigator_vendor_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_vendor_sub_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vendorSub"

///|
#cfg(target="js")
fn navigator_vendor_sub_ffi(obj : JsValue) -> String {
  navigator_vendor_sub_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_taint_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.taintEnabled()"

///|
#cfg(target="js")
fn navigator_taint_enabled_ffi(obj : JsValue) -> Bool {
  navigator_taint_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_oscpu_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oscpu"

///|
#cfg(target="js")
fn navigator_oscpu_ffi(obj : JsValue) -> String {
  navigator_oscpu_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
#cfg(target="js")
fn navigator_language_ffi(obj : JsValue) -> String {
  navigator_language_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_languages_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.languages"

///|
#cfg(target="js")
fn navigator_languages_ffi(obj : JsValue) -> Array[String] {
  navigator_languages_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_on_line_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onLine"

///|
#cfg(target="js")
fn navigator_on_line_ffi(obj : JsValue) -> Bool {
  navigator_on_line_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_register_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "(obj, scheme, url) => obj.registerProtocolHandler(scheme, url)"

///|
#cfg(target="js")
extern "js" fn navigator_unregister_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "(obj, scheme, url) => obj.unregisterProtocolHandler(scheme, url)"

///|
#cfg(target="js")
extern "js" fn navigator_cookie_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cookieEnabled"

///|
#cfg(target="js")
fn navigator_cookie_enabled_ffi(obj : JsValue) -> Bool {
  navigator_cookie_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_plugins_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.plugins"

///|
#cfg(target="js")
fn navigator_plugins_ffi(obj : JsValue) -> PluginArray {
  navigator_plugins_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_mime_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mimeTypes"

///|
#cfg(target="js")
fn navigator_mime_types_ffi(obj : JsValue) -> MimeTypeArray {
  navigator_mime_types_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_java_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.javaEnabled()"

///|
#cfg(target="js")
fn navigator_java_enabled_ffi(obj : JsValue) -> Bool {
  navigator_java_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_pdf_viewer_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pdfViewerEnabled"

///|
#cfg(target="js")
fn navigator_pdf_viewer_enabled_ffi(obj : JsValue) -> Bool {
  navigator_pdf_viewer_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_hardware_concurrency_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hardwareConcurrency"

///|
#cfg(target="js")
fn navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 {
  navigator_hardware_concurrency_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigator_storage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.storage"

///|
#cfg(target="js")
fn navigator_storage_ffi(obj : JsValue) -> StorageManager {
  navigator_storage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigator_user_activation_ffi(obj : JsValue) -> UserActivation = "webapi_Navigator" "get_userActivation"

///|
#cfg(target="wasm-gc")
fn navigator_vibrate_ffi(obj : JsValue, pattern : JsValue) -> Bool = "webapi_Navigator" "vibrate"

///|
#cfg(target="wasm-gc")
fn navigator_permissions_ffi(obj : JsValue) -> Permissions = "webapi_Navigator" "get_permissions"

///|
#cfg(target="wasm-gc")
fn navigator_max_touch_points_ffi(obj : JsValue) -> Int = "webapi_Navigator" "get_maxTouchPoints"

///|
#cfg(target="wasm-gc")
fn navigator_clipboard_ffi(obj : JsValue) -> Clipboard = "webapi_Navigator" "get_clipboard"

///|
#cfg(target="wasm-gc")
fn navigator_service_worker_ffi(obj : JsValue) -> ServiceWorkerContainer = "webapi_Navigator" "get_serviceWorker"

///|
#cfg(target="wasm-gc")
fn navigator_app_code_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_appCodeName"

///|
#cfg(target="wasm-gc")
fn navigator_app_code_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_app_code_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_app_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_appName"

///|
#cfg(target="wasm-gc")
fn navigator_app_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_app_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_app_version_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_appVersion"

///|
#cfg(target="wasm-gc")
fn navigator_app_version_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_app_version_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_platform_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_platform"

///|
#cfg(target="wasm-gc")
fn navigator_platform_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_platform_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_product_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_product"

///|
#cfg(target="wasm-gc")
fn navigator_product_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_product_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_product_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_productSub"

///|
#cfg(target="wasm-gc")
fn navigator_product_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_product_sub_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_user_agent_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_userAgent"

///|
#cfg(target="wasm-gc")
fn navigator_user_agent_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_user_agent_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_vendor_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_vendor"

///|
#cfg(target="wasm-gc")
fn navigator_vendor_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_vendor_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_vendor_sub_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_vendorSub"

///|
#cfg(target="wasm-gc")
fn navigator_vendor_sub_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_vendor_sub_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "taintEnabled"

///|
#cfg(target="wasm-gc")
fn navigator_oscpu_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_oscpu"

///|
#cfg(target="wasm-gc")
fn navigator_oscpu_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_oscpu_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigator" "get_language"

///|
#cfg(target="wasm-gc")
fn navigator_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigator_language_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigator_languages_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Navigator" "get_languages"

///|
#cfg(target="wasm-gc")
fn navigator_languages_ffi(obj : JsValue) -> Array[String] {
  navigator_languages_ffi_wasm(obj).to_string_array()
}

///|
#cfg(target="wasm-gc")
fn navigator_on_line_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "get_onLine"

///|
#cfg(target="wasm-gc")
fn navigator_register_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "webapi_Navigator" "registerProtocolHandler"

///|
#cfg(target="wasm-gc")
fn navigator_unregister_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "webapi_Navigator" "unregisterProtocolHandler"

///|
#cfg(target="wasm-gc")
fn navigator_cookie_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "get_cookieEnabled"

///|
#cfg(target="wasm-gc")
fn navigator_plugins_ffi(obj : JsValue) -> PluginArray = "webapi_Navigator" "get_plugins"

///|
#cfg(target="wasm-gc")
fn navigator_mime_types_ffi(obj : JsValue) -> MimeTypeArray = "webapi_Navigator" "get_mimeTypes"

///|
#cfg(target="wasm-gc")
fn navigator_java_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "javaEnabled"

///|
#cfg(target="wasm-gc")
fn navigator_pdf_viewer_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "get_pdfViewerEnabled"

///|
#cfg(target="wasm-gc")
fn navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 = "webapi_Navigator" "get_hardwareConcurrency"

///|
#cfg(target="wasm-gc")
fn navigator_storage_ffi(obj : JsValue) -> StorageManager = "webapi_Navigator" "get_storage"
