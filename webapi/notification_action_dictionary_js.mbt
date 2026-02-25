///|
extern "js" fn notification_action_ffi(
  action : JsValue,
  title : JsValue,
  navigate : JsValue,
  icon : JsValue,
) -> NotificationAction =
  #|(action, title, navigate, icon) => {
  #|  const obj = {};
  #|  if (action !== undefined) obj.action = action;
  #|  if (title !== undefined) obj.title = title;
  #|  if (navigate !== undefined) obj.navigate = navigate;
  #|  if (icon !== undefined) obj.icon = icon;
  #|  return obj;
  #|}

///|
extern "js" fn notification_action_empty_ffi() -> NotificationAction = "() => {}"

///|
extern "js" fn notification_action_get_action_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.action"

///|
fn notification_action_get_action_ffi(obj : JsValue) -> String {
  notification_action_get_action_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_action_get_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
fn notification_action_get_title_ffi(obj : JsValue) -> String {
  notification_action_get_title_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_action_get_navigate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.navigate"

///|
extern "js" fn notification_action_get_icon_ffi(obj : JsValue) -> JsValue = "(obj) => obj.icon"
