// Do not edit. This file is generated.
// MoonBit type: NotificationDirection
// Specifications: notifications.idl

pub(all) enum NotificationDirection {
  Auto
  Ltr
  Rtl
} derive(Eq,Show)

pub impl TJsValue for NotificationDirection with to_js(self: NotificationDirection) -> JsValue {
  match self {
    NotificationDirection::Auto => TJsValue::to_js("auto")
    NotificationDirection::Ltr => TJsValue::to_js("ltr")
    NotificationDirection::Rtl => TJsValue::to_js("rtl")
  }
}

pub fn NotificationDirection::from(value: String) -> NotificationDirection? {
  match value {
    "auto" => Some(NotificationDirection::Auto)
    "ltr" => Some(NotificationDirection::Ltr)
    "rtl" => Some(NotificationDirection::Rtl)
    _ => None
  }
}