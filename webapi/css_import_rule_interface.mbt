// Do not edit. This file is generated.
// MoonBit type: CSSImportRule
// Specifications: cssom.idl

///|
/// [CSSImportRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule)
#external
pub type CSSImportRule

///|
pub impl TJsValue for CSSImportRule with to_js(self : CSSImportRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSImportRule with from_js_any(value : JsAny) -> CSSImportRule = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSImportRule] CSSImportRule::into(self : CSSImportRule) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSImportRule] CSSImportRule::unsafe_into(
  self : CSSImportRule,
) -> T = "%identity"

///|
pub impl HasConstructor for CSSImportRule with constructor_name() {
  "CSSImportRule"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSImportRule + HasConstructor] CSSImportRule::try_into(
  self : CSSImportRule,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSImportRule for CSSImportRule

///|
pub impl TCSSRule for CSSImportRule

///|
/// [CSSImportRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule) interface.
pub trait TCSSImportRule: TCSSRule {
  href(self : Self) -> String = _
  media(self : Self) -> MediaList = _
  style_sheet(self : Self) -> CSSStyleSheet = _
  layer_name(self : Self) -> CSSOMString = _
  supports_text(self : Self) -> CSSOMString = _
}

///|
/// [CSSImportRule.href](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/href)
impl TCSSImportRule with href(self : Self) -> String {
  css_import_rule_href_ffi(TJsValue::to_js(self))
}

///|
/// [CSSImportRule.media](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/media)
impl TCSSImportRule with media(self : Self) -> MediaList {
  css_import_rule_media_ffi(TJsValue::to_js(self))
}

///|
/// [CSSImportRule.styleSheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/styleSheet)
impl TCSSImportRule with style_sheet(self : Self) -> CSSStyleSheet {
  css_import_rule_style_sheet_ffi(TJsValue::to_js(self))
}

///|
/// [CSSImportRule.layerName](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/layerName)
impl TCSSImportRule with layer_name(self : Self) -> CSSOMString {
  css_import_rule_layer_name_ffi(TJsValue::to_js(self))
}

///|
/// [CSSImportRule.supportsText](https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule/supportsText)
impl TCSSImportRule with supports_text(self : Self) -> CSSOMString {
  css_import_rule_supports_text_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn css_import_rule_href_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn css_import_rule_href_ffi(obj : JsValue) -> String {
  css_import_rule_href_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_import_rule_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn css_import_rule_media_ffi(obj : JsValue) -> MediaList {
  css_import_rule_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_import_rule_style_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.styleSheet"

///|
#cfg(target="js")
fn css_import_rule_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  css_import_rule_style_sheet_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_import_rule_layer_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.layerName"

///|
#cfg(target="js")
fn css_import_rule_layer_name_ffi(obj : JsValue) -> CSSOMString {
  css_import_rule_layer_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_import_rule_supports_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.supportsText"

///|
#cfg(target="js")
fn css_import_rule_supports_text_ffi(obj : JsValue) -> CSSOMString {
  css_import_rule_supports_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_import_rule_href_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSImportRule" "get_href"

///|
#cfg(target="wasm-gc")
fn css_import_rule_href_ffi(obj : JsValue) -> String {
  jsvalue_to_string(css_import_rule_href_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_import_rule_media_ffi(obj : JsValue) -> MediaList = "webapi_CSSImportRule" "get_media"

///|
#cfg(target="wasm-gc")
fn css_import_rule_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_CSSImportRule" "get_styleSheet"

///|
#cfg(target="wasm-gc")
fn css_import_rule_layer_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSImportRule" "get_layerName"

///|
#cfg(target="wasm-gc")
fn css_import_rule_layer_name_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_import_rule_layer_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_import_rule_supports_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSImportRule" "get_supportsText"

///|
#cfg(target="wasm-gc")
fn css_import_rule_supports_text_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_import_rule_supports_text_ffi_wasm(obj))
}
