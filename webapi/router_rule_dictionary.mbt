// Do not edit. This file is generated.
// MoonBit type: RouterRule
// Specifications: service-workers.idl

///|
/// [RouterRule](https://developer.mozilla.org/en-US/docs/Web/API/RouterRule)
#external
pub type RouterRule

///|
pub impl TJsValue for RouterRule with to_js(self : RouterRule) -> JsValue = "%identity"

///|
pub impl FromJsAny for RouterRule with from_js_any(value : JsAny) -> RouterRule = "%identity"

///|
pub fn RouterRule::new(
  condition : RouterCondition,
  source : &TRouterSource,
) -> RouterRule {
  router_rule_ffi(TJsValue::to_js(condition), source.to_js())
}

///|
pub fn RouterRule::empty() -> RouterRule {
  router_rule_empty_ffi()
}

///|
pub fn RouterRule::condition(self : RouterRule) -> RouterCondition {
  router_rule_get_condition_ffi(TJsValue::to_js(self))
}

///|
pub fn RouterRule::source(self : RouterRule) -> RouterSource {
  router_rule_get_source_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn router_rule_empty_ffi() -> RouterRule = "() => {}"

///|
#cfg(target="js")
extern "js" fn router_rule_get_condition_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.condition"

///|
#cfg(target="js")
fn router_rule_get_condition_ffi(obj : JsValue) -> RouterCondition {
  router_rule_get_condition_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn router_rule_get_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn router_rule_get_source_ffi(obj : JsValue) -> RouterSource {
  router_rule_get_source_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn router_rule_ffi(condition : JsValue, source : JsValue) -> RouterRule = "webapi_RouterRule" "new"

///|
#cfg(target="wasm-gc")
fn router_rule_empty_ffi() -> RouterRule = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn router_rule_get_condition_ffi(obj : JsValue) -> RouterCondition = "webapi_RouterRule" "get_condition"

///|
#cfg(target="wasm-gc")
fn router_rule_get_source_ffi_wasm(obj : JsValue) -> JsValue = "webapi_RouterRule" "get_source"

///|
#cfg(target="wasm-gc")
fn router_rule_get_source_ffi(obj : JsValue) -> RouterSource {
  router_rule_get_source_ffi_wasm(obj).unsafe_cast()
}
