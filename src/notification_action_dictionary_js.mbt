extern "js" fn notification_action_ffi(action: JsValue, title: JsValue, navigate: JsValue, icon: JsValue) -> NotificationAction = 
#|(action, title, navigate, icon) => {
#|  const obj = {};
#|  if (action !== undefined) obj.action = action;
#|  if (title !== undefined) obj.title = title;
#|  if (navigate !== undefined) obj.navigate = navigate;
#|  if (icon !== undefined) obj.icon = icon;
#|  return obj;
#|}

extern "js" fn notification_action_empty_ffi() -> NotificationAction = "() => {}"