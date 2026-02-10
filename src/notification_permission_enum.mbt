// Do not edit. This file is generated.
// MoonBit type: NotificationPermission
// Specifications: notifications.idl

///|
pub(all) enum NotificationPermission {
  Default
  Denied
  Granted
} derive(Eq, Show)

///|
pub impl TJsValue for NotificationPermission with to_js(
  self : NotificationPermission,
) -> JsValue {
  match self {
    NotificationPermission::Default => TJsValue::to_js("default")
    NotificationPermission::Denied => TJsValue::to_js("denied")
    NotificationPermission::Granted => TJsValue::to_js("granted")
  }
}

///|
pub fn NotificationPermission::from(value : String) -> NotificationPermission? {
  match value {
    "default" => Some(NotificationPermission::Default)
    "denied" => Some(NotificationPermission::Denied)
    "granted" => Some(NotificationPermission::Granted)
    _ => None
  }
}
