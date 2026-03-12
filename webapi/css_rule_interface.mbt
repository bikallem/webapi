// Do not edit. This file is generated.
// MoonBit type: CSSRule
// Specifications: cssom.idl

///|
/// [CSSRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule)
#external
pub type CSSRule

///|
pub impl TJsValue for CSSRule with to_js(self : CSSRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSRule with from_js_any(value : JsAny) -> CSSRule = "%identity"

///|
pub fn[T : TCSSRule] CSSRule::into(self : CSSRule) -> T = "%identity"

///|
pub impl TCSSRule for CSSRule

///|
pub const CSS_RULE_STYLE_RULE : UInt = 1

///|
pub const CSS_RULE_CHARSET_RULE : UInt = 2

///|
pub const CSS_RULE_IMPORT_RULE : UInt = 3

///|
pub const CSS_RULE_MEDIA_RULE : UInt = 4

///|
pub const CSS_RULE_FONT_FACE_RULE : UInt = 5

///|
pub const CSS_RULE_PAGE_RULE : UInt = 6

///|
pub const CSS_RULE_MARGIN_RULE : UInt = 9

///|
pub const CSS_RULE_NAMESPACE_RULE : UInt = 10

///|
/// [CSSRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule) interface.
pub trait TCSSRule: TJsValue {
  css_text(self : Self) -> CSSOMString = _
  set_css_text(self : Self, css_text : CSSOMString) -> Unit = _
  parent_rule(self : Self) -> CSSRule = _
  parent_style_sheet(self : Self) -> CSSStyleSheet = _
  type_(self : Self) -> UInt = _
}

///|
/// [CSSRule.cssText](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule/cssText)
impl TCSSRule with css_text(self : Self) -> CSSOMString {
  css_rule_css_text_ffi(TJsValue::to_js(self))
}

///|
/// [CSSRule.cssText](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule/cssText)
impl TCSSRule with set_css_text(self : Self, css_text : CSSOMString) -> Unit {
  css_rule_set_css_text_ffi(TJsValue::to_js(self), TJsValue::to_js(css_text))
}

///|
/// [CSSRule.parentRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule/parentRule)
impl TCSSRule with parent_rule(self : Self) -> CSSRule {
  css_rule_parent_rule_ffi(TJsValue::to_js(self))
}

///|
/// [CSSRule.parentStyleSheet](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule/parentStyleSheet)
impl TCSSRule with parent_style_sheet(self : Self) -> CSSStyleSheet {
  css_rule_parent_style_sheet_ffi(TJsValue::to_js(self))
}

///|
/// [CSSRule.type](https://developer.mozilla.org/en-US/docs/Web/API/CSSRule/type)
impl TCSSRule with type_(self : Self) -> UInt {
  css_rule_type_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn css_rule_css_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cssText"

///|
#cfg(target="js")
fn css_rule_css_text_ffi(obj : JsValue) -> CSSOMString {
  css_rule_css_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_rule_set_css_text_ffi(
  obj : JsValue,
  css_text : JsValue,
) -> Unit = "(obj, cssText) => { obj.cssText = cssText; }"

///|
#cfg(target="js")
extern "js" fn css_rule_parent_rule_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentRule"

///|
#cfg(target="js")
fn css_rule_parent_rule_ffi(obj : JsValue) -> CSSRule {
  css_rule_parent_rule_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_rule_parent_style_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.parentStyleSheet"

///|
#cfg(target="js")
fn css_rule_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  css_rule_parent_style_sheet_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_rule_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn css_rule_type_ffi(obj : JsValue) -> UInt {
  css_rule_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_rule_css_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSRule" "get_cssText"

///|
#cfg(target="wasm-gc")
fn css_rule_css_text_ffi(obj : JsValue) -> CSSOMString {
  css_rule_css_text_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_rule_set_css_text_ffi(obj : JsValue, css_text : JsValue) -> Unit = "webapi_CSSRule" "set_cssText"

///|
#cfg(target="wasm-gc")
fn css_rule_parent_rule_ffi(obj : JsValue) -> CSSRule = "webapi_CSSRule" "get_parentRule"

///|
#cfg(target="wasm-gc")
fn css_rule_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_CSSRule" "get_parentStyleSheet"

///|
#cfg(target="wasm-gc")
fn css_rule_type_ffi(obj : JsValue) -> UInt = "webapi_CSSRule" "get_type"
