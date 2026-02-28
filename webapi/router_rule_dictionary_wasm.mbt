///|
fn router_rule_ffi(condition : JsValue, source : JsValue) -> RouterRule = "webapi_RouterRule" "new"

///|
fn router_rule_empty_ffi() -> RouterRule = "webapi_Dictionary" "empty"

///|
fn router_rule_get_condition_ffi(obj : JsValue) -> RouterCondition = "webapi_RouterRule" "get_condition"

///|
fn router_rule_get_source_ffi_wasm(obj : JsValue) -> JsValue = "webapi_RouterRule" "get_source"

///|
fn router_rule_get_source_ffi(obj : JsValue) -> RouterSource {
  router_rule_get_source_ffi_wasm(obj).unsafe_cast()
}
