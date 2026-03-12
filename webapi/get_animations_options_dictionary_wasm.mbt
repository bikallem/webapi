///|
fn get_animations_options_ffi(
  subtree : JsValue,
  pseudo_element : JsValue,
) -> GetAnimationsOptions = "webapi_GetAnimationsOptions" "new"

///|
fn get_animations_options_empty_ffi() -> GetAnimationsOptions = "webapi_Dictionary" "empty"

///|
fn get_animations_options_get_subtree_ffi(obj : JsValue) -> JsValue = "webapi_GetAnimationsOptions" "get_subtree"

///|
fn get_animations_options_get_pseudo_element_ffi(obj : JsValue) -> JsValue = "webapi_GetAnimationsOptions" "get_pseudoElement"
