///|
fn import_node_options_ffi(
  custom_element_registry : JsValue,
  self_only : JsValue,
) -> ImportNodeOptions = "webapi_ImportNodeOptions" "new"

///|
fn import_node_options_empty_ffi() -> ImportNodeOptions = "webapi_Dictionary" "empty"

///|
fn import_node_options_get_custom_element_registry_ffi(
  obj : JsValue,
) -> JsValue = "webapi_ImportNodeOptions" "get_customElementRegistry"

///|
fn import_node_options_get_self_only_ffi(obj : JsValue) -> JsValue = "webapi_ImportNodeOptions" "get_selfOnly"
