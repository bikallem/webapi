// Do not edit. This file is generated.
// MoonBit type: Plugin
// Specifications: html.idl

/// [Plugin](https://developer.mozilla.org/en-US/docs/Web/API/Plugin)
#external
pub type Plugin

pub impl TJsValue for Plugin with to_js(self: Plugin) -> JsValue = "%identity"

pub fn[T: TPlugin] Plugin::into(self : Plugin) -> T = "%identity"

pub impl TPlugin for Plugin

/// [Plugin](https://developer.mozilla.org/en-US/docs/Web/API/Plugin) interface.
pub trait TPlugin: TJsValue {
  name(self : Self) -> String = _
  description(self : Self) -> String = _
  filename(self : Self) -> String = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> MimeType? = _
  named_item(self : Self, name : String) -> MimeType? = _
}

/// [Plugin.name](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/name)
impl TPlugin with name(self : Self) -> String {
  plugin_name_ffi(TJsValue::to_js(self))
}

/// [Plugin.description](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/description)
impl TPlugin with description(self : Self) -> String {
  plugin_description_ffi(TJsValue::to_js(self))
}

/// [Plugin.filename](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/filename)
impl TPlugin with filename(self : Self) -> String {
  plugin_filename_ffi(TJsValue::to_js(self))
}

/// [Plugin.length](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/length)
impl TPlugin with length(self : Self) -> UInt {
  plugin_length_ffi(TJsValue::to_js(self))
}

/// [Plugin.item](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/item)
impl TPlugin with item(self : Self, 
index : UInt) -> MimeType? {
  let result = plugin_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [Plugin.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/namedItem)
impl TPlugin with named_item(self : Self, 
name : String) -> MimeType? {
  let result = plugin_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}