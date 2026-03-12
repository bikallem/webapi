fn get_notification_options_ffi(tag: JsValue) -> GetNotificationOptions = "webapi_GetNotificationOptions" "new"

fn get_notification_options_empty_ffi() -> GetNotificationOptions = "webapi_Dictionary" "empty"

fn get_notification_options_get_tag_ffi(obj: JsValue) -> JsValue = "webapi_GetNotificationOptions" "get_tag"