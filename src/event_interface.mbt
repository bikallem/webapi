// Do not edit. This file is generated.
// MoonBit type: Event
// Specifications: dom.idl

///|
/// [Event](https://developer.mozilla.org/en-US/docs/Web/API/Event)
#external
pub type Event

///|
pub impl TJsValue for Event with to_js(self : Event) -> JsValue = "%identity"

///|
pub fn[T : TEvent] Event::into(self : Event) -> T = "%identity"

///|
pub impl TEvent for Event

///|
pub fn Event::new(
  type_ : String,
  event_init_dict? : EventInit = EventInit::empty(),
) -> Event {
  event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub const EVENT_NONE : UInt = 0

///|
pub const EVENT_CAPTURING_PHASE : UInt = 1

///|
pub const EVENT_AT_TARGET : UInt = 2

///|
pub const EVENT_BUBBLING_PHASE : UInt = 3

///|
/// [Event](https://developer.mozilla.org/en-US/docs/Web/API/Event) interface.
pub trait TEvent: TJsValue {
  type_(self : Self) -> String = _
  target(self : Self) -> EventTarget = _
  src_element(self : Self) -> EventTarget = _
  current_target(self : Self) -> EventTarget = _
  composed_path(self : Self) -> Array[EventTarget] = _
  event_phase(self : Self) -> UInt = _
  stop_propagation(self : Self) -> Unit = _
  cancel_bubble(self : Self) -> Bool = _
  set_cancel_bubble(self : Self, cancel_bubble : Bool) -> Unit = _
  stop_immediate_propagation(self : Self) -> Unit = _
  bubbles(self : Self) -> Bool = _
  cancelable(self : Self) -> Bool = _
  return_value(self : Self) -> Bool = _
  set_return_value(self : Self, return_value : Bool) -> Unit = _
  prevent_default(self : Self) -> Unit = _
  default_prevented(self : Self) -> Bool = _
  composed(self : Self) -> Bool = _
  is_trusted(self : Self) -> Bool = _
  time_stamp(self : Self) -> DOMHighResTimeStamp = _
  init_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool) -> Unit = _
}

///|
/// [Event.type](https://developer.mozilla.org/en-US/docs/Web/API/Event/type)
impl TEvent with type_(self : Self) -> String {
  event_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.target](https://developer.mozilla.org/en-US/docs/Web/API/Event/target)
impl TEvent with target(self : Self) -> EventTarget {
  event_target_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.srcElement](https://developer.mozilla.org/en-US/docs/Web/API/Event/srcElement)
impl TEvent with src_element(self : Self) -> EventTarget {
  event_src_element_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.currentTarget](https://developer.mozilla.org/en-US/docs/Web/API/Event/currentTarget)
impl TEvent with current_target(self : Self) -> EventTarget {
  event_current_target_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.composedPath](https://developer.mozilla.org/en-US/docs/Web/API/Event/composedPath)
impl TEvent with composed_path(self : Self) -> Array[EventTarget] {
  event_composed_path_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.eventPhase](https://developer.mozilla.org/en-US/docs/Web/API/Event/eventPhase)
impl TEvent with event_phase(self : Self) -> UInt {
  event_event_phase_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.stopPropagation](https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation)
impl TEvent with stop_propagation(self : Self) -> Unit {
  event_stop_propagation_ffi(TJsValue::to_js(self))
}

///|
/// [Event.cancelBubble](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelBubble)
impl TEvent with cancel_bubble(self : Self) -> Bool {
  event_cancel_bubble_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.cancelBubble](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelBubble)
impl TEvent with set_cancel_bubble(self : Self, cancel_bubble : Bool) -> Unit {
  event_set_cancel_bubble_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cancel_bubble),
  )
}

///|
/// [Event.stopImmediatePropagation](https://developer.mozilla.org/en-US/docs/Web/API/Event/stopImmediatePropagation)
impl TEvent with stop_immediate_propagation(self : Self) -> Unit {
  event_stop_immediate_propagation_ffi(TJsValue::to_js(self))
}

///|
/// [Event.bubbles](https://developer.mozilla.org/en-US/docs/Web/API/Event/bubbles)
impl TEvent with bubbles(self : Self) -> Bool {
  event_bubbles_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.cancelable](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelable)
impl TEvent with cancelable(self : Self) -> Bool {
  event_cancelable_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/Event/returnValue)
impl TEvent with return_value(self : Self) -> Bool {
  event_return_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/Event/returnValue)
impl TEvent with set_return_value(self : Self, return_value : Bool) -> Unit {
  event_set_return_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(return_value),
  )
}

///|
/// [Event.preventDefault](https://developer.mozilla.org/en-US/docs/Web/API/Event/preventDefault)
impl TEvent with prevent_default(self : Self) -> Unit {
  event_prevent_default_ffi(TJsValue::to_js(self))
}

///|
/// [Event.defaultPrevented](https://developer.mozilla.org/en-US/docs/Web/API/Event/defaultPrevented)
impl TEvent with default_prevented(self : Self) -> Bool {
  event_default_prevented_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.composed](https://developer.mozilla.org/en-US/docs/Web/API/Event/composed)
impl TEvent with composed(self : Self) -> Bool {
  event_composed_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.isTrusted](https://developer.mozilla.org/en-US/docs/Web/API/Event/isTrusted)
impl TEvent with is_trusted(self : Self) -> Bool {
  event_is_trusted_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.timeStamp](https://developer.mozilla.org/en-US/docs/Web/API/Event/timeStamp)
impl TEvent with time_stamp(self : Self) -> DOMHighResTimeStamp {
  event_time_stamp_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [Event.initEvent](https://developer.mozilla.org/en-US/docs/Web/API/Event/initEvent)
impl TEvent with init_event(
  self : Self,
  type_ : String,
  bubbles? : Bool = false,
  cancelable? : Bool = false,
) -> Unit {
  event_init_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
  )
}
