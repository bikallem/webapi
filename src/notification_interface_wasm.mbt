///|
fn notification_new_ffi(title : JsValue, options : JsValue) -> Notification = "webapi_Notification" "new"

///|
fn notification_permission_ffi() -> NotificationPermission = "webapi_Notification" "get_permission"

///|
fn notification_request_permission_ffi_wasm(
  deprecated_callback : JsValue,
) -> JsValue = "webapi_Notification" "requestPermission"

///|
fn notification_request_permission_ffi(
  deprecated_callback : JsValue,
) -> @js_async.Promise[NotificationPermission] {
  notification_request_permission_ffi_wasm(deprecated_callback).unsafe_cast()
}

///|
fn notification_max_actions_ffi() -> UInt = "webapi_Notification" "get_maxActions"

///|
fn notification_onclick_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Notification" "get_onclick"

///|
fn notification_set_onclick_ffi(obj : JsValue, onclick : JsValue) -> Unit = "webapi_Notification" "set_onclick"

///|
fn notification_onshow_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Notification" "get_onshow"

///|
fn notification_set_onshow_ffi(obj : JsValue, onshow : JsValue) -> Unit = "webapi_Notification" "set_onshow"

///|
fn notification_onerror_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Notification" "get_onerror"

///|
fn notification_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_Notification" "set_onerror"

///|
fn notification_onclose_ffi(obj : JsValue) -> EventHandlerNonNull = "webapi_Notification" "get_onclose"

///|
fn notification_set_onclose_ffi(obj : JsValue, onclose : JsValue) -> Unit = "webapi_Notification" "set_onclose"

///|
fn notification_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_title"

///|
fn notification_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_title_ffi_wasm(obj))
}

///|
fn notification_dir_ffi(obj : JsValue) -> NotificationDirection = "webapi_Notification" "get_dir"

///|
fn notification_lang_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_lang"

///|
fn notification_lang_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_lang_ffi_wasm(obj))
}

///|
fn notification_body_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_body"

///|
fn notification_body_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_body_ffi_wasm(obj))
}

///|
fn notification_navigate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_navigate"

///|
fn notification_navigate_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_navigate_ffi_wasm(obj))
}

///|
fn notification_tag_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_tag"

///|
fn notification_tag_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_tag_ffi_wasm(obj))
}

///|
fn notification_image_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_image"

///|
fn notification_image_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_image_ffi_wasm(obj))
}

///|
fn notification_icon_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_icon"

///|
fn notification_icon_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_icon_ffi_wasm(obj))
}

///|
fn notification_badge_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Notification" "get_badge"

///|
fn notification_badge_ffi(obj : JsValue) -> String {
  jsvalue_to_string(notification_badge_ffi_wasm(obj))
}

///|
fn notification_vibrate_ffi(obj : JsValue) -> JsValue = "webapi_Notification" "get_vibrate"

///|
fn notification_timestamp_ffi(obj : JsValue) -> UInt64 = "webapi_Notification" "get_timestamp"

///|
fn notification_renotify_ffi(obj : JsValue) -> Bool = "webapi_Notification" "get_renotify"

///|
fn notification_silent_ffi(obj : JsValue) -> Bool = "webapi_Notification" "get_silent"

///|
fn notification_require_interaction_ffi(obj : JsValue) -> Bool = "webapi_Notification" "get_requireInteraction"

///|
fn notification_data_ffi(obj : JsValue) -> JsValue = "webapi_Notification" "get_data"

///|
fn notification_actions_ffi(obj : JsValue) -> JsValue = "webapi_Notification" "get_actions"

///|
fn notification_close_ffi(obj : JsValue) -> Unit = "webapi_Notification" "close"
