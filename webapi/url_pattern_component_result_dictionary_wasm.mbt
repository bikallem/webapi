///|
fn url_pattern_component_result_ffi(
  input : JsValue,
  groups : JsValue,
) -> URLPatternComponentResult = "webapi_URLPatternComponentResult" "new"

///|
fn url_pattern_component_result_empty_ffi() -> URLPatternComponentResult = "webapi_Dictionary" "empty"

///|
fn url_pattern_component_result_get_input_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternComponentResult" "get_input"

///|
fn url_pattern_component_result_get_groups_ffi(obj : JsValue) -> JsValue = "webapi_URLPatternComponentResult" "get_groups"
