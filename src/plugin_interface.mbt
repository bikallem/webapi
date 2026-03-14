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
pub impl FromJsAny for Plugin with from_js_any(value : JsAny) -> Plugin = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TPlugin] Plugin::into(self : Plugin) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TPlugin] Plugin::unsafe_into(self : Plugin) -> T = "%identity"

///|
pub impl HasConstructor for Plugin with constructor_name() {
  "Plugin"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPlugin + HasConstructor] Plugin::try_into(self : Plugin) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TPlugin for Plugin

///|
/// [Plugin](https://developer.mozilla.org/en-US/docs/Web/API/Plugin) interface.
pub trait TPlugin: TJsValue {
  name(self : Self) -> String = _
  description(self : Self) -> String = _
  filename(self : Self) -> String = _
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> MimeType? = _
  named_item_opt(self : Self, name : String) -> MimeType? = _
  item(self : Self, index : UInt) -> MimeType = _
  named_item(self : Self, name : String) -> MimeType = _
}

///|
/// [Plugin.name](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/name)
impl TPlugin with name(self : Self) -> String {
  plugin_name_ffi(TJsValue::to_js(self))
}

///|
/// [Plugin.description](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/description)
impl TPlugin with description(self : Self) -> String {
  plugin_description_ffi(TJsValue::to_js(self))
}

///|
/// [Plugin.filename](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/filename)
impl TPlugin with filename(self : Self) -> String {
  plugin_filename_ffi(TJsValue::to_js(self))
}

///|
/// [Plugin.length](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/length)
impl TPlugin with length(self : Self) -> UInt {
  plugin_length_ffi(TJsValue::to_js(self))
}

///|
/// [Plugin.item](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/item)
impl TPlugin with item_opt(self : Self, index : UInt) -> MimeType? {
  plugin_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [Plugin.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/Plugin/namedItem)
impl TPlugin with named_item_opt(self : Self, name : String) -> MimeType? {
  plugin_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

///|
impl TPlugin with item(self : Self, index : UInt) -> MimeType {
  self.item_opt(index).unwrap()
}

///|
impl TPlugin with named_item(self : Self, name : String) -> MimeType {
  self.named_item_opt(name).unwrap()
}

///|
#cfg(target="js")
extern "js" fn plugin_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn plugin_name_ffi(obj : JsValue) -> String {
  plugin_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn plugin_description_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.description"

///|
#cfg(target="js")
fn plugin_description_ffi(obj : JsValue) -> String {
  plugin_description_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn plugin_filename_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.filename"

///|
#cfg(target="js")
fn plugin_filename_ffi(obj : JsValue) -> String {
  plugin_filename_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn plugin_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn plugin_length_ffi(obj : JsValue) -> UInt {
  plugin_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn plugin_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn plugin_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
#cfg(target="wasm-gc")
fn plugin_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Plugin" "get_name"

///|
#cfg(target="wasm-gc")
fn plugin_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(plugin_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn plugin_description_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Plugin" "get_description"

///|
#cfg(target="wasm-gc")
fn plugin_description_ffi(obj : JsValue) -> String {
  jsvalue_to_string(plugin_description_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn plugin_filename_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Plugin" "get_filename"

///|
#cfg(target="wasm-gc")
fn plugin_filename_ffi(obj : JsValue) -> String {
  jsvalue_to_string(plugin_filename_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn plugin_length_ffi(obj : JsValue) -> UInt = "webapi_Plugin" "get_length"

///|
#cfg(target="wasm-gc")
fn plugin_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_Plugin" "item"

///|
#cfg(target="wasm-gc")
fn plugin_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_Plugin" "namedItem"
