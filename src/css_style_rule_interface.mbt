// Do not edit. This file is generated.
// MoonBit type: CSSStyleRule
// Specifications: cssom.idl

///|
/// [CSSStyleRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule)
#external
pub type CSSStyleRule

///|
pub impl TJsValue for CSSStyleRule with to_js(self : CSSStyleRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSStyleRule with from_js_any(value : JsAny) -> CSSStyleRule = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSStyleRule] CSSStyleRule::into(self : CSSStyleRule) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSStyleRule] CSSStyleRule::unsafe_into(self : CSSStyleRule) -> T = "%identity"

///|
pub impl HasConstructor for CSSStyleRule with constructor_name() {
  "CSSStyleRule"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSStyleRule + HasConstructor] CSSStyleRule::try_into(
  self : CSSStyleRule,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSStyleRule for CSSStyleRule

///|
pub impl TCSSGroupingRule for CSSStyleRule

///|
pub impl TCSSRule for CSSStyleRule

///|
/// [CSSStyleRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule) interface.
pub trait TCSSStyleRule: TCSSGroupingRule {
  selector_text(self : Self) -> CSSOMString = _
  set_selector_text(self : Self, selector_text : CSSOMString) -> Unit = _
  style(self : Self) -> CSSStyleProperties = _
}

///|
/// [CSSStyleRule.selectorText](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule/selectorText)
impl TCSSStyleRule with selector_text(self : Self) -> CSSOMString {
  css_style_rule_selector_text_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleRule.selectorText](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule/selectorText)
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
/// [CSSStyleRule.style](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule/style)
impl TCSSStyleRule with style(self : Self) -> CSSStyleProperties {
  css_style_rule_style_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn css_style_rule_selector_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selectorText"

///|
#cfg(target="js")
fn css_style_rule_selector_text_ffi(obj : JsValue) -> CSSOMString {
  css_style_rule_selector_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "(obj, selectorText) => { obj.selectorText = selectorText; }"

///|
#cfg(target="js")
extern "js" fn css_style_rule_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
#cfg(target="js")
fn css_style_rule_style_ffi(obj : JsValue) -> CSSStyleProperties {
  css_style_rule_style_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_style_rule_selector_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSStyleRule" "get_selectorText"

///|
#cfg(target="wasm-gc")
fn css_style_rule_selector_text_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_style_rule_selector_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_style_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "webapi_CSSStyleRule" "set_selectorText"

///|
#cfg(target="wasm-gc")
fn css_style_rule_style_ffi(obj : JsValue) -> CSSStyleProperties = "webapi_CSSStyleRule" "get_style"
