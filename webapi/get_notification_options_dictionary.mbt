// Do not edit. This file is generated.
// MoonBit type: GetNotificationOptions
// Specifications: notifications.idl

///|
/// [GetNotificationOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetNotificationOptions)
#external
pub type GetNotificationOptions

///|
pub impl TJsValue for GetNotificationOptions with to_js(
  self : GetNotificationOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for GetNotificationOptions with from_js_any(value : JsAny) -> GetNotificationOptions = "%identity"

///|
pub fn GetNotificationOptions::new(tag? : String) -> GetNotificationOptions {
  get_notification_options_ffi(opt_to_js(tag))
}

///|
pub fn GetNotificationOptions::empty() -> GetNotificationOptions {
  get_notification_options_empty_ffi()
}

///|
pub fn GetNotificationOptions::tag(self : GetNotificationOptions) -> String? {
  get_notification_options_get_tag_ffi(TJsValue::to_js(self)).to_option_prim()
}
