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
  taint_enabled(self : Self) -> Bool = _
  register_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  unregister_protocol_handler(self : Self, scheme : String, url : String) -> Unit = _
  java_enabled(self : Self) -> Bool = _
}

///|
extern "js" fn navigator_taint_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.taintEnabled(obj)"

///|
impl TNavigator with taint_enabled(self : Self) -> Bool {
  navigator_taint_enabled_ffi(TJsValue::to_js(self))
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
extern "js" fn navigator_java_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.javaEnabled(obj)"

///|
impl TNavigator with java_enabled(self : Self) -> Bool {
  navigator_java_enabled_ffi(TJsValue::to_js(self))
}
