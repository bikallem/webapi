// Do not edit. This file is generated.
// MoonBit type: CSSPageRule
// Specifications: cssom.idl

///|
/// [CSSPageRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule)
#external
pub type CSSPageRule

///|
pub impl TJsValue for CSSPageRule with to_js(self : CSSPageRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSPageRule with from_js_any(value : JsAny) -> CSSPageRule = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSPageRule] CSSPageRule::into(self : CSSPageRule) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSPageRule] CSSPageRule::unsafe_into(self : CSSPageRule) -> T = "%identity"

///|
pub impl HasConstructor for CSSPageRule with constructor_name() {
  "CSSPageRule"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSPageRule + HasConstructor] CSSPageRule::try_into(
  self : CSSPageRule,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSPageRule for CSSPageRule

///|
pub impl TCSSGroupingRule for CSSPageRule

///|
pub impl TCSSRule for CSSPageRule

///|
/// [CSSPageRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule) interface.
pub trait TCSSPageRule: TCSSGroupingRule {
  selector_text(self : Self) -> CSSOMString = _
  set_selector_text(self : Self, selector_text : CSSOMString) -> Unit = _
  style(self : Self) -> CSSPageDescriptors = _
}

///|
/// [CSSPageRule.selectorText](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule/selectorText)
impl TCSSPageRule with selector_text(self : Self) -> CSSOMString {
  css_page_rule_selector_text_ffi(TJsValue::to_js(self))
}

///|
/// [CSSPageRule.selectorText](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule/selectorText)
impl TCSSPageRule with set_selector_text(
  self : Self,
  selector_text : CSSOMString,
) -> Unit {
  css_page_rule_set_selector_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(selector_text),
  )
}

///|
/// [CSSPageRule.style](https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule/style)
impl TCSSPageRule with style(self : Self) -> CSSPageDescriptors {
  css_page_rule_style_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn css_page_rule_selector_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selectorText"

///|
#cfg(target="js")
fn css_page_rule_selector_text_ffi(obj : JsValue) -> CSSOMString {
  css_page_rule_selector_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_page_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "(obj, selectorText) => { obj.selectorText = selectorText; }"

///|
#cfg(target="js")
extern "js" fn css_page_rule_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
#cfg(target="js")
fn css_page_rule_style_ffi(obj : JsValue) -> CSSPageDescriptors {
  css_page_rule_style_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_page_rule_selector_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSPageRule" "get_selectorText"

///|
#cfg(target="wasm-gc")
fn css_page_rule_selector_text_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_page_rule_selector_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_page_rule_set_selector_text_ffi(
  obj : JsValue,
  selector_text : JsValue,
) -> Unit = "webapi_CSSPageRule" "set_selectorText"

///|
#cfg(target="wasm-gc")
fn css_page_rule_style_ffi(obj : JsValue) -> CSSPageDescriptors = "webapi_CSSPageRule" "get_style"
