///|
pub fn NotificationPermissionCallback::new(
  f : (NotificationPermission) -> Unit,
) -> NotificationPermissionCallback {
  notification_permission_callback_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn notification_permission_callback_ffi(f : JsValue) -> JsValue = "(f) => f"
