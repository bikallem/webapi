// Auto-generated MoonBit bindings for Event

// Do not edit manually

//
// WebIDL Interface:
// // GENERATED CONTENT - DO NOT EDIT
// // Content was automatically extracted by Reffy into webref
// // (https://github.com/w3c/webref)
// // Source: DOM Standard (https://dom.spec.whatwg.org/)
// 
// [Exposed=*]
// interface Event {
//   constructor(DOMString type, optional EventInit eventInitDict = {});
// 
//   readonly attribute DOMString type;
//   readonly attribute EventTarget? target;
//   readonly attribute EventTarget? srcElement; // legacy
//   readonly attribute EventTarget? currentTarget;
//   sequence<EventTarget> composedPath();
// 
//   const unsigned short NONE = 0;
//   const unsigned short CAPTURING_PHASE = 1;
//   const unsigned short AT_TARGET = 2;
//   const unsigned short BUBBLING_PHASE = 3;
//   readonly attribute unsigned short eventPhase;
// 
//   undefined stopPropagation();
//            attribute boolean cancelBubble; // legacy alias of .stopPropagation()
//   undefined stopImmediatePropagation();
// 
//   readonly attribute boolean bubbles;
//   readonly attribute boolean cancelable;
//            attribute boolean returnValue;  // legacy
//   undefined preventDefault();
//   readonly attribute boolean defaultPrevented;
//   readonly attribute boolean composed;
// 
//   [LegacyUnforgeable] readonly attribute boolean isTrusted;
//   readonly attribute DOMHighResTimeStamp timeStamp;
// 
//   undefined initEvent(DOMString type, optional boolean bubbles = false, optional boolean cancelable = false); // legacy
// };

///|
#external
pub type Event

///|
pub trait TEvent: TJsValue {
  type_(self : Self) -> String = _
  target(self : Self) -> EventTarget? = _
  src_element(self : Self) -> EventTarget? = _
  current_target(self : Self) -> EventTarget? = _
  event_phase(self : Self) -> Int = _
  cancel_bubble(self : Self) -> Bool = _
  set_cancel_bubble(self : Self, value : Bool) -> Unit = _
  bubbles(self : Self) -> Bool = _
  cancelable(self : Self) -> Bool = _
  return_value(self : Self) -> Bool = _
  set_return_value(self : Self, value : Bool) -> Unit = _
  default_prevented(self : Self) -> Bool = _
  composed(self : Self) -> Bool = _
  is_trusted(self : Self) -> Bool = _
  time_stamp(self : Self) -> Double = _
  composed_path(self : Self) -> Array[EventTarget] = _
  stop_propagation(self : Self) -> Unit = _
  stop_immediate_propagation(self : Self) -> Unit = _
  prevent_default(self : Self) -> Unit = _
  init_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool) -> Unit = _
}

///|
pub impl TEvent for Event

///|
pub impl TJsValue for Event with to_js(self : Event) -> JsValue = "%identity"

///|
fn event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> Event = "webapi_Event" "new"

