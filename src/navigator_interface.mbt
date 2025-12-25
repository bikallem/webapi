// Do not edit. This file is generated.
// MoonBit type: Navigator
// Specifications: html.idl

///|
#external
pub type Navigator

///|
pub impl TJsValue for Navigator with to_js(self : Navigator) -> JsValue = "%identity"

///|
pub fn[T : TNavigator] Navigator::into(self : Navigator) -> T = "%identity"

///|
pub impl TNavigator for Navigator

///|
pub trait TNavigator: TJsValue {
  user_activation(self : Self) -> UserActivation = _
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
  register_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  unregister_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  cookie_enabled(self : Self) -> Bool = _
  plugins(self : Self) -> PluginArray = _
  mime_types(self : Self) -> MimeTypeArray = _
  java_enabled(self : Self) -> Bool = _
  pdf_viewer_enabled(self : Self) -> Bool = _
  hardware_concurrency(self : Self) -> UInt64 = _
}

///|
extern "js" fn navigator_user_activation_ffi(obj : JsValue) -> UserActivation = "(obj) => obj.userActivation"

///|
impl TNavigator with user_activation(self : Self) -> UserActivation {
  navigator_user_activation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_app_code_name_ffi(obj : JsValue) -> String = "(obj) => obj.appCodeName"

///|
impl TNavigator with app_code_name(self : Self) -> String {
  navigator_app_code_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_app_name_ffi(obj : JsValue) -> String = "(obj) => obj.appName"

///|
impl TNavigator with app_name(self : Self) -> String {
  navigator_app_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_app_version_ffi(obj : JsValue) -> String = "(obj) => obj.appVersion"

///|
impl TNavigator with app_version(self : Self) -> String {
  navigator_app_version_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_platform_ffi(obj : JsValue) -> String = "(obj) => obj.platform"

///|
impl TNavigator with platform(self : Self) -> String {
  navigator_platform_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_product_ffi(obj : JsValue) -> String = "(obj) => obj.product"

///|
impl TNavigator with product(self : Self) -> String {
  navigator_product_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_product_sub_ffi(obj : JsValue) -> String = "(obj) => obj.productSub"

///|
impl TNavigator with product_sub(self : Self) -> String {
  navigator_product_sub_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_user_agent_ffi(obj : JsValue) -> String = "(obj) => obj.userAgent"

///|
impl TNavigator with user_agent(self : Self) -> String {
  navigator_user_agent_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_vendor_ffi(obj : JsValue) -> String = "(obj) => obj.vendor"

///|
impl TNavigator with vendor(self : Self) -> String {
  navigator_vendor_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_vendor_sub_ffi(obj : JsValue) -> String = "(obj) => obj.vendorSub"

///|
impl TNavigator with vendor_sub(self : Self) -> String {
  navigator_vendor_sub_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.taintEnabled(obj)"

///|
impl TNavigator with taint_enabled(self : Self) -> Bool {
  navigator_taint_enabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_oscpu_ffi(obj : JsValue) -> String = "(obj) => obj.oscpu"

///|
impl TNavigator with oscpu(self : Self) -> String {
  navigator_oscpu_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_language_ffi(obj : JsValue) -> String = "(obj) => obj.language"

///|
impl TNavigator with language(self : Self) -> String {
  navigator_language_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_languages_ffi(obj : JsValue) -> JsValue = "(obj) => obj.languages"

///|
impl TNavigator with languages(self : Self) -> JsValue {
  navigator_languages_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_on_line_ffi(obj : JsValue) -> Bool = "(obj) => obj.onLine"

///|
impl TNavigator with on_line(self : Self) -> Bool {
  navigator_on_line_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_register_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "(obj, scheme, url) => obj.registerProtocolHandler(obj, scheme, url)"

///|
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
extern "js" fn navigator_unregister_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "(obj, scheme, url) => obj.unregisterProtocolHandler(obj, scheme, url)"

///|
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
extern "js" fn navigator_cookie_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.cookieEnabled"

///|
impl TNavigator with cookie_enabled(self : Self) -> Bool {
  navigator_cookie_enabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_plugins_ffi(obj : JsValue) -> PluginArray = "(obj) => obj.plugins"

///|
impl TNavigator with plugins(self : Self) -> PluginArray {
  navigator_plugins_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_mime_types_ffi(obj : JsValue) -> MimeTypeArray = "(obj) => obj.mimeTypes"

///|
impl TNavigator with mime_types(self : Self) -> MimeTypeArray {
  navigator_mime_types_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_java_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.javaEnabled(obj)"

///|
impl TNavigator with java_enabled(self : Self) -> Bool {
  navigator_java_enabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_pdf_viewer_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.pdfViewerEnabled"

///|
impl TNavigator with pdf_viewer_enabled(self : Self) -> Bool {
  navigator_pdf_viewer_enabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigator_hardware_concurrency_ffi(obj : JsValue) -> UInt64 = "(obj) => obj.hardwareConcurrency"

///|
impl TNavigator with hardware_concurrency(self : Self) -> UInt64 {
  navigator_hardware_concurrency_ffi(TJsValue::to_js(self))
}
