///|
#external
pub type EventTarget

///|
pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"

///|
pub fn[T : TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"

///|
pub impl TEventTarget for EventTarget

///|
extern "js" fn event_target_ffi() -> EventTarget = "() => new EventTarget()"

///|
pub fn EventTarget::new() -> EventTarget {
  event_target_ffi()
}

///|
pub(open) trait TEventTargetAddEventListenerOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TEventTargetAddEventListenerOptionsArg for AddEventListenerOptions with to_js(
  self : AddEventListenerOptions,
) -> JsValue = "%identity"

///|
pub impl TEventTargetAddEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
pub(open) trait TEventTargetRemoveEventListenerOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TEventTargetRemoveEventListenerOptionsArg for EventListenerOptions with to_js(
  self : EventListenerOptions,
) -> JsValue = "%identity"

///|
pub impl TEventTargetRemoveEventListenerOptionsArg for Bool with to_js(
  self : Bool,
) -> JsValue = "%identity"

///|
pub trait TEventTarget: TJsValue {
  add_event_listener(
    self : Self,
    type_ : String,
    callback : EventListener,
    options? : &TEventTargetAddEventListenerOptionsArg,
  ) -> Unit = _
  remove_event_listener(
    self : Self,
    type_ : String,
    callback : EventListener,
    options? : &TEventTargetRemoveEventListenerOptionsArg,
  ) -> Unit = _
  dispatch_event(self : Self, event : &TEvent) -> Bool = _
}

///|
extern "js" fn event_target_add_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "(obj, type_, callback, options) => obj.addEventListener(obj, type_, callback, options)"

///|
impl TEventTarget with add_event_listener(
  self : Self,
  type_ : String,
  callback : EventListener,
  options? : &TEventTargetAddEventListenerOptionsArg = AddEventListenerOptions::empty(),
) -> Unit {
  event_target_add_event_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(callback),
    options.to_js(),
  )
}

///|
extern "js" fn event_target_remove_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "(obj, type_, callback, options) => obj.removeEventListener(obj, type_, callback, options)"

///|
impl TEventTarget with remove_event_listener(
  self : Self,
  type_ : String,
  callback : EventListener,
  options? : &TEventTargetRemoveEventListenerOptionsArg = EventListenerOptions::empty(),
) -> Unit {
  event_target_remove_event_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(callback),
    options.to_js(),
  )
}

///|
extern "js" fn event_target_dispatch_event_ffi(
  obj : JsValue,
  event : JsValue,
) -> Bool = "(obj, event) => obj.dispatchEvent(obj, event)"

///|
impl TEventTarget with dispatch_event(self : Self, event : &TEvent) -> Bool {
  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
}
