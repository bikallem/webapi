///|
#external
pub type XPathEvaluator

///|
pub impl TJsValue for XPathEvaluator with to_js(self : XPathEvaluator) -> JsValue = "%identity"

///|
pub fn[T : TXPathEvaluator] XPathEvaluator::into(self : XPathEvaluator) -> T = "%identity"

///|
pub impl TXPathEvaluator for XPathEvaluator

///|
extern "js" fn x_path_evaluator_ffi() -> XPathEvaluator = "() => new XPathEvaluator()"

///|
pub fn XPathEvaluator::new() -> XPathEvaluator {
  x_path_evaluator_ffi()
}

///|
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
extern "js" fn x_path_evaluator_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression = "(obj, expression, resolver) => obj.createExpression(obj, expression, resolver)"

///|
impl TXPathEvaluator with create_expression(
  self : Self,
  expression : String,
  resolver? : XPathNSResolver = JsValue::null(),
) -> XPathExpression {
  x_path_evaluator_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(resolver),
  )
}

///|
extern "js" fn x_path_evaluator_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node = "(obj, node_resolver) => obj.createNSResolver(obj, node_resolver)"

///|
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
extern "js" fn x_path_evaluator_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(obj, expression, context_node, resolver, type_, result)"

///|
impl TXPathEvaluator with evaluate(
  self : Self,
  expression : String,
  context_node : &TNode,
  resolver? : XPathNSResolver = JsValue::null(),
  type_? : UInt = 0,
  result? : &TXPathResult = JsValue::null(),
) -> XPathResult {
  x_path_evaluator_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    TJsValue::to_js(resolver),
    TJsValue::to_js(type_),
    TJsValue::to_js(result),
  )
}
