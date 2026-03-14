// Do not edit. This file is generated.
// MoonBit type: NotificationEvent
// Specifications: notifications.idl

/// [NotificationEvent](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEvent)
#external
pub type NotificationEvent

pub impl TJsValue for NotificationEvent with to_js(self: NotificationEvent) -> JsValue = "%identity"

pub impl FromJsAny for NotificationEvent with from_js_any(value : JsAny) -> NotificationEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNotificationEvent] NotificationEvent::into(self : NotificationEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNotificationEvent] NotificationEvent::unsafe_into(self : NotificationEvent) -> T = "%identity"

pub impl HasConstructor for NotificationEvent with constructor_name() { "NotificationEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNotificationEvent + HasConstructor] NotificationEvent::try_into(self : NotificationEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TNotificationEvent for NotificationEvent

pub impl TExtendableEvent for NotificationEvent

pub impl TEvent for NotificationEvent

pub fn NotificationEvent::new(type_ : String, 
event_init_dict : NotificationEventInit) -> NotificationEvent {
  notification_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [NotificationEvent](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEvent) interface.
pub trait TNotificationEvent: TExtendableEvent {
  notification(self : Self) -> Notification = _
  action(self : Self) -> String = _
}

/// [NotificationEvent.notification](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEvent/notification)
impl TNotificationEvent with notification(self : Self) -> Notification {
  notification_event_notification_ffi(TJsValue::to_js(self))
}

/// [NotificationEvent.action](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEvent/action)
impl TNotificationEvent with action(self : Self) -> String {
  notification_event_action_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn notification_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NotificationEvent = "(type_, event_init_dict) => new NotificationEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn notification_event_notification_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.notification"

///|
#cfg(target="js")
fn notification_event_notification_ffi(obj: JsValue) -> Notification {
  notification_event_notification_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn notification_event_action_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.action"

///|
#cfg(target="js")
fn notification_event_action_ffi(obj: JsValue) -> String {
  notification_event_action_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn notification_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NotificationEvent = "webapi_NotificationEvent" "new"

#cfg(target="wasm-gc")
fn notification_event_notification_ffi(obj: JsValue) -> Notification = "webapi_NotificationEvent" "get_notification"

#cfg(target="wasm-gc")
fn notification_event_action_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotificationEvent" "get_action"

///|
#cfg(target="wasm-gc")
fn notification_event_action_ffi(obj: JsValue) -> String {
  jsvalue_to_string(notification_event_action_ffi_wasm(obj))
}