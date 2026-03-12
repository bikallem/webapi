// Do not edit. This file is generated.
// MoonBit type: NotificationOptions
// Specifications: notifications.idl

/// [NotificationOptions](https://developer.mozilla.org/en-US/docs/Web/API/NotificationOptions)
#external
pub type NotificationOptions

pub impl TJsValue for NotificationOptions with to_js(self: NotificationOptions) -> JsValue = "%identity"

pub impl FromJsAny for NotificationOptions with from_js_any(value : JsAny) -> NotificationOptions = "%identity"

pub fn NotificationOptions::new(dir? : NotificationDirection, 
lang? : String, 
body? : String, 
navigate? : String, 
tag? : String, 
image? : String, 
icon? : String, 
badge? : String, 
vibrate? : &TVibratePattern, 
timestamp? : EpochTimeStamp, 
renotify? : Bool, 
silent? : Bool, 
require_interaction? : Bool, 
data? : JsValue, 
actions? : Array[NotificationAction]) -> NotificationOptions {
  notification_options_ffi(opt_to_js(dir), opt_to_js(lang), opt_to_js(body), opt_to_js(navigate), opt_to_js(tag), opt_to_js(image), opt_to_js(icon), opt_to_js(badge), match vibrate {
Some(v) => v.to_js()
None => JsValue::undefined()
}, opt_to_js(timestamp), opt_to_js(renotify), opt_to_js(silent), opt_to_js(require_interaction), opt_to_js(data), opt_to_js(actions))
}

pub fn NotificationOptions::empty() -> NotificationOptions { notification_options_empty_ffi() }

pub fn NotificationOptions::dir(self : NotificationOptions) -> NotificationDirection? {
  notification_options_get_dir_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NotificationOptions::lang(self : NotificationOptions) -> String? {
  notification_options_get_lang_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::body(self : NotificationOptions) -> String? {
  notification_options_get_body_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::navigate(self : NotificationOptions) -> String? {
  notification_options_get_navigate_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::tag(self : NotificationOptions) -> String? {
  notification_options_get_tag_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::image(self : NotificationOptions) -> String? {
  notification_options_get_image_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::icon(self : NotificationOptions) -> String? {
  notification_options_get_icon_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::badge(self : NotificationOptions) -> String? {
  notification_options_get_badge_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::vibrate(self : NotificationOptions) -> VibratePattern? {
  notification_options_get_vibrate_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NotificationOptions::timestamp(self : NotificationOptions) -> EpochTimeStamp? {
  notification_options_get_timestamp_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NotificationOptions::renotify(self : NotificationOptions) -> Bool? {
  notification_options_get_renotify_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::silent(self : NotificationOptions) -> Bool? {
  notification_options_get_silent_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::require_interaction(self : NotificationOptions) -> Bool? {
  notification_options_get_require_interaction_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationOptions::data(self : NotificationOptions) -> JsValue? {
  notification_options_get_data_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NotificationOptions::actions(self : NotificationOptions) -> Array[NotificationAction]? {
  notification_options_get_actions_ffi(TJsValue::to_js(self)).to_option()
}