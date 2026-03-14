// Do not edit. This file is generated.
// MoonBit type: NotificationAction
// Specifications: notifications.idl

/// [NotificationAction](https://developer.mozilla.org/en-US/docs/Web/API/NotificationAction)
#external
pub type NotificationAction

pub impl TJsValue for NotificationAction with to_js(self: NotificationAction) -> JsValue = "%identity"

pub impl FromJsAny for NotificationAction with from_js_any(value : JsAny) -> NotificationAction = "%identity"

pub fn NotificationAction::new(action : String, 
title : String, 
navigate? : String, 
icon? : String) -> NotificationAction {
  notification_action_ffi(TJsValue::to_js(action), TJsValue::to_js(title), opt_to_js(navigate), opt_to_js(icon))
}

pub fn NotificationAction::empty() -> NotificationAction { notification_action_empty_ffi() }

pub fn NotificationAction::action(self : NotificationAction) -> String {
  notification_action_get_action_ffi(TJsValue::to_js(self))
}

pub fn NotificationAction::title(self : NotificationAction) -> String {
  notification_action_get_title_ffi(TJsValue::to_js(self))
}

pub fn NotificationAction::navigate(self : NotificationAction) -> String? {
  notification_action_get_navigate_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationAction::icon(self : NotificationAction) -> String? {
  notification_action_get_icon_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn notification_action_ffi(action: JsValue, title: JsValue, navigate: JsValue, icon: JsValue) -> NotificationAction = 
#|(action, title, navigate, icon) => {
#|  const obj = {};
#|  if (action !== undefined) obj.action = action;
#|  if (title !== undefined) obj.title = title;
#|  if (navigate !== undefined) obj.navigate = navigate;
#|  if (icon !== undefined) obj.icon = icon;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn notification_action_empty_ffi() -> NotificationAction = "() => {}"

#cfg(target="js")
extern "js" fn notification_action_get_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.action"

///|
#cfg(target="js")
fn notification_action_get_action_ffi(obj: JsValue) -> String {
  notification_action_get_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn notification_action_get_title_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.title"

///|
#cfg(target="js")
fn notification_action_get_title_ffi(obj: JsValue) -> String {
  notification_action_get_title_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn notification_action_get_navigate_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigate"

#cfg(target="js")
extern "js" fn notification_action_get_icon_ffi(obj: JsValue) -> JsValue = "(obj) => obj.icon"

#cfg(target="wasm-gc")
fn notification_action_ffi(action: JsValue, title: JsValue, navigate: JsValue, icon: JsValue) -> NotificationAction = "webapi_NotificationAction" "new"

#cfg(target="wasm-gc")
fn notification_action_empty_ffi() -> NotificationAction = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn notification_action_get_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotificationAction" "get_action"

///|
#cfg(target="wasm-gc")
fn notification_action_get_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(notification_action_get_action_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn notification_action_get_title_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotificationAction" "get_title"

///|
#cfg(target="wasm-gc")
fn notification_action_get_title_ffi(obj: JsValue) -> String {
  jsvalue_to_string(notification_action_get_title_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn notification_action_get_navigate_ffi(obj: JsValue) -> JsValue = "webapi_NotificationAction" "get_navigate"

#cfg(target="wasm-gc")
fn notification_action_get_icon_ffi(obj: JsValue) -> JsValue = "webapi_NotificationAction" "get_icon"