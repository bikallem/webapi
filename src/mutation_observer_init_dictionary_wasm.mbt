///|
fn mutation_observer_init_ffi(
  child_list : JsValue,
  attributes : JsValue,
  character_data : JsValue,
  subtree : JsValue,
  attribute_old_value : JsValue,
  character_data_old_value : JsValue,
  attribute_filter : JsValue,
) -> MutationObserverInit = "webapi_MutationObserverInit" "new"

///|
fn mutation_observer_init_empty_ffi() -> MutationObserverInit = "webapi_Dictionary" "empty"
