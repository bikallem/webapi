// Do not edit. This file is generated.
// MoonBit type: Navigator
// Specifications: html.idl

///|
/// [Navigator](https://developer.mozilla.org/en-US/docs/Web/API/Navigator)
#external
pub type Navigator

///|
pub impl TJsValue for Navigator with to_js(self : Navigator) -> JsValue = "%identity"

///|
pub fn[T : TNavigator] Navigator::into(self : Navigator) -> T = "%identity"

///|
pub impl TNavigator for Navigator

///|
/// [Navigator](https://developer.mozilla.org/en-US/docs/Web/API/Navigator) interface.
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
/// [Navigator.userActivation](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/userActivation)
impl TNavigator with user_activation(self : Self) -> UserActivation {
  navigator_user_activation_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.appCodeName](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/appCodeName)
impl TNavigator with app_code_name(self : Self) -> String {
  navigator_app_code_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.appName](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/appName)
impl TNavigator with app_name(self : Self) -> String {
  navigator_app_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.appVersion](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/appVersion)
impl TNavigator with app_version(self : Self) -> String {
  navigator_app_version_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.platform](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/platform)
impl TNavigator with platform(self : Self) -> String {
  navigator_platform_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.product](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/product)
impl TNavigator with product(self : Self) -> String {
  navigator_product_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.productSub](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/productSub)
impl TNavigator with product_sub(self : Self) -> String {
  navigator_product_sub_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.userAgent](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/userAgent)
impl TNavigator with user_agent(self : Self) -> String {
  navigator_user_agent_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.vendor](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vendor)
impl TNavigator with vendor(self : Self) -> String {
  navigator_vendor_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.vendorSub](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/vendorSub)
impl TNavigator with vendor_sub(self : Self) -> String {
  navigator_vendor_sub_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.taintEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/taintEnabled)
impl TNavigator with taint_enabled(self : Self) -> Bool {
  navigator_taint_enabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.oscpu](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/oscpu)
impl TNavigator with oscpu(self : Self) -> String {
  navigator_oscpu_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.language](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/language)
impl TNavigator with language(self : Self) -> String {
  navigator_language_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.languages](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/languages)
impl TNavigator with languages(self : Self) -> JsValue {
  navigator_languages_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.onLine](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/onLine)
impl TNavigator with on_line(self : Self) -> Bool {
  navigator_on_line_ffi(TJsValue::to_js(self)).unsafe_cast()
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
  navigator_cookie_enabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.plugins](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/plugins)
impl TNavigator with plugins(self : Self) -> PluginArray {
  navigator_plugins_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.mimeTypes](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/mimeTypes)
impl TNavigator with mime_types(self : Self) -> MimeTypeArray {
  navigator_mime_types_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.javaEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/javaEnabled)
impl TNavigator with java_enabled(self : Self) -> Bool {
  navigator_java_enabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.pdfViewerEnabled](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/pdfViewerEnabled)
impl TNavigator with pdf_viewer_enabled(self : Self) -> Bool {
  navigator_pdf_viewer_enabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Navigator.hardwareConcurrency](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/hardwareConcurrency)
impl TNavigator with hardware_concurrency(self : Self) -> UInt64 {
  navigator_hardware_concurrency_ffi(TJsValue::to_js(self)).unsafe_cast()
}
