///|
extern "js" fn notification_new_ffi(
  title : JsValue,
  options : JsValue,
) -> Notification = "(title, options) => new Notification(title, options)"

///|
extern "js" fn notification_permission_ffi_js() -> JsValue = "() => Notification.permission"

///|
fn notification_permission_ffi() -> NotificationPermission {
  notification_permission_ffi_js().unsafe_cast()
}

///|
extern "js" fn notification_request_permission_ffi_js(
  deprecated_callback : JsValue,
) -> JsValue = "(deprecated_callback) => Notification.requestPermission(deprecated_callback)"

///|
fn notification_request_permission_ffi(
  deprecated_callback : JsValue,
) -> JsPromise[NotificationPermission] {
  notification_request_permission_ffi_js(deprecated_callback).unsafe_cast()
}

///|
extern "js" fn notification_max_actions_ffi_js() -> JsValue = "() => Notification.maxActions"

///|
fn notification_max_actions_ffi() -> UInt {
  notification_max_actions_ffi_js().unsafe_cast()
}

///|
extern "js" fn notification_onclick_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclick"

///|
fn notification_onclick_ffi(obj : JsValue) -> EventHandler {
  notification_onclick_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_set_onclick_ffi(
  obj : JsValue,
  onclick : JsValue,
) -> Unit = "(obj, onclick) => { obj.onclick = onclick; }"

///|
extern "js" fn notification_onshow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onshow"

///|
fn notification_onshow_ffi(obj : JsValue) -> EventHandler {
  notification_onshow_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_set_onshow_ffi(
  obj : JsValue,
  onshow : JsValue,
) -> Unit = "(obj, onshow) => { obj.onshow = onshow; }"

///|
extern "js" fn notification_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn notification_onerror_ffi(obj : JsValue) -> EventHandler {
  notification_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn notification_onclose_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn notification_onclose_ffi(obj : JsValue) -> EventHandler {
  notification_onclose_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_set_onclose_ffi(
  obj : JsValue,
  onclose : JsValue,
) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

///|
extern "js" fn notification_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
fn notification_title_ffi(obj : JsValue) -> String {
  notification_title_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_dir_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dir"

///|
fn notification_dir_ffi(obj : JsValue) -> NotificationDirection {
  notification_dir_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_lang_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lang"

///|
fn notification_lang_ffi(obj : JsValue) -> String {
  notification_lang_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_body_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.body"

///|
fn notification_body_ffi(obj : JsValue) -> String {
  notification_body_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_navigate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigate"

///|
fn notification_navigate_ffi(obj : JsValue) -> String {
  notification_navigate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_tag_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tag"

///|
fn notification_tag_ffi(obj : JsValue) -> String {
  notification_tag_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_image_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.image"

///|
fn notification_image_ffi(obj : JsValue) -> String {
  notification_image_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_icon_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.icon"

///|
fn notification_icon_ffi(obj : JsValue) -> String {
  notification_icon_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_badge_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.badge"

///|
fn notification_badge_ffi(obj : JsValue) -> String {
  notification_badge_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_vibrate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vibrate"

///|
fn notification_vibrate_ffi(obj : JsValue) -> JsValue {
  notification_vibrate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_timestamp_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timestamp"

///|
fn notification_timestamp_ffi(obj : JsValue) -> EpochTimeStamp {
  notification_timestamp_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_renotify_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.renotify"

///|
fn notification_renotify_ffi(obj : JsValue) -> Bool {
  notification_renotify_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_silent_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.silent"

///|
fn notification_silent_ffi(obj : JsValue) -> Bool {
  notification_silent_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_require_interaction_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.requireInteraction"

///|
fn notification_require_interaction_ffi(obj : JsValue) -> Bool {
  notification_require_interaction_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
fn notification_data_ffi(obj : JsValue) -> JsValue {
  notification_data_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_actions_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.actions"

///|
fn notification_actions_ffi(obj : JsValue) -> JsValue {
  notification_actions_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn notification_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"
