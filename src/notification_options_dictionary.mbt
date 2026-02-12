// Do not edit. This file is generated.
// MoonBit type: NotificationOptions
// Specifications: notifications.idl

///|
/// [NotificationOptions](https://developer.mozilla.org/en-US/docs/Web/API/NotificationOptions)
#external
pub type NotificationOptions

///|
pub impl TJsValue for NotificationOptions with to_js(self : NotificationOptions) -> JsValue = "%identity"

///|
pub fn NotificationOptions::new(
  dir? : NotificationDirection = NotificationDirection::Auto,
  lang? : String = "",
  body? : String = "",
  navigate? : String,
  tag? : String = "",
  image? : String,
  icon? : String,
  badge? : String,
  vibrate? : &TVibratePattern,
  timestamp? : EpochTimeStamp,
  renotify? : Bool = false,
  silent? : Bool = JsValue::null(),
  require_interaction? : Bool = false,
  data? : JsValue = JsValue::null(),
  actions? : Array[NotificationAction] = [],
) -> NotificationOptions {
  notification_options_ffi(
    TJsValue::to_js(dir),
    TJsValue::to_js(lang),
    TJsValue::to_js(body),
    opt_to_js(navigate),
    TJsValue::to_js(tag),
    opt_to_js(image),
    opt_to_js(icon),
    opt_to_js(badge),
    match vibrate {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(timestamp),
    TJsValue::to_js(renotify),
    TJsValue::to_js(silent),
    TJsValue::to_js(require_interaction),
    TJsValue::to_js(data),
    TJsValue::to_js(actions),
  )
}

///|
pub fn NotificationOptions::empty() -> NotificationOptions {
  notification_options_empty_ffi()
}
