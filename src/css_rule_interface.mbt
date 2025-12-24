///|
#external
pub type CSSRule

///|
pub impl TJsValue for CSSRule with to_js(self : CSSRule) -> JsValue = "%identity"

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
pub trait TCSSRule: TJsValue {
  css_text(self : Self) -> CSSOMString = _
  set_css_text(self : Self, css_text : CSSOMString) -> Unit = _
  parent_rule(self : Self) -> CSSRule = _
  parent_style_sheet(self : Self) -> CSSStyleSheet = _
  type_(self : Self) -> UInt = _
}

///|
extern "js" fn css_rule_css_text_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.cssText"

///|
impl TCSSRule with css_text(self : Self) -> CSSOMString {
  css_rule_css_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_rule_set_css_text_ffi(
  obj : JsValue,
  css_text : JsValue,
) -> Unit = "(obj, cssText) => { obj.cssText = cssText; }"

///|
impl TCSSRule with set_css_text(self : Self, css_text : CSSOMString) -> Unit {
  css_rule_set_css_text_ffi(TJsValue::to_js(self), TJsValue::to_js(css_text))
}

///|
extern "js" fn css_rule_parent_rule_ffi(obj : JsValue) -> CSSRule = "(obj) => obj.parentRule"

///|
impl TCSSRule with parent_rule(self : Self) -> CSSRule {
  css_rule_parent_rule_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_rule_parent_style_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "(obj) => obj.parentStyleSheet"

///|
impl TCSSRule with parent_style_sheet(self : Self) -> CSSStyleSheet {
  css_rule_parent_style_sheet_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_rule_type_ffi(obj : JsValue) -> UInt = "(obj) => obj.type"

///|
impl TCSSRule with type_(self : Self) -> UInt {
  css_rule_type_ffi(TJsValue::to_js(self))
}
