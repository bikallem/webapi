///|
fn notification_action_ffi(
  action : JsValue,
  title : JsValue,
  navigate : JsValue,
  icon : JsValue,
) -> NotificationAction = "webapi_NotificationAction" "new"

///|
fn notification_action_empty_ffi() -> NotificationAction = "webapi_Dictionary" "empty"

///|
fn notification_action_get_action_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotificationAction" "get_action"

///|
fn notification_action_get_action_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_action_get_action_ffi_wasm(obj))
}

///|
fn notification_action_get_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotificationAction" "get_title"

///|
fn notification_action_get_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_action_get_title_ffi_wasm(obj))
}

///|
fn notification_action_get_navigate_ffi(obj : JsValue) -> JsValue = "webapi_NotificationAction" "get_navigate"

///|
fn notification_action_get_icon_ffi(obj : JsValue) -> JsValue = "webapi_NotificationAction" "get_icon"
