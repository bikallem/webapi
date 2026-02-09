///|
fn import_node_options_ffi(
  custom_element_registry : JsValue,
  self_only : JsValue,
) -> ImportNodeOptions = "webapi_ImportNodeOptions" "new"

///|
fn import_node_options_empty_ffi() -> ImportNodeOptions = "webapi_Dictionary" "empty"
