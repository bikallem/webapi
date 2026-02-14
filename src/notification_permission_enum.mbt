// Do not edit. This file is generated.
// MoonBit type: NotificationPermission
// Specifications: notifications.idl

///|
pub(all) enum NotificationPermission {
  Default
  Denied
  Granted
} derive(Eq)

///|
pub impl Show for NotificationPermission with output(
  self : NotificationPermission,
  logger : &Logger,
) -> Unit {
  match self {
    NotificationPermission::Default => logger.write_string("Default")
    NotificationPermission::Denied => logger.write_string("Denied")
    NotificationPermission::Granted => logger.write_string("Granted")
  }
}

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

///|
fn NotificationPermission::from_unchecked(
  value : String,
) -> NotificationPermission {
  match value {
    "default" => NotificationPermission::Default
    "denied" => NotificationPermission::Denied
    "granted" => NotificationPermission::Granted
    _ => abort("unknown NotificationPermission enum value")
  }
}

///|
pub fn NotificationPermission::value(self : NotificationPermission) -> String {
  match self {
    NotificationPermission::Default => "default"
    NotificationPermission::Denied => "denied"
    NotificationPermission::Granted => "granted"
  }
}

///|
pub impl FromJsAny for NotificationPermission with from_js_any(value : JsAny) -> NotificationPermission {
  NotificationPermission::from_unchecked(value)
}
