fn notification_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NotificationEvent = "webapi_NotificationEvent" "new"

fn notification_event_notification_ffi(obj: JsValue) -> Notification = "webapi_NotificationEvent" "get_notification"

fn notification_event_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotificationEvent" "get_action"

///|
fn notification_event_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(notification_event_action_ffi_wasm(obj))
}