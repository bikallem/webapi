///|
#external
pub type CSSStyleRule

///|
pub impl TJsValue for CSSStyleRule with to_js(self : CSSStyleRule) -> JsValue = "%identity"

///|
pub fn[T : TCSSStyleRule] CSSStyleRule::into(self : CSSStyleRule) -> T = "%identity"

///|
pub impl TCSSStyleRule for CSSStyleRule

///|
pub impl TCSSGroupingRule for CSSStyleRule

///|
pub impl TCSSRule for CSSStyleRule

///|
pub trait TCSSStyleRule: TCSSGroupingRule {
  selector_text(self : Self) -> CSSOMString = _
  set_selector_text(self : Self, selector_text : CSSOMString) -> Unit = _
  style(self : Self) -> CSSStyleProperties = _
}

///|
extern "js" fn css_style_rule_selector_text_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.selectorText"

///|
impl TCSSStyleRule with selector_text(self : Self) -> CSSOMString {
  css_style_rule_selector_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "(obj, selectorText) => { obj.selectorText = selectorText; }"

///|
impl TCSSStyleRule with set_selector_text(
  self : Self,
  selector_text : CSSOMString,
) -> Unit {
  css_style_rule_set_selector_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selector_text),
  )
}

///|
extern "js" fn css_style_rule_style_ffi(obj : JsValue) -> CSSStyleProperties = "(obj) => obj.style"

///|
impl TCSSStyleRule with style(self : Self) -> CSSStyleProperties {
  css_style_rule_style_ffi(TJsValue::to_js(self))
}
