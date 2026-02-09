// Do not edit. This file is generated.
// MoonBit type: XPathExpression
// Specifications: dom.idl

///|
/// [XPathExpression](https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression)
#external
pub type XPathExpression

///|
pub impl TJsValue for XPathExpression with to_js(self : XPathExpression) -> JsValue = "%identity"

///|
pub fn[T : TXPathExpression] XPathExpression::into(self : XPathExpression) -> T = "%identity"

///|
pub impl TXPathExpression for XPathExpression

///|
/// [XPathExpression](https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression) interface.
pub trait TXPathExpression: TJsValue {
  evaluate(
    self : Self,
    context_node : &TNode,
    type_? : UInt,
    result? : &TXPathResult,
  ) -> XPathResult = _
}

///|
/// [XPathExpression.evaluate](https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression/evaluate)
impl TXPathExpression with evaluate(
  self : Self,
  context_node : &TNode,
  type_? : UInt = (0 : UInt),
  result? : &TXPathResult = JsValue::null(),
) -> XPathResult {
  x_path_expression_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_node),
    TJsValue::to_js(type_),
    TJsValue::to_js(result),
  )
}
