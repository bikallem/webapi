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

///|
fn mutation_observer_init_get_child_list_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserverInit" "get_childList"

///|
fn mutation_observer_init_get_attributes_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserverInit" "get_attributes"

///|
fn mutation_observer_init_get_character_data_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserverInit" "get_characterData"

///|
fn mutation_observer_init_get_subtree_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserverInit" "get_subtree"

///|
fn mutation_observer_init_get_attribute_old_value_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserverInit" "get_attributeOldValue"

///|
fn mutation_observer_init_get_character_data_old_value_ffi(
  obj : JsValue,
) -> JsValue = "webapi_MutationObserverInit" "get_characterDataOldValue"

///|
fn mutation_observer_init_get_attribute_filter_ffi(obj : JsValue) -> JsValue = "webapi_MutationObserverInit" "get_attributeFilter"
