// Do not edit. This file is generated.
// MoonBit type: NotificationPermissionCallback
// Specifications: notifications.idl

///|
/// [NotificationPermissionCallback](https://developer.mozilla.org/en-US/docs/Web/API/NotificationPermissionCallback)
#external
pub type NotificationPermissionCallback

///|
pub impl TJsValue for NotificationPermissionCallback with to_js(
  self : NotificationPermissionCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NotificationPermissionCallback with from_js_any(
  value : JsAny,
) -> NotificationPermissionCallback = "%identity"

///|
pub fn NotificationPermissionCallback::new(
  callback : (NotificationPermission) -> Unit,
) -> NotificationPermissionCallback {
  notification_permission_callback_ffi(callback)
}
