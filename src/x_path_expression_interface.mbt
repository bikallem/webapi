// Do not edit. This file is generated.
// MoonBit type: XPathExpression
// Specifications: dom.idl

///|
#external
pub type XPathExpression

///|
pub impl TJsValue for XPathExpression with to_js(self : XPathExpression) -> JsValue = "%identity"

///|
pub fn[T : TXPathExpression] XPathExpression::into(self : XPathExpression) -> T = "%identity"

///|
pub impl TXPathExpression for XPathExpression

///|
pub trait TXPathExpression: TJsValue {
  evaluate(
    self : Self,
    context_node : &TNode,
    type_? : UInt,
    result? : &TXPathResult,
  ) -> XPathResult = _
}

///|
extern "js" fn x_path_expression_evaluate_ffi(
  obj : JsValue,
  context_node : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult = "(obj, context_node, type_, result) => obj.evaluate(obj, context_node, type_, result)"

///|
impl TXPathExpression with evaluate(
  self : Self,
  context_node : &TNode,
  type_? : UInt = 0,
  result? : &TXPathResult = JsValue::null(),
) -> XPathResult {
  x_path_expression_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_node),
    TJsValue::to_js(type_),
    TJsValue::to_js(result),
  )
}
