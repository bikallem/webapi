extern "js" fn get_notification_options_ffi(tag: JsValue) -> GetNotificationOptions = 
#|(tag) => {
#|  const obj = {};
#|  if (tag !== undefined) obj.tag = tag;
#|  return obj;
#|}

extern "js" fn get_notification_options_empty_ffi() -> GetNotificationOptions = "() => {}"

extern "js" fn get_notification_options_get_tag_ffi(obj: JsValue) -> JsValue = "(obj) => obj.tag"