// Do not edit. This file is generated.
// MoonBit type: NotificationEventInit
// Specifications: notifications.idl, service-workers.idl, dom.idl

///|
/// [NotificationEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEventInit)
#external
pub type NotificationEventInit

///|
pub impl TJsValue for NotificationEventInit with to_js(
  self : NotificationEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NotificationEventInit with from_js_any(value : JsAny) -> NotificationEventInit = "%identity"

///|
pub fn NotificationEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  notification : &TNotification,
  action? : String,
) -> NotificationEventInit {
  notification_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    TJsValue::to_js(notification),
    opt_to_js(action),
  )
}

///|
pub fn NotificationEventInit::empty() -> NotificationEventInit {
  notification_event_init_empty_ffi()
}

///|
pub fn NotificationEventInit::bubbles(self : NotificationEventInit) -> Bool? {
  notification_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NotificationEventInit::cancelable(self : NotificationEventInit) -> Bool? {
  notification_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NotificationEventInit::composed(self : NotificationEventInit) -> Bool? {
  notification_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn NotificationEventInit::notification(
  self : NotificationEventInit,
) -> Notification {
  notification_event_init_get_notification_ffi(TJsValue::to_js(self))
}

///|
pub fn NotificationEventInit::action(self : NotificationEventInit) -> String? {
  notification_event_init_get_action_ffi(TJsValue::to_js(self)).to_option_prim()
}
