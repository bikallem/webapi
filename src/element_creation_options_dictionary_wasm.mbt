///|
fn element_creation_options_ffi(
  custom_element_registry : JsValue,
  is_ : JsValue,
) -> ElementCreationOptions = "webapi_ElementCreationOptions" "new"

///|
fn element_creation_options_empty_ffi() -> ElementCreationOptions = "webapi_Dictionary" "empty"

///|
fn element_creation_options_get_custom_element_registry_ffi(
  obj : JsValue,
) -> JsValue = "webapi_ElementCreationOptions" "get_customElementRegistry"

///|
fn element_creation_options_get_is_ffi(obj : JsValue) -> JsValue = "webapi_ElementCreationOptions" "get_is"
