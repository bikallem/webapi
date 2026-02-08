///|
fn x_path_evaluator_new_ffi() -> XPathEvaluator = "webapi_XPathEvaluator" "new"

///|
fn x_path_evaluator_create_expression_ffi(
  obj : JsValue,
  expression : JsValue,
  resolver : JsValue,
) -> JsValue = "webapi_XPathEvaluator" "createExpression"

///|
fn x_path_evaluator_create_ns_resolver_ffi(
  obj : JsValue,
  node_resolver : JsValue,
) -> JsValue = "webapi_XPathEvaluator" "createNSResolver"

///|
fn x_path_evaluator_evaluate_ffi(
  obj : JsValue,
  expression : JsValue,
  context_node : JsValue,
  resolver : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "webapi_XPathEvaluator" "evaluate"
