// Do not edit. This file is generated.
// MoonBit type: NotificationAction
// Specifications: notifications.idl

///|
/// [NotificationAction](https://developer.mozilla.org/en-US/docs/Web/API/NotificationAction)
#external
pub type NotificationAction

///|
pub impl TJsValue for NotificationAction with to_js(self : NotificationAction) -> JsValue = "%identity"

///|
pub impl FromJsAny for NotificationAction with from_js_any(value : JsAny) -> NotificationAction = "%identity"

///|
pub fn NotificationAction::new(
  action : String,
  title : String,
  navigate? : String,
  icon? : String,
) -> NotificationAction {
  notification_action_ffi(
    TJsValue::to_js(action),
    TJsValue::to_js(title),
    opt_to_js(navigate),
    opt_to_js(icon),
  )
}

///|
pub fn NotificationAction::empty() -> NotificationAction {
  notification_action_empty_ffi()
}

///|
pub fn NotificationAction::action(self : NotificationAction) -> String {
  notification_action_get_action_ffi(TJsValue::to_js(self))
}

///|
pub fn NotificationAction::title(self : NotificationAction) -> String {
  notification_action_get_title_ffi(TJsValue::to_js(self))
}

///|
pub fn NotificationAction::navigate(self : NotificationAction) -> String? {
  let result = notification_action_get_navigate_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NotificationAction::icon(self : NotificationAction) -> String? {
  let result = notification_action_get_icon_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
