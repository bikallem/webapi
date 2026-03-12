///|
fn element_definition_options_ffi(
  extends : JsValue,
) -> ElementDefinitionOptions = "webapi_ElementDefinitionOptions" "new"

///|
fn element_definition_options_empty_ffi() -> ElementDefinitionOptions = "webapi_Dictionary" "empty"

///|
fn element_definition_options_get_extends_ffi(obj : JsValue) -> JsValue = "webapi_ElementDefinitionOptions" "get_extends"
