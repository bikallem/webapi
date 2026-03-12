// Do not edit. This file is generated.
// MoonBit type: RouterRule
// Specifications: service-workers.idl

/// [RouterRule](https://developer.mozilla.org/en-US/docs/Web/API/RouterRule)
#external
pub type RouterRule

pub impl TJsValue for RouterRule with to_js(self: RouterRule) -> JsValue = "%identity"

pub impl FromJsAny for RouterRule with from_js_any(value : JsAny) -> RouterRule = "%identity"

pub fn RouterRule::new(condition : RouterCondition, 
source : &TRouterSource) -> RouterRule {
  router_rule_ffi(TJsValue::to_js(condition), source.to_js())
}

pub fn RouterRule::empty() -> RouterRule { router_rule_empty_ffi() }

pub fn RouterRule::condition(self : RouterRule) -> RouterCondition {
  router_rule_get_condition_ffi(TJsValue::to_js(self))
}

pub fn RouterRule::source(self : RouterRule) -> RouterSource {
  router_rule_get_source_ffi(TJsValue::to_js(self))
}