// Do not edit. This file is generated.
// MoonBit type: PluginArray
// Specifications: html.idl

///|
#external
pub type PluginArray

///|
pub impl TJsValue for PluginArray with to_js(self : PluginArray) -> JsValue = "%identity"

///|
pub fn[T : TPluginArray] PluginArray::into(self : PluginArray) -> T = "%identity"

///|
pub impl TPluginArray for PluginArray

///|
pub trait TPluginArray: TJsValue {
  refresh(self : Self) -> Unit = _
  length(self : Self) -> UInt = _
}

///|
extern "js" fn plugin_array_refresh_ffi(obj : JsValue) -> Unit = "(obj) => obj.refresh()"

///|
impl TPluginArray with refresh(self : Self) -> Unit {
  plugin_array_refresh_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn plugin_array_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TPluginArray with length(self : Self) -> UInt {
  plugin_array_length_ffi(TJsValue::to_js(self))
}
