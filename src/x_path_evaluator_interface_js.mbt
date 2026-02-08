extern "js" fn x_path_evaluator_new_ffi() -> XPathEvaluator = "() => new XPathEvaluator()"

extern "js" fn x_path_evaluator_create_expression_ffi(obj: JsValue, expression: JsValue, resolver: JsValue) -> JsValue = "(obj, expression, resolver) => obj.createExpression(expression, resolver)"

extern "js" fn x_path_evaluator_create_ns_resolver_ffi(obj: JsValue, node_resolver: JsValue) -> JsValue = "(obj, node_resolver) => obj.createNSResolver(node_resolver)"

extern "js" fn x_path_evaluator_evaluate_ffi(obj: JsValue, expression: JsValue, context_node: JsValue, resolver: JsValue, type_: JsValue, result: JsValue) -> JsValue = "(obj, expression, context_node, resolver, type_, result) => obj.evaluate(expression, context_node, resolver, type_, result)"