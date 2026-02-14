// Do not edit. This file is generated.
// MoonBit type: NotificationDirection
// Specifications: notifications.idl

///|
pub(all) enum NotificationDirection {
  Auto
  Ltr
  Rtl
} derive(Eq)

///|
pub impl Show for NotificationDirection with output(
  self : NotificationDirection,
  logger : &Logger,
) -> Unit {
  match self {
    NotificationDirection::Auto => logger.write_string("Auto")
    NotificationDirection::Ltr => logger.write_string("Ltr")
    NotificationDirection::Rtl => logger.write_string("Rtl")
  }
}

///|
pub impl TJsValue for NotificationDirection with to_js(
  self : NotificationDirection,
) -> JsValue {
  match self {
    NotificationDirection::Auto => TJsValue::to_js("auto")
    NotificationDirection::Ltr => TJsValue::to_js("ltr")
    NotificationDirection::Rtl => TJsValue::to_js("rtl")
  }
}

///|
pub fn NotificationDirection::from(value : String) -> NotificationDirection? {
  match value {
    "auto" => Some(NotificationDirection::Auto)
    "ltr" => Some(NotificationDirection::Ltr)
    "rtl" => Some(NotificationDirection::Rtl)
    _ => None
  }
}

///|
fn NotificationDirection::from_unchecked(
  value : String,
) -> NotificationDirection {
  match value {
    "auto" => NotificationDirection::Auto
    "ltr" => NotificationDirection::Ltr
    "rtl" => NotificationDirection::Rtl
    _ => abort("unknown NotificationDirection enum value")
  }
}

///|
pub fn NotificationDirection::value(self : NotificationDirection) -> String {
  match self {
    NotificationDirection::Auto => "auto"
    NotificationDirection::Ltr => "ltr"
    NotificationDirection::Rtl => "rtl"
  }
}

///|
pub impl FromJsAny for NotificationDirection with from_js_any(value : JsAny) -> NotificationDirection {
  NotificationDirection::from_unchecked(value)
}
