// Do not edit. This file is generated.
// MoonBit type: CSSMarginRule
// Specifications: cssom.idl

///|
/// [CSSMarginRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule)
#external
pub type CSSMarginRule

///|
pub impl TJsValue for CSSMarginRule with to_js(self : CSSMarginRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSMarginRule with from_js_any(value : JsAny) -> CSSMarginRule = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCSSMarginRule] CSSMarginRule::into(self : CSSMarginRule) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCSSMarginRule] CSSMarginRule::unsafe_into(
  self : CSSMarginRule,
) -> T = "%identity"

///|
pub impl HasConstructor for CSSMarginRule with constructor_name() {
  "CSSMarginRule"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSMarginRule + HasConstructor] CSSMarginRule::try_into(
  self : CSSMarginRule,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCSSMarginRule for CSSMarginRule

///|
pub impl TCSSRule for CSSMarginRule

///|
/// [CSSMarginRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule) interface.
pub trait TCSSMarginRule: TCSSRule {
  name(self : Self) -> CSSOMString = _
  style(self : Self) -> CSSStyleDeclaration = _
}

///|
/// [CSSMarginRule.name](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule/name)
impl TCSSMarginRule with name(self : Self) -> CSSOMString {
  css_margin_rule_name_ffi(TJsValue::to_js(self))
}

///|
/// [CSSMarginRule.style](https://developer.mozilla.org/en-US/docs/Web/API/CSSMarginRule/style)
impl TCSSMarginRule with style(self : Self) -> CSSStyleDeclaration {
  css_margin_rule_style_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn css_margin_rule_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn css_margin_rule_name_ffi(obj : JsValue) -> CSSOMString {
  css_margin_rule_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_margin_rule_style_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.style"

///|
#cfg(target="js")
fn css_margin_rule_style_ffi(obj : JsValue) -> CSSStyleDeclaration {
  css_margin_rule_style_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_margin_rule_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSMarginRule" "get_name"

///|
#cfg(target="wasm-gc")
fn css_margin_rule_name_ffi(obj : JsValue) -> CSSOMString {
  jsvalue_to_string(css_margin_rule_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn css_margin_rule_style_ffi(obj : JsValue) -> CSSStyleDeclaration = "webapi_CSSMarginRule" "get_style"
