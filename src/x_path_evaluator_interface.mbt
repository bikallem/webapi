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
    resolver? : (String) -> String,
  ) -> XPathExpression = _
  create_ns_resolver(self : Self, node_resolver : &TNode) -> Node = _
  evaluate(
    self : Self,
    expression : String,
    context_node : &TNode,
    resolver? : (String) -> String,
    type_? : UInt,
    result? : &TXPathResult,
  ) -> XPathResult = _
}

///|
/// [XPathEvaluator.createExpression](https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator/createExpression)
impl TXPathEvaluator with create_expression(
  self : Self,
  expression : String,
  resolver? : (String) -> String,
) -> XPathExpression {
  x_path_evaluator_create_expression_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    match resolver {
      Some(v) => TJsValue::to_js(x_path_ns_resolver_ffi(v))
      None => JsValue::undefined()
    },
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
  resolver? : (String) -> String,
  type_? : UInt,
  result? : &TXPathResult,
) -> XPathResult {
  x_path_evaluator_evaluate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(expression),
    TJsValue::to_js(context_node),
    match resolver {
      Some(v) => TJsValue::to_js(x_path_ns_resolver_ffi(v))
      None => JsValue::undefined()
    },
    opt_to_js(type_),
    opt_to_js(result),
  )
}

///|
#cfg(target="js")
extern "js" fn x_path_evaluator_new_ffi() -> XPathEvaluator = "() => new XPathEvaluator()"

///|
#cfg(target="js")
extern "js" fn x_path_evaluator_create_expression_ffi_js(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> JsValue = "(obj, expression, resolver) => obj.createExpression(expression, resolver)"

///|
#cfg(target="js")
fn x_path_evaluator_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression {
  x_path_evaluator_create_expression_ffi_js(obj, expression, resolver).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_evaluator_create_ns_resolver_ffi_js(
  obj : JsValue,
  node_resolver : JsValue,
) -> JsValue = "(obj, node_resolver) => obj.createNSResolver(node_resolver)"

///|
#cfg(target="js")
fn x_path_evaluator_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node {
  x_path_evaluator_create_ns_resolver_ffi_js(obj, node_resolver).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn x_path_evaluator_evaluate_ffi_js(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)"

///|
#cfg(target="js")
fn x_path_evaluator_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult {
  x_path_evaluator_evaluate_ffi_js(
    obj, expression, context_node, resolver, type_, result,
  ).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn x_path_evaluator_new_ffi() -> XPathEvaluator = "webapi_XPathEvaluator" "new"

///|
#cfg(target="wasm-gc")
fn x_path_evaluator_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> XPathExpression = "webapi_XPathEvaluator" "createExpression"

///|
#cfg(target="wasm-gc")
fn x_path_evaluator_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> Node = "webapi_XPathEvaluator" "createNSResolver"

///|
#cfg(target="wasm-gc")
fn x_path_evaluator_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult = "webapi_XPathEvaluator" "evaluate"