///|
pub fn Event::new(
  type_ : String,
  event_init_dict? : EventInit = EventInit::empty(),
) -> Event {
  event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn event_composed_path_ffi(obj : JsValue) -> JsValue = "webapi_Event" "composedPath"

///|
impl TEvent with composed_path(self : Self) -> Array[EventTarget] {
  event_composed_path_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopPropagation"

///|
impl TEvent with stop_propagation(self : Self) -> Unit {
  event_stop_propagation_ffi(TJsValue::to_js(self))
}

///|
fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopImmediatePropagation"

///|
impl TEvent with stop_immediate_propagation(self : Self) -> Unit {
  event_stop_immediate_propagation_ffi(TJsValue::to_js(self))
}

///|
fn event_prevent_default_ffi(obj : JsValue) -> Unit = "webapi_Event" "preventDefault"

///|
impl TEvent with prevent_default(self : Self) -> Unit {
  event_prevent_default_ffi(TJsValue::to_js(self))
}

///|
fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "webapi_Event" "initEvent"

///|
impl TEvent with init_event(
  self : Self,
  type_ : String,
  bubbles? : Bool,
  cancelable? : Bool,
) -> Unit {
  let bubbles_js = opt_to_js(bubbles)
  let cancelable_js = opt_to_js(cancelable)
  event_init_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    bubbles_js,
    cancelable_js,
  )
}

///|
fn event_type_ffi(obj : JsValue) -> String = "webapi_Event" "type"

///|
impl TEvent with type_(self : Self) -> String {
  event_type_ffi(self.to_js())
}

///|
fn event_target_ffi(obj : JsValue) -> JsValue = "webapi_Event" "target"

///|
impl TEvent with target(self : Self) -> EventTarget? {
  event_target_ffi(self.to_js()).as_option()
}

///|
fn event_src_element_ffi(obj : JsValue) -> JsValue = "webapi_Event" "srcElement"

///|
impl TEvent with src_element(self : Self) -> EventTarget? {
  event_src_element_ffi(self.to_js()).as_option()
}

///|
fn event_current_target_ffi(obj : JsValue) -> JsValue = "webapi_Event" "currentTarget"

///|
impl TEvent with current_target(self : Self) -> EventTarget? {
  event_current_target_ffi(self.to_js()).as_option()
}

///|
fn event_event_phase_ffi(obj : JsValue) -> Int = "webapi_Event" "eventPhase"

///|
impl TEvent with event_phase(self : Self) -> Int {
  event_event_phase_ffi(self.to_js())
}

///|
fn event_cancel_bubble_ffi(obj : JsValue) -> Bool = "webapi_Event" "cancelBubble"

///|
impl TEvent with cancel_bubble(self : Self) -> Bool {
  event_cancel_bubble_ffi(self.to_js())
}

///|
fn event_set_cancel_bubble_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_Event" "set_cancelBubble"

///|
impl TEvent with set_cancel_bubble(self : Self, value : Bool) -> Unit {
  event_set_cancel_bubble_ffi(self.to_js(), value)
}

///|
fn event_bubbles_ffi(obj : JsValue) -> Bool = "webapi_Event" "bubbles"

///|
impl TEvent with bubbles(self : Self) -> Bool {
  event_bubbles_ffi(self.to_js())
}

///|
fn event_cancelable_ffi(obj : JsValue) -> Bool = "webapi_Event" "cancelable"

///|
impl TEvent with cancelable(self : Self) -> Bool {
  event_cancelable_ffi(self.to_js())
}

///|
fn event_return_value_ffi(obj : JsValue) -> Bool = "webapi_Event" "returnValue"

///|
impl TEvent with return_value(self : Self) -> Bool {
  event_return_value_ffi(self.to_js())
}

///|
fn event_set_return_value_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_Event" "set_returnValue"

///|
impl TEvent with set_return_value(self : Self, value : Bool) -> Unit {
  event_set_return_value_ffi(self.to_js(), value)
}

///|
fn event_default_prevented_ffi(obj : JsValue) -> Bool = "webapi_Event" "defaultPrevented"

///|
impl TEvent with default_prevented(self : Self) -> Bool {
  event_default_prevented_ffi(self.to_js())
}

///|
fn event_composed_ffi(obj : JsValue) -> Bool = "webapi_Event" "composed"

///|
impl TEvent with composed(self : Self) -> Bool {
  event_composed_ffi(self.to_js())
}

///|
fn event_is_trusted_ffi(obj : JsValue) -> Bool = "webapi_Event" "isTrusted"

///|
impl TEvent with is_trusted(self : Self) -> Bool {
  event_is_trusted_ffi(self.to_js())
}

///|
fn event_time_stamp_ffi(obj : JsValue) -> Double = "webapi_Event" "timeStamp"

///|
impl TEvent with time_stamp(self : Self) -> Double {
  event_time_stamp_ffi(self.to_js())
}
