fn notification_action_ffi(action: JsValue, title: JsValue, navigate: JsValue, icon: JsValue) -> NotificationAction = "webapi_NotificationAction" "new"

fn notification_action_empty_ffi() -> NotificationAction = "webapi_Dictionary" "empty"