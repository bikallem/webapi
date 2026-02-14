///|
fn get_animations_options_ffi(
  subtree : JsValue,
  pseudo_element : JsValue,
) -> GetAnimationsOptions = "webapi_GetAnimationsOptions" "new"

///|
fn get_animations_options_empty_ffi() -> GetAnimationsOptions = "webapi_Dictionary" "empty"
