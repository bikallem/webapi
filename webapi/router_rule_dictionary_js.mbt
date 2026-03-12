///|
extern "js" fn router_rule_ffi(
  condition : JsValue,
  source : JsValue,
) -> RouterRule =
  #|(condition, source) => {
  #|  const obj = {};
  #|  if (condition !== undefined) obj.condition = condition;
  #|  if (source !== undefined) obj.source = source;
  #|  return obj;
  #|}

///|
extern "js" fn router_rule_empty_ffi() -> RouterRule = "() => {}"

///|
extern "js" fn router_rule_get_condition_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.condition"

///|
fn router_rule_get_condition_ffi(obj : JsValue) -> RouterCondition {
  router_rule_get_condition_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn router_rule_get_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
fn router_rule_get_source_ffi(obj : JsValue) -> RouterSource {
  router_rule_get_source_ffi_js(obj).unsafe_cast()
}
