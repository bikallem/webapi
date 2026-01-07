// Do not edit. This file is generated.
// MoonBit type: Plugin
// Specifications: html.idl

///|
/// [Plugin](https://developer.mozilla.org/en-US/docs/Web/API/Plugin)
#external
pub type Plugin

///|
pub impl TJsValue for Plugin with to_js(self : Plugin) -> JsValue = "%identity"

///|
pub fn[T : TPlugin] Plugin::into(self : Plugin) -> T = "%identity"

///|
pub impl TPlugin for Plugin

///|
/// [Plugin](https://developer.mozilla.org/en-US/docs/Web/API/Plugin) interface.
pub trait TPlugin: TJsValue {
  name(self : Self) -> String = _
  description(self : Self) -> String = _
  filename(self : Self) -> String = _
  length(self : Self) -> UInt = _
}

///|
extern "js" fn plugin_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
/// [Plugin.name](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/name)
impl TPlugin with name(self : Self) -> String {
  plugin_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_description_ffi(obj : JsValue) -> String = "(obj) => obj.description"

///|
/// [Plugin.description](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/description)
impl TPlugin with description(self : Self) -> String {
  plugin_description_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_filename_ffi(obj : JsValue) -> String = "(obj) => obj.filename"

///|
/// [Plugin.filename](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/filename)
impl TPlugin with filename(self : Self) -> String {
  plugin_filename_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
/// [Plugin.length](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/length)
impl TPlugin with length(self : Self) -> UInt {
  plugin_length_ffi(TJsValue::to_js(self))
}
