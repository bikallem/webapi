// Do not edit. This file is generated.
// MoonBit type: Plugin
// Specifications: html.idl

///|
#external
pub type Plugin

///|
pub impl TJsValue for Plugin with to_js(self : Plugin) -> JsValue = "%identity"

///|
pub fn[T : TPlugin] Plugin::into(self : Plugin) -> T = "%identity"

///|
pub impl TPlugin for Plugin

///|
pub trait TPlugin: TJsValue {
  name(self : Self) -> String = _
  description(self : Self) -> String = _
  filename(self : Self) -> String = _
  length(self : Self) -> UInt = _
}

///|
extern "js" fn plugin_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TPlugin with name(self : Self) -> String {
  plugin_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_description_ffi(obj : JsValue) -> String = "(obj) => obj.description"

///|
impl TPlugin with description(self : Self) -> String {
  plugin_description_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_filename_ffi(obj : JsValue) -> String = "(obj) => obj.filename"

///|
impl TPlugin with filename(self : Self) -> String {
  plugin_filename_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TPlugin with length(self : Self) -> UInt {
  plugin_length_ffi(TJsValue::to_js(self))
}
