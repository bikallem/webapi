// Do not edit. This file is generated.
// MoonBit type: Event
// Specifications: dom.idl

///|
#external
pub type Event

///|
pub impl TJsValue for Event with to_js(self : Event) -> JsValue = "%identity"

///|
pub fn[T : TEvent] Event::into(self : Event) -> T = "%identity"

///|
pub impl TEvent for Event

///|
extern "js" fn event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> Event = "(type_, event_init_dict) => new Event(type_, event_init_dict)"

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
extern "js" fn event_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl TEvent with type_(self : Self) -> String {
  event_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_target_ffi(obj : JsValue) -> EventTarget = "(obj) => obj.target"

///|
impl TEvent with target(self : Self) -> EventTarget {
  event_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_src_element_ffi(obj : JsValue) -> EventTarget = "(obj) => obj.srcElement"

///|
impl TEvent with src_element(self : Self) -> EventTarget {
  event_src_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_current_target_ffi(obj : JsValue) -> EventTarget = "(obj) => obj.currentTarget"

///|
impl TEvent with current_target(self : Self) -> EventTarget {
  event_current_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_composed_path_ffi(obj : JsValue) -> Array[EventTarget] = "(obj) => obj.composedPath()"

///|
impl TEvent with composed_path(self : Self) -> Array[EventTarget] {
  event_composed_path_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_event_phase_ffi(obj : JsValue) -> UInt = "(obj) => obj.eventPhase"

///|
impl TEvent with event_phase(self : Self) -> UInt {
  event_event_phase_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopPropagation()"

///|
impl TEvent with stop_propagation(self : Self) -> Unit {
  event_stop_propagation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_cancel_bubble_ffi(obj : JsValue) -> Bool = "(obj) => obj.cancelBubble"

///|
impl TEvent with cancel_bubble(self : Self) -> Bool {
  event_cancel_bubble_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_set_cancel_bubble_ffi(
  obj : JsValue,
  cancel_bubble : JsValue,
) -> Unit = "(obj, cancelBubble) => { obj.cancelBubble = cancel_bubble; }"

///|
impl TEvent with set_cancel_bubble(self : Self, cancel_bubble : Bool) -> Unit {
  event_set_cancel_bubble_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cancel_bubble),
  )
}

///|
extern "js" fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopImmediatePropagation()"

///|
impl TEvent with stop_immediate_propagation(self : Self) -> Unit {
  event_stop_immediate_propagation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_bubbles_ffi(obj : JsValue) -> Bool = "(obj) => obj.bubbles"

///|
impl TEvent with bubbles(self : Self) -> Bool {
  event_bubbles_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_cancelable_ffi(obj : JsValue) -> Bool = "(obj) => obj.cancelable"

///|
impl TEvent with cancelable(self : Self) -> Bool {
  event_cancelable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_return_value_ffi(obj : JsValue) -> Bool = "(obj) => obj.returnValue"

///|
impl TEvent with return_value(self : Self) -> Bool {
  event_return_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, returnValue) => { obj.returnValue = return_value; }"

///|
impl TEvent with set_return_value(self : Self, return_value : Bool) -> Unit {
  event_set_return_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(return_value),
  )
}

///|
extern "js" fn event_prevent_default_ffi(obj : JsValue) -> Unit = "(obj) => obj.preventDefault()"

///|
impl TEvent with prevent_default(self : Self) -> Unit {
  event_prevent_default_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_default_prevented_ffi(obj : JsValue) -> Bool = "(obj) => obj.defaultPrevented"

///|
impl TEvent with default_prevented(self : Self) -> Bool {
  event_default_prevented_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_composed_ffi(obj : JsValue) -> Bool = "(obj) => obj.composed"

///|
impl TEvent with composed(self : Self) -> Bool {
  event_composed_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_is_trusted_ffi(obj : JsValue) -> Bool = "(obj) => obj.isTrusted"

///|
impl TEvent with is_trusted(self : Self) -> Bool {
  event_is_trusted_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_time_stamp_ffi(obj : JsValue) -> DOMHighResTimeStamp = "(obj) => obj.timeStamp"

///|
impl TEvent with time_stamp(self : Self) -> DOMHighResTimeStamp {
  event_time_stamp_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable) => obj.initEvent(type_, bubbles, cancelable)"

///|
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
