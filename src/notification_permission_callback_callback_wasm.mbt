///|
pub fn NotificationPermissionCallback::new(
  f : (NotificationPermission) -> Unit,
) -> NotificationPermissionCallback {
  let w : (JsValue) -> Unit = fn(a0 : JsValue) { f(a0.unsafe_cast()) }
  notification_permission_callback_ffi(w).unsafe_cast()
}

///|
fn notification_permission_callback_ffi(f : (JsValue) -> Unit) -> JsValue = "webapi_NotificationPermissionCallback" "new"
