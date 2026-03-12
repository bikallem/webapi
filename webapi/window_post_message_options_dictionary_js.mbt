extern "js" fn window_post_message_options_ffi(transfer: JsValue, target_origin: JsValue) -> WindowPostMessageOptions = 
#|(transfer, targetOrigin) => {
#|  const obj = {};
#|  if (transfer !== undefined) obj.transfer = transfer;
#|  if (targetOrigin !== undefined) obj.targetOrigin = targetOrigin;
#|  return obj;
#|}

extern "js" fn window_post_message_options_empty_ffi() -> WindowPostMessageOptions = "() => {}"

extern "js" fn window_post_message_options_get_transfer_ffi(obj: JsValue) -> JsValue = "(obj) => obj.transfer"

extern "js" fn window_post_message_options_get_target_origin_ffi(obj: JsValue) -> JsValue = "(obj) => obj.targetOrigin"