// Do not edit. This file is generated.
// MoonBit type: MimeType
// Specifications: html.idl

///|
/// [MimeType](https://developer.mozilla.org/en-US/docs/Web/API/MimeType)
#external
pub type MimeType

///|
pub impl TJsValue for MimeType with to_js(self : MimeType) -> JsValue = "%identity"

///|
pub impl FromJsAny for MimeType with from_js_any(value : JsAny) -> MimeType = "%identity"

///|
pub fn[T : TMimeType] MimeType::into(self : MimeType) -> T = "%identity"

///|
pub impl TMimeType for MimeType

///|
/// [MimeType](https://developer.mozilla.org/en-US/docs/Web/API/MimeType) interface.
pub trait TMimeType: TJsValue {
  type_(self : Self) -> String = _
  description(self : Self) -> String = _
  suffixes(self : Self) -> String = _
  enabled_plugin(self : Self) -> Plugin = _
}

///|
/// [MimeType.type](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/type)
impl TMimeType with type_(self : Self) -> String {
  mime_type_type_ffi(TJsValue::to_js(self))
}

///|
/// [MimeType.description](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/description)
impl TMimeType with description(self : Self) -> String {
  mime_type_description_ffi(TJsValue::to_js(self))
}

///|
/// [MimeType.suffixes](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/suffixes)
impl TMimeType with suffixes(self : Self) -> String {
  mime_type_suffixes_ffi(TJsValue::to_js(self))
}

///|
/// [MimeType.enabledPlugin](https://developer.mozilla.org/en-US/docs/Web/API/MimeType/enabledPlugin)
impl TMimeType with enabled_plugin(self : Self) -> Plugin {
  mime_type_enabled_plugin_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn mime_type_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn mime_type_type_ffi(obj : JsValue) -> String {
  mime_type_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mime_type_description_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.description"

///|
#cfg(target="js")
fn mime_type_description_ffi(obj : JsValue) -> String {
  mime_type_description_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mime_type_suffixes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.suffixes"

///|
#cfg(target="js")
fn mime_type_suffixes_ffi(obj : JsValue) -> String {
  mime_type_suffixes_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn mime_type_enabled_plugin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.enabledPlugin"

///|
#cfg(target="js")
fn mime_type_enabled_plugin_ffi(obj : JsValue) -> Plugin {
  mime_type_enabled_plugin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn mime_type_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MimeType" "get_type"

///|
#cfg(target="wasm-gc")
fn mime_type_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(mime_type_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn mime_type_description_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MimeType" "get_description"

///|
#cfg(target="wasm-gc")
fn mime_type_description_ffi(obj : JsValue) -> String {
  jsvalue_to_string(mime_type_description_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn mime_type_suffixes_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MimeType" "get_suffixes"

///|
#cfg(target="wasm-gc")
fn mime_type_suffixes_ffi(obj : JsValue) -> String {
  jsvalue_to_string(mime_type_suffixes_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn mime_type_enabled_plugin_ffi(obj : JsValue) -> Plugin = "webapi_MimeType" "get_enabledPlugin"
