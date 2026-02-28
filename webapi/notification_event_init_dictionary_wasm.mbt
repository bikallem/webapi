///|
fn notification_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  notification : JsValue,
  action : JsValue,
) -> NotificationEventInit = "webapi_NotificationEventInit" "new"

///|
fn notification_event_init_empty_ffi() -> NotificationEventInit = "webapi_Dictionary" "empty"

///|
fn notification_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_NotificationEventInit" "get_bubbles"

///|
fn notification_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_NotificationEventInit" "get_cancelable"

///|
fn notification_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_NotificationEventInit" "get_composed"

///|
fn notification_event_init_get_notification_ffi(obj : JsValue) -> Notification = "webapi_NotificationEventInit" "get_notification"

///|
fn notification_event_init_get_action_ffi(obj : JsValue) -> JsValue = "webapi_NotificationEventInit" "get_action"
