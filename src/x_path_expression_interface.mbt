// Do not edit. This file is generated.
// MoonBit type: XPathExpression
// Specifications: dom.idl

/// [XPathExpression](https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression)
#external
pub type XPathExpression

pub impl TJsValue for XPathExpression with to_js(self: XPathExpression) -> JsValue = "%identity"

pub impl FromJsAny for XPathExpression with from_js_any(value : JsAny) -> XPathExpression = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TXPathExpression] XPathExpression::into(self : XPathExpression) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TXPathExpression] XPathExpression::unsafe_into(self : XPathExpression) -> T = "%identity"

pub impl HasConstructor for XPathExpression with constructor_name() { "XPathExpression" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TXPathExpression + HasConstructor] XPathExpression::try_into(self : XPathExpression) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TXPathExpression for XPathExpression

/// [XPathExpression](https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression) interface.
pub trait TXPathExpression: TJsValue {
  evaluate(self : Self, context_node : &TNode, type_? : UInt, result? : &TXPathResult) -> XPathResult = _
}

/// [XPathExpression.evaluate](https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression/evaluate)
impl TXPathExpression with evaluate(self : Self, 
context_node : &TNode, 
type_? : UInt, 
result? : &TXPathResult) -> XPathResult {
  x_path_expression_evaluate_ffi(TJsValue::to_js(self), TJsValue::to_js(context_node), opt_to_js(type_), opt_to_js(result))
}

#cfg(target="js")
extern "js" fn x_path_expression_evaluate_ffi_js(obj: JsValue, context_node: JsValue, type_: JsValue, result: JsValue) -> JsValue = "(obj, context_node, type_, result) => obj.evaluate(context_node, type_, result)"

///|
#cfg(target="js")
fn x_path_expression_evaluate_ffi(obj: JsValue, context_node: JsValue, type_: JsValue, result: JsValue) -> XPathResult {
  x_path_expression_evaluate_ffi_js(obj, context_node, type_, result).unsafe_cast()
}

#cfg(target="wasm-gc")
fn x_path_expression_evaluate_ffi(obj: JsValue, context_node: JsValue, type_: JsValue, result: JsValue) -> XPathResult = "webapi_XPathExpression" "evaluate"