///|
fn window_post_message_options_ffi(
  transfer : JsValue,
  target_origin : JsValue,
) -> WindowPostMessageOptions = "webapi_WindowPostMessageOptions" "new"

///|
fn window_post_message_options_empty_ffi() -> WindowPostMessageOptions = "webapi_Dictionary" "empty"

///|
fn window_post_message_options_get_transfer_ffi(obj : JsValue) -> JsValue = "webapi_WindowPostMessageOptions" "get_transfer"

///|
fn window_post_message_options_get_target_origin_ffi(obj : JsValue) -> JsValue = "webapi_WindowPostMessageOptions" "get_targetOrigin"
