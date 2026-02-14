// Do not edit. This file is generated.
// MoonBit type: XPathEvaluator
// Specifications: dom.idl

///|
/// [XPathEvaluator](https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator)
#external
pub type XPathEvaluator

///|
pub impl TJsValue for XPathEvaluator with to_js(self : XPathEvaluator) -> JsValue = "%identity"

///|
pub impl FromJsAny for XPathEvaluator with from_js_any(value : JsAny) -> XPathEvaluator = "%identity"

///|
pub fn[T : TXPathEvaluator] XPathEvaluator::into(self : XPathEvaluator) -> T = "%identity"

///|
pub impl TXPathEvaluator for XPathEvaluator

///|
pub fn XPathEvaluator::new() -> XPathEvaluator {
  x_path_evaluator_new_ffi()
}

///|
/// [XPathEvaluator](https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator) interface.
pub trait TXPathEvaluator: TJsValue {
  create_expression(
    self : Self,
    expression : String,
    resolver? : XPathNSResolver,
  ) -> XPathExpression = _
  create_ns_resolver(self : Self, node_resolver : &TNode) -> Node = _
  evaluate(
    self : Self,
    expression : String,
    context_node : &TNode,
    resolver? : XPathNSResolver,
    type_? : UInt,
    result? : &TXPathResult,
  ) -> XPathResult = _
}

///|
/// [XPathEvaluator.createExpression](https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator/createExpression)
impl TXPathEvaluator with create_expression(
  self : Self,
  expression : String,
  resolver? : XPathNSResolver,
) -> XPathExpression {
  x_path_evaluator_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    opt_to_js(resolver),
  )
}

///|
/// [XPathEvaluator.createNSResolver](https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator/createNSResolver)
impl TXPathEvaluator with create_ns_resolver(
  self : Self,
  node_resolver : &TNode,
) -> Node {
  x_path_evaluator_create_ns_resolver_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(node_resolver),
  )
}

///|
/// [XPathEvaluator.evaluate](https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator/evaluate)
impl TXPathEvaluator with evaluate(
  self : Self,
  expression : String,
  context_node : &TNode,
  resolver? : XPathNSResolver,
  type_? : UInt = (0 : UInt),
  result? : &TXPathResult,
) -> XPathResult {
  x_path_evaluator_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    opt_to_js(resolver),
    TJsValue::to_js(type_),
    opt_to_js(result),
  )
}
