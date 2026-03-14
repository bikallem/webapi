// Do not edit. This file is generated.
// MoonBit type: PluginArray
// Specifications: html.idl

///|
/// [PluginArray](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray)
#external
pub type PluginArray

///|
pub impl TJsValue for PluginArray with to_js(self : PluginArray) -> JsValue = "%identity"

///|
pub impl FromJsAny for PluginArray with from_js_any(value : JsAny) -> PluginArray = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TPluginArray] PluginArray::into(self : PluginArray) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TPluginArray] PluginArray::unsafe_into(self : PluginArray) -> T = "%identity"

///|
pub impl HasConstructor for PluginArray with constructor_name() {
  "PluginArray"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPluginArray + HasConstructor] PluginArray::try_into(
  self : PluginArray,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TPluginArray for PluginArray

///|
/// [PluginArray](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray) interface.
pub trait TPluginArray: TJsValue {
  refresh(self : Self) -> Unit = _
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> Plugin? = _
  named_item_opt(self : Self, name : String) -> Plugin? = _
  item(self : Self, index : UInt) -> Plugin = _
  named_item(self : Self, name : String) -> Plugin = _
}

///|
/// [PluginArray.refresh](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray/refresh)
impl TPluginArray with refresh(self : Self) -> Unit {
  plugin_array_refresh_ffi(TJsValue::to_js(self))
}

///|
/// [PluginArray.length](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray/length)
impl TPluginArray with length(self : Self) -> UInt {
  plugin_array_length_ffi(TJsValue::to_js(self))
}

///|
/// [PluginArray.item](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray/item)
impl TPluginArray with item_opt(self : Self, index : UInt) -> Plugin? {
  plugin_array_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [PluginArray.namedItem](https://developer.mozilla.org/en-US/docs/Web/API/PluginArray/namedItem)
impl TPluginArray with named_item_opt(self : Self, name : String) -> Plugin? {
  plugin_array_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(name)).to_option()
}

///|
impl TPluginArray with item(self : Self, index : UInt) -> Plugin {
  self.item_opt(index).unwrap()
}

///|
impl TPluginArray with named_item(self : Self, name : String) -> Plugin {
  self.named_item_opt(name).unwrap()
}

///|
#cfg(target="js")
extern "js" fn plugin_array_refresh_ffi(obj : JsValue) -> Unit = "(obj) => obj.refresh()"

///|
#cfg(target="js")
extern "js" fn plugin_array_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn plugin_array_length_ffi(obj : JsValue) -> UInt {
  plugin_array_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn plugin_array_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn plugin_array_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.namedItem(name)"

///|
#cfg(target="wasm-gc")
fn plugin_array_refresh_ffi(obj : JsValue) -> Unit = "webapi_PluginArray" "refresh"

///|
#cfg(target="wasm-gc")
fn plugin_array_length_ffi(obj : JsValue) -> UInt = "webapi_PluginArray" "get_length"

///|
#cfg(target="wasm-gc")
fn plugin_array_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_PluginArray" "item"

///|
#cfg(target="wasm-gc")
fn plugin_array_named_item_ffi(obj : JsValue, name : JsValue) -> JsValue = "webapi_PluginArray" "namedItem"
