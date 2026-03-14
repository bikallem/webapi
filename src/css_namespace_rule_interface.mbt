// Do not edit. This file is generated.
// MoonBit type: CSSNamespaceRule
// Specifications: cssom.idl

/// [CSSNamespaceRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule)
#external
pub type CSSNamespaceRule

pub impl TJsValue for CSSNamespaceRule with to_js(self: CSSNamespaceRule) -> JsValue = "%identity"

pub impl FromJsAny for CSSNamespaceRule with from_js_any(value : JsAny) -> CSSNamespaceRule = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TCSSNamespaceRule] CSSNamespaceRule::into(self : CSSNamespaceRule) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TCSSNamespaceRule] CSSNamespaceRule::unsafe_into(self : CSSNamespaceRule) -> T = "%identity"

pub impl HasConstructor for CSSNamespaceRule with constructor_name() { "CSSNamespaceRule" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCSSNamespaceRule + HasConstructor] CSSNamespaceRule::try_into(self : CSSNamespaceRule) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TCSSNamespaceRule for CSSNamespaceRule

pub impl TCSSRule for CSSNamespaceRule

/// [CSSNamespaceRule](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule) interface.
pub trait TCSSNamespaceRule: TCSSRule {
  namespace_uri(self : Self) -> CSSOMString = _
  prefix(self : Self) -> CSSOMString = _
}

/// [CSSNamespaceRule.namespaceURI](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule/namespaceURI)
impl TCSSNamespaceRule with namespace_uri(self : Self) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi(TJsValue::to_js(self))
}

/// [CSSNamespaceRule.prefix](https://developer.mozilla.org/en-US/docs/Web/API/CSSNamespaceRule/prefix)
impl TCSSNamespaceRule with prefix(self : Self) -> CSSOMString {
  css_namespace_rule_prefix_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn css_namespace_rule_namespace_uri_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.namespaceURI"

///|
#cfg(target="js")
fn css_namespace_rule_namespace_uri_ffi(obj: JsValue) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn css_namespace_rule_prefix_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.prefix"

///|
#cfg(target="js")
fn css_namespace_rule_prefix_ffi(obj: JsValue) -> CSSOMString {
  css_namespace_rule_prefix_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_namespace_rule_namespace_uri_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSNamespaceRule" "get_namespaceURI"

///|
#cfg(target="wasm-gc")
fn css_namespace_rule_namespace_uri_ffi(obj: JsValue) -> CSSOMString {
  css_namespace_rule_namespace_uri_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn css_namespace_rule_prefix_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CSSNamespaceRule" "get_prefix"

///|
#cfg(target="wasm-gc")
fn css_namespace_rule_prefix_ffi(obj: JsValue) -> CSSOMString {
  css_namespace_rule_prefix_ffi_wasm(obj).unsafe_cast()
}