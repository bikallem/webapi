// Do not edit. This file is generated.
// MoonBit type: Notification
// Specifications: notifications.idl

///|
/// [Notification](https://developer.mozilla.org/en-US/docs/Web/API/Notification)
#external
pub type Notification

///|
pub impl TJsValue for Notification with to_js(self : Notification) -> JsValue = "%identity"

///|
pub impl FromJsAny for Notification with from_js_any(value : JsAny) -> Notification = "%identity"

///|
pub fn[T : TNotification] Notification::into(self : Notification) -> T = "%identity"

///|
pub impl TNotification for Notification

///|
pub impl TEventTarget for Notification

///|
pub fn Notification::new(
  title : String,
  options? : NotificationOptions = NotificationOptions::empty(),
) -> Notification {
  notification_new_ffi(TJsValue::to_js(title), TJsValue::to_js(options))
}

///|
/// [Notification](https://developer.mozilla.org/en-US/docs/Web/API/Notification) interface.
pub trait TNotification: TEventTarget {
  onclick(self : Self) -> EventHandler = _
  set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit = _
  onshow(self : Self) -> EventHandler = _
  set_onshow(self : Self, onshow : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit = _
  title(self : Self) -> String = _
  dir(self : Self) -> NotificationDirection = _
  lang(self : Self) -> String = _
  body(self : Self) -> String = _
  navigate(self : Self) -> String = _
  tag(self : Self) -> String = _
  image(self : Self) -> String = _
  icon(self : Self) -> String = _
  badge(self : Self) -> String = _
  vibrate(self : Self) -> Array[UInt] = _
  timestamp(self : Self) -> EpochTimeStamp = _
  renotify(self : Self) -> Bool = _
  silent(self : Self) -> Bool = _
  require_interaction(self : Self) -> Bool = _
  data(self : Self) -> JsValue = _
  actions(self : Self) -> Array[NotificationAction] = _
  close(self : Self) -> Unit = _
}

///|
/// [Notification.permission](https://developer.mozilla.org/en-US/docs/Web/API/Notification/permission)
pub fn Notification::permission() -> NotificationPermission {
  notification_permission_ffi()
}

///|
/// [Notification.requestPermission](https://developer.mozilla.org/en-US/docs/Web/API/Notification/requestPermission)
pub fn Notification::request_permission(
  deprecated_callback? : (NotificationPermission) -> Unit,
) -> JsPromise[NotificationPermission] {
  notification_request_permission_ffi(
    match deprecated_callback {
      Some(v) => TJsValue::to_js(notification_permission_callback_ffi(v))
      None => JsValue::undefined()
    },
  )
}

///|
/// [Notification.maxActions](https://developer.mozilla.org/en-US/docs/Web/API/Notification/maxActions)
pub fn Notification::max_actions() -> UInt {
  notification_max_actions_ffi()
}

///|
/// [Notification.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onclick)
impl TNotification with onclick(self : Self) -> EventHandler {
  notification_onclick_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.onclick](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onclick)
impl TNotification with set_onclick(self : Self, onclick : (Event) -> JsValue) -> Unit {
  notification_set_onclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclick)),
  )
}

///|
/// [Notification.onshow](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onshow)
impl TNotification with onshow(self : Self) -> EventHandler {
  notification_onshow_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.onshow](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onshow)
impl TNotification with set_onshow(self : Self, onshow : (Event) -> JsValue) -> Unit {
  notification_set_onshow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onshow)),
  )
}

///|
/// [Notification.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onerror)
impl TNotification with onerror(self : Self) -> EventHandler {
  notification_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onerror)
impl TNotification with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  notification_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [Notification.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onclose)
impl TNotification with onclose(self : Self) -> EventHandler {
  notification_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.onclose](https://developer.mozilla.org/en-US/docs/Web/API/Notification/onclose)
impl TNotification with set_onclose(self : Self, onclose : (Event) -> JsValue) -> Unit {
  notification_set_onclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onclose)),
  )
}

///|
/// [Notification.title](https://developer.mozilla.org/en-US/docs/Web/API/Notification/title)
impl TNotification with title(self : Self) -> String {
  notification_title_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.dir](https://developer.mozilla.org/en-US/docs/Web/API/Notification/dir)
impl TNotification with dir(self : Self) -> NotificationDirection {
  notification_dir_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.lang](https://developer.mozilla.org/en-US/docs/Web/API/Notification/lang)
impl TNotification with lang(self : Self) -> String {
  notification_lang_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.body](https://developer.mozilla.org/en-US/docs/Web/API/Notification/body)
impl TNotification with body(self : Self) -> String {
  notification_body_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.navigate](https://developer.mozilla.org/en-US/docs/Web/API/Notification/navigate)
impl TNotification with navigate(self : Self) -> String {
  notification_navigate_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.tag](https://developer.mozilla.org/en-US/docs/Web/API/Notification/tag)
impl TNotification with tag(self : Self) -> String {
  notification_tag_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.image](https://developer.mozilla.org/en-US/docs/Web/API/Notification/image)
impl TNotification with image(self : Self) -> String {
  notification_image_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.icon](https://developer.mozilla.org/en-US/docs/Web/API/Notification/icon)
impl TNotification with icon(self : Self) -> String {
  notification_icon_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.badge](https://developer.mozilla.org/en-US/docs/Web/API/Notification/badge)
impl TNotification with badge(self : Self) -> String {
  notification_badge_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.vibrate](https://developer.mozilla.org/en-US/docs/Web/API/Notification/vibrate)
impl TNotification with vibrate(self : Self) -> Array[UInt] {
  notification_vibrate_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.timestamp](https://developer.mozilla.org/en-US/docs/Web/API/Notification/timestamp)
impl TNotification with timestamp(self : Self) -> EpochTimeStamp {
  notification_timestamp_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.renotify](https://developer.mozilla.org/en-US/docs/Web/API/Notification/renotify)
impl TNotification with renotify(self : Self) -> Bool {
  notification_renotify_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.silent](https://developer.mozilla.org/en-US/docs/Web/API/Notification/silent)
impl TNotification with silent(self : Self) -> Bool {
  notification_silent_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.requireInteraction](https://developer.mozilla.org/en-US/docs/Web/API/Notification/requireInteraction)
impl TNotification with require_interaction(self : Self) -> Bool {
  notification_require_interaction_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.data](https://developer.mozilla.org/en-US/docs/Web/API/Notification/data)
impl TNotification with data(self : Self) -> JsValue {
  notification_data_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.actions](https://developer.mozilla.org/en-US/docs/Web/API/Notification/actions)
impl TNotification with actions(self : Self) -> Array[NotificationAction] {
  notification_actions_ffi(TJsValue::to_js(self))
}

///|
/// [Notification.close](https://developer.mozilla.org/en-US/docs/Web/API/Notification/close)
impl TNotification with close(self : Self) -> Unit {
  notification_close_ffi(TJsValue::to_js(self))
}
