///|
extern "js" fn notification_permission_callback_ffi(
  callback : (NotificationPermission) -> Unit,
) -> NotificationPermissionCallback = "(callback) => callback"
