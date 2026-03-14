// Do not edit. This file is generated.
// MoonBit type: NotificationEventInit
// Specifications: notifications.idl, service-workers.idl, dom.idl

/// [NotificationEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEventInit)
#external
pub type NotificationEventInit

pub impl TJsValue for NotificationEventInit with to_js(self: NotificationEventInit) -> JsValue = "%identity"

pub impl FromJsAny for NotificationEventInit with from_js_any(value : JsAny) -> NotificationEventInit = "%identity"

pub fn NotificationEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
notification : &TNotification, 
action? : String) -> NotificationEventInit {
  notification_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), TJsValue::to_js(notification), opt_to_js(action))
}

pub fn NotificationEventInit::empty() -> NotificationEventInit { notification_event_init_empty_ffi() }

pub fn NotificationEventInit::bubbles(self : NotificationEventInit) -> Bool? {
  notification_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationEventInit::cancelable(self : NotificationEventInit) -> Bool? {
  notification_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationEventInit::composed(self : NotificationEventInit) -> Bool? {
  notification_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NotificationEventInit::notification(self : NotificationEventInit) -> Notification {
  notification_event_init_get_notification_ffi(TJsValue::to_js(self))
}

pub fn NotificationEventInit::action(self : NotificationEventInit) -> String? {
  notification_event_init_get_action_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn notification_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, notification: JsValue, action: JsValue) -> NotificationEventInit = 
#|(bubbles, cancelable, composed, notification, action) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (notification !== undefined) obj.notification = notification;
#|  if (action !== undefined) obj.action = action;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn notification_event_init_empty_ffi() -> NotificationEventInit = "() => {}"

#cfg(target="js")
extern "js" fn notification_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn notification_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn notification_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn notification_event_init_get_notification_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.notification"

///|
#cfg(target="js")
fn notification_event_init_get_notification_ffi(obj: JsValue) -> Notification {
  notification_event_init_get_notification_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn notification_event_init_get_action_ffi(obj: JsValue) -> JsValue = "(obj) => obj.action"

#cfg(target="wasm-gc")
fn notification_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, notification: JsValue, action: JsValue) -> NotificationEventInit = "webapi_NotificationEventInit" "new"

#cfg(target="wasm-gc")
fn notification_event_init_empty_ffi() -> NotificationEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn notification_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_NotificationEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn notification_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_NotificationEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn notification_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_NotificationEventInit" "get_composed"

#cfg(target="wasm-gc")
fn notification_event_init_get_notification_ffi(obj: JsValue) -> Notification = "webapi_NotificationEventInit" "get_notification"

#cfg(target="wasm-gc")
fn notification_event_init_get_action_ffi(obj: JsValue) -> JsValue = "webapi_NotificationEventInit" "get_action"