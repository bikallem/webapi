// Do not edit. This file is generated.
// MoonBit type: PluginArray
// Specifications: html.idl

/// [PluginArray](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray)
#external
pub type PluginArray

pub impl TJsValue for PluginArray with to_js(self: PluginArray) -> JsValue = "%identity"

pub fn[T: TPluginArray] PluginArray::into(self : PluginArray) -> T = "%identity"

pub impl TPluginArray for PluginArray

/// [PluginArray](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray) interface.
pub trait TPluginArray: TJsValue {
  refresh(self : Self) -> Unit = _
  length(self : Self) -> UInt = _
}

/// [PluginArray.refresh](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray/refresh)
impl TPluginArray with refresh(self : Self) -> Unit {
  plugin_array_refresh_ffi(TJsValue::to_js(self))
}

/// [PluginArray.length](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray/length)
impl TPluginArray with length(self : Self) -> UInt {
  plugin_array_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}