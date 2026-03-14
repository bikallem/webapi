// Do not edit. This file is generated.
// MoonBit type: EventTarget
// Specifications: dom.idl

///|
/// [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget)
#external
pub type EventTarget

///|
pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"

///|
pub impl FromJsAny for EventTarget with from_js_any(value : JsAny) -> EventTarget = "%identity"

///|
pub fn[T : TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"

///|
pub impl TEventTarget for EventTarget

///|
pub fn EventTarget::new() -> EventTarget {
  event_target_new_ffi()
}

///|
pub(open) trait TEventTargetAddEventListenerOptions: TJsValue {}

///|
pub impl TEventTargetAddEventListenerOptions for AddEventListenerOptions

///|
pub impl TEventTargetAddEventListenerOptions for Bool

///|
pub(open) trait TEventTargetRemoveEventListenerOptions: TJsValue {}

///|
pub impl TEventTargetRemoveEventListenerOptions for EventListenerOptions

///|
pub impl TEventTargetRemoveEventListenerOptions for Bool

///|
/// [EventTarget](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget) interface.
pub trait TEventTarget: TJsValue {
  add_event_listener(
    self : Self,
    type_ : String,
    callback : (Event) -> Unit,
    options? : &TEventTargetAddEventListenerOptions,
  ) -> Unit = _
  remove_event_listener(
    self : Self,
    type_ : String,
    callback : (Event) -> Unit,
    options? : &TEventTargetRemoveEventListenerOptions,
  ) -> Unit = _
  dispatch_event(self : Self, event : &TEvent) -> Bool = _
}

///|
/// [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
impl TEventTarget with add_event_listener(
  self : Self,
  type_ : String,
  callback : (Event) -> Unit,
  options? : &TEventTargetAddEventListenerOptions,
) -> Unit {
  event_target_add_event_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(event_listener_ffi(callback)),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [EventTarget.removeEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener)
impl TEventTarget with remove_event_listener(
  self : Self,
  type_ : String,
  callback : (Event) -> Unit,
  options? : &TEventTargetRemoveEventListenerOptions,
) -> Unit {
  event_target_remove_event_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(event_listener_ffi(callback)),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [EventTarget.dispatchEvent](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent)
impl TEventTarget with dispatch_event(self : Self, event : &TEvent) -> Bool {
  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
}

///|
#cfg(target="js")
extern "js" fn event_target_new_ffi() -> EventTarget = "() => new EventTarget()"

///|
#cfg(target="js")
extern "js" fn event_target_add_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(type_, callback, options)"

///|
#cfg(target="js")
extern "js" fn event_target_remove_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(type_, callback, options)"

///|
#cfg(target="js")
extern "js" fn event_target_dispatch_event_ffi_js(
  obj : JsValue,
  event : JsValue,
) -> JsValue = "(obj, event) => obj.dispatchEvent(event)"

///|
#cfg(target="js")
fn event_target_dispatch_event_ffi(obj : JsValue, event : JsValue) -> Bool {
  event_target_dispatch_event_ffi_js(obj, event).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn event_target_new_ffi() -> EventTarget = "webapi_EventTarget" "new"

///|
#cfg(target="wasm-gc")
fn event_target_add_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "webapi_EventTarget" "addEventListener"

///|
#cfg(target="wasm-gc")
fn event_target_remove_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "webapi_EventTarget" "removeEventListener"

///|
#cfg(target="wasm-gc")
fn event_target_dispatch_event_ffi(obj : JsValue, event : JsValue) -> Bool = "webapi_EventTarget" "dispatchEvent"
