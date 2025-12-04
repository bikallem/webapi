// Auto-generated MoonBit bindings for EventTarget

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=*]
// interface EventTarget {
//   constructor();
// 
//   undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
//   undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
//   boolean dispatchEvent(Event event);
// };

///|
#external
pub type EventTarget

///|
pub trait TEventTarget: TJsValue {
  add_event_listener(
    self : Self,
    type_ : String,
    callback : EventListener,
    options? : &TAddEventListenerOptionsArg,
  ) -> Unit = _
  remove_event_listener(
    self : Self,
    type_ : String,
    callback : EventListener,
    options? : &TRemoveEventListenerOptionsArg,
  ) -> Unit = _
  dispatch_event(self : Self, event : Event) -> Bool = _
}

///|
pub fn[T : TEventTarget] EventTarget::into(self : EventTarget) -> T = "%identity"

///|
pub impl TEventTarget for EventTarget

///|
pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"

///|
pub fn EventTarget::null() -> EventTarget {
  JsValue::null()
}

///|
pub fn EventTarget::new() -> EventTarget = "webapi_EventTarget" "new"

///|
/// Arg : options
pub(open) trait TAddEventListenerOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TAddEventListenerOptionsArg for AddEventListenerOptions with to_js(
  self : AddEventListenerOptions,
) -> JsValue = "%identity"

///|
pub impl TAddEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
fn event_target_add_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "webapi_EventTarget" "addEventListener"

///|
impl TEventTarget with add_event_listener(
  self : Self,
  type_ : String,
  callback : EventListener,
  options? : &TAddEventListenerOptionsArg = AddEventListenerOptions::empty(),
) -> Unit {
  event_target_add_event_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(callback),
    options.to_js(),
  )
}

///|
/// Arg : options
pub(open) trait TRemoveEventListenerOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TRemoveEventListenerOptionsArg for EventListenerOptions with to_js(
  self : EventListenerOptions,
) -> JsValue = "%identity"

///|
pub impl TRemoveEventListenerOptionsArg for Bool with to_js(self : Bool) -> JsValue = "%identity"

///|
fn event_target_remove_event_listener_ffi(
  obj : JsValue,
  type_ : JsValue,
  callback : JsValue,
  options : JsValue,
) -> Unit = "webapi_EventTarget" "removeEventListener"

///|
impl TEventTarget with remove_event_listener(
  self : Self,
  type_ : String,
  callback : EventListener,
  options? : &TRemoveEventListenerOptionsArg = EventListenerOptions::empty(),
) -> Unit {
  event_target_remove_event_listener_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(callback),
    options.to_js(),
  )
}

///|
fn event_target_dispatch_event_ffi(obj : JsValue, event : JsValue) -> JsValue = "webapi_EventTarget" "dispatchEvent"

///|
impl TEventTarget with dispatch_event(self : Self, event : Event) -> Bool {
  event_target_dispatch_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event)).unsafe_cast()
}
