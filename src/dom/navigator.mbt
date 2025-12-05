// Auto-generated MoonBit bindings for Navigator

// Do not edit manually

///|
#external
pub type Navigator

///|
pub trait TNavigator: TJsValue {
  user_activation(self : Self) -> JsValue = _
  app_code_name(self : Self) -> String = _
  app_name(self : Self) -> String = _
  app_version(self : Self) -> String = _
  platform(self : Self) -> String = _
  product(self : Self) -> String = _
  product_sub(self : Self) -> String = _
  user_agent(self : Self) -> String = _
  vendor(self : Self) -> String = _
  vendor_sub(self : Self) -> String = _
  oscpu(self : Self) -> String = _
  language(self : Self) -> String = _
  languages(self : Self) -> Array[String] = _
  on_line(self : Self) -> Bool = _
  cookie_enabled(self : Self) -> Bool = _
  plugins(self : Self) -> JsValue = _
  mime_types(self : Self) -> JsValue = _
  pdf_viewer_enabled(self : Self) -> Bool = _
  hardware_concurrency(self : Self) -> UInt64 = _
  taint_enabled(self : Self) -> Bool = _
  register_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  unregister_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  java_enabled(self : Self) -> Bool = _
}

///|
pub impl TNavigator for Navigator

///|
pub impl TJsValue for Navigator with to_js(self : Navigator) -> JsValue = "%identity"

///|
fn navigator_taint_enabled_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "taintEnabled"

///|
impl TNavigator with taint_enabled(self : Self) -> Bool {
  navigator_taint_enabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn navigator_register_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "webapi_Navigator" "registerProtocolHandler"

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
fn navigator_unregister_protocol_handler_ffi(
  obj : JsValue,
  scheme : JsValue,
  url : JsValue,
) -> Unit = "webapi_Navigator" "unregisterProtocolHandler"

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
fn navigator_java_enabled_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "javaEnabled"

///|
impl TNavigator with java_enabled(self : Self) -> Bool {
  navigator_java_enabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn navigator_user_activation_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "userActivation"

///|
impl TNavigator with user_activation(self : Self) -> JsValue {
  navigator_user_activation_ffi(self.to_js())
}

///|
fn navigator_app_code_name_ffi(obj : JsValue) -> String = "webapi_Navigator" "appCodeName"

///|
impl TNavigator with app_code_name(self : Self) -> String {
  navigator_app_code_name_ffi(self.to_js())
}

///|
fn navigator_app_name_ffi(obj : JsValue) -> String = "webapi_Navigator" "appName"

///|
impl TNavigator with app_name(self : Self) -> String {
  navigator_app_name_ffi(self.to_js())
}

///|
fn navigator_app_version_ffi(obj : JsValue) -> String = "webapi_Navigator" "appVersion"

///|
impl TNavigator with app_version(self : Self) -> String {
  navigator_app_version_ffi(self.to_js())
}

///|
fn navigator_platform_ffi(obj : JsValue) -> String = "webapi_Navigator" "platform"

///|
impl TNavigator with platform(self : Self) -> String {
  navigator_platform_ffi(self.to_js())
}

///|
fn navigator_product_ffi(obj : JsValue) -> String = "webapi_Navigator" "product"

///|
impl TNavigator with product(self : Self) -> String {
  navigator_product_ffi(self.to_js())
}

///|
fn navigator_product_sub_ffi(obj : JsValue) -> String = "webapi_Navigator" "productSub"

///|
impl TNavigator with product_sub(self : Self) -> String {
  navigator_product_sub_ffi(self.to_js())
}

///|
fn navigator_user_agent_ffi(obj : JsValue) -> String = "webapi_Navigator" "userAgent"

///|
impl TNavigator with user_agent(self : Self) -> String {
  navigator_user_agent_ffi(self.to_js())
}

///|
fn navigator_vendor_ffi(obj : JsValue) -> String = "webapi_Navigator" "vendor"

///|
impl TNavigator with vendor(self : Self) -> String {
  navigator_vendor_ffi(self.to_js())
}

///|
fn navigator_vendor_sub_ffi(obj : JsValue) -> String = "webapi_Navigator" "vendorSub"

///|
impl TNavigator with vendor_sub(self : Self) -> String {
  navigator_vendor_sub_ffi(self.to_js())
}

///|
fn navigator_oscpu_ffi(obj : JsValue) -> String = "webapi_Navigator" "oscpu"

///|
impl TNavigator with oscpu(self : Self) -> String {
  navigator_oscpu_ffi(self.to_js())
}

///|
fn navigator_language_ffi(obj : JsValue) -> String = "webapi_Navigator" "language"

///|
impl TNavigator with language(self : Self) -> String {
  navigator_language_ffi(self.to_js())
}

///|
fn navigator_languages_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "languages"

///|
impl TNavigator with languages(self : Self) -> Array[String] {
  navigator_languages_ffi(self.to_js()).unsafe_cast()
}

///|
fn navigator_on_line_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "onLine"

///|
impl TNavigator with on_line(self : Self) -> Bool {
  navigator_on_line_ffi(self.to_js())
}

///|
fn navigator_cookie_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "cookieEnabled"

///|
impl TNavigator with cookie_enabled(self : Self) -> Bool {
  navigator_cookie_enabled_ffi(self.to_js())
}

///|
fn navigator_plugins_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "plugins"

///|
impl TNavigator with plugins(self : Self) -> JsValue {
  navigator_plugins_ffi(self.to_js())
}

///|
fn navigator_mime_types_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "mimeTypes"

///|
impl TNavigator with mime_types(self : Self) -> JsValue {
  navigator_mime_types_ffi(self.to_js())
}

///|
fn navigator_pdf_viewer_enabled_ffi(obj : JsValue) -> Bool = "webapi_Navigator" "pdfViewerEnabled"

///|
impl TNavigator with pdf_viewer_enabled(self : Self) -> Bool {
  navigator_pdf_viewer_enabled_ffi(self.to_js())
}

///|
fn navigator_hardware_concurrency_ffi(obj : JsValue) -> JsValue = "webapi_Navigator" "hardwareConcurrency"

///|
impl TNavigator with hardware_concurrency(self : Self) -> UInt64 {
  navigator_hardware_concurrency_ffi(self.to_js()).unsafe_cast()
}
