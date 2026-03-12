///|
extern "js" fn notification_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  notification : JsValue,
  action : JsValue,
) -> NotificationEventInit =
  #|(bubbles, cancelable, composed, notification, action) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (notification !== undefined) obj.notification = notification;
  #|  if (action !== undefined) obj.action = action;
  #|  return obj;
  #|}

///|
extern "js" fn notification_event_init_empty_ffi() -> NotificationEventInit = "() => {}"

///|
extern "js" fn notification_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn notification_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn notification_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn notification_event_init_get_notification_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.notification"

///|
fn notification_event_init_get_notification_ffi(obj : JsValue) -> Notification {
  notification_event_init_get_notification_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_event_init_get_action_ffi(obj : JsValue) -> JsValue = "(obj) => obj.action"
