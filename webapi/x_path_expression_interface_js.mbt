///|
extern "js" fn x_path_expression_evaluate_ffi_js(
  obj : JsValue,
  context_node : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> JsValue = "(obj, context_node, type_, result) => obj.evaluate(context_node, type_, result)"

///|
fn x_path_expression_evaluate_ffi(
  obj : JsValue,
  context_node : JsValue,
  type_ : JsValue,
  result : JsValue,
) -> XPathResult {
  x_path_expression_evaluate_ffi_js(obj, context_node, type_, result).unsafe_cast()
}
