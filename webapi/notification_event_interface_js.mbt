///|
extern "js" fn notification_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NotificationEvent = "(type_, event_init_dict) => new NotificationEvent(type_, event_init_dict)"

///|
extern "js" fn notification_event_notification_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.notification"

///|
fn notification_event_notification_ffi(obj : JsValue) -> Notification {
  notification_event_notification_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_event_action_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.action"

///|
fn notification_event_action_ffi(obj : JsValue) -> String {
  notification_event_action_ffi_js(obj).unsafe_cast()
}
