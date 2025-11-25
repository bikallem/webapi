///| Generated WebIDL bindings
///| DO NOT EDIT - auto-generated from WebIDL

///| Event interface

#external
pub type Event

pub impl TJsValue for Event with to_js(self : Event) -> JsValue = "%identity"

pub trait TEvent: TJsValue {
  type_(self : Self) -> String = _
  target(self : Self) -> EventTarget = _
  src_element(self : Self) -> EventTarget = _
  current_target(self : Self) -> EventTarget = _
  composed_path(self : Self) -> Array[EventTarget] = _
  event_phase(self : Self) -> Int = _
  stop_propagation(self : Self) -> Unit = _
  cancel_bubble(self : Self) -> Bool = _
  set_cancel_bubble(self : Self, value : Bool) -> Unit = _
  stop_immediate_propagation(self : Self) -> Unit = _
  bubbles(self : Self) -> Bool = _
  cancelable(self : Self) -> Bool = _
  return_value(self : Self) -> Bool = _
  set_return_value(self : Self, value : Bool) -> Unit = _
  prevent_default(self : Self) -> Unit = _
  default_prevented(self : Self) -> Bool = _
  composed(self : Self) -> Bool = _
  is_trusted(self : Self) -> Bool = _
  time_stamp(self : Self) -> DOMHighResTimeStamp = _
  init_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool) -> Unit = _
}

pub impl TEvent for Event

fn type__ffi(obj : JsValue) -> String = "webapi_Event" "type"

impl TEvent with type_(self : Self) -> String {
  type__ffi(self.to_js())
}

fn target_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "target"

impl TEvent with target(self : Self) -> EventTarget {
  target_ffi(self.to_js())
}

fn src_element_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "srcElement"

impl TEvent with src_element(self : Self) -> EventTarget {
  src_element_ffi(self.to_js())
}

fn current_target_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "currentTarget"

impl TEvent with current_target(self : Self) -> EventTarget {
  current_target_ffi(self.to_js())
}

fn composed_path_ffi(obj : JsValue) -> Array[EventTarget] = "webapi_Event" "composedPath"

impl TEvent with composed_path(self : Self) -> Array[EventTarget] {
  composed_path_ffi(self.to_js())
}

fn event_phase_ffi(obj : JsValue) -> Int = "webapi_Event" "eventPhase"

impl TEvent with event_phase(self : Self) -> Int {
  event_phase_ffi(self.to_js())
}

fn stop_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopPropagation"

impl TEvent with stop_propagation(self : Self) -> Unit {
  stop_propagation_ffi(self.to_js())
}

fn cancel_bubble_ffi(obj : JsValue) -> Bool = "webapi_Event" "cancelBubble"

impl TEvent with cancel_bubble(self : Self) -> Bool {
  cancel_bubble_ffi(self.to_js())
}

fn set_cancel_bubble_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_Event" "set_cancelBubble"

impl TEvent with set_cancel_bubble(self : Self, value : Bool) -> Unit {
  set_cancel_bubble_ffi(self.to_js(), value)
}

fn stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopImmediatePropagation"

impl TEvent with stop_immediate_propagation(self : Self) -> Unit {
  stop_immediate_propagation_ffi(self.to_js())
}

fn bubbles_ffi(obj : JsValue) -> Bool = "webapi_Event" "bubbles"

impl TEvent with bubbles(self : Self) -> Bool {
  bubbles_ffi(self.to_js())
}

fn cancelable_ffi(obj : JsValue) -> Bool = "webapi_Event" "cancelable"

impl TEvent with cancelable(self : Self) -> Bool {
  cancelable_ffi(self.to_js())
}

fn return_value_ffi(obj : JsValue) -> Bool = "webapi_Event" "returnValue"

impl TEvent with return_value(self : Self) -> Bool {
  return_value_ffi(self.to_js())
}

fn set_return_value_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_Event" "set_returnValue"

impl TEvent with set_return_value(self : Self, value : Bool) -> Unit {
  set_return_value_ffi(self.to_js(), value)
}

fn prevent_default_ffi(obj : JsValue) -> Unit = "webapi_Event" "preventDefault"

impl TEvent with prevent_default(self : Self) -> Unit {
  prevent_default_ffi(self.to_js())
}

fn default_prevented_ffi(obj : JsValue) -> Bool = "webapi_Event" "defaultPrevented"

impl TEvent with default_prevented(self : Self) -> Bool {
  default_prevented_ffi(self.to_js())
}

fn composed_ffi(obj : JsValue) -> Bool = "webapi_Event" "composed"

impl TEvent with composed(self : Self) -> Bool {
  composed_ffi(self.to_js())
}

fn is_trusted_ffi(obj : JsValue) -> Bool = "webapi_Event" "isTrusted"

impl TEvent with is_trusted(self : Self) -> Bool {
  is_trusted_ffi(self.to_js())
}

fn time_stamp_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_Event" "timeStamp"

impl TEvent with time_stamp(self : Self) -> DOMHighResTimeStamp {
  time_stamp_ffi(self.to_js())
}

fn init_event_ffi(obj : JsValue, type_ : String, bubbles : Bool, cancelable : Bool) -> Unit = "webapi_Event" "initEvent"

impl TEvent with init_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool) -> Unit {
  init_event_ffi(self.to_js(), type_, bubbles.or(false), cancelable.or(false))
}

///| EventInit dictionary

#external
pub type EventInit

fn event_init_ffi(bubbles : Bool, cancelable : Bool, composed : Bool) -> EventInit = "webapi_EventInit" "new"

pub fn event_init(bubbles? : Bool = false, cancelable? : Bool = false, composed? : Bool = false) -> EventInit {
  event_init_ffi(bubbles, cancelable, composed)
}

pub fn default_event_init() -> EventInit = "webapi_Dictionary" "empty"

///| EventTarget interface

#external
pub type EventTarget

pub impl TJsValue for EventTarget with to_js(self : EventTarget) -> JsValue = "%identity"

pub trait TEventTarget: TJsValue {
  add_event_listener(self : Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit = _
  remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit = _
  dispatch_event(self : Self, event : Event) -> Bool = _
}

pub impl TEventTarget for EventTarget

fn add_event_listener_ffi(obj : JsValue, type_ : String, callback : EventListener, options : JsValue) -> Unit = "webapi_EventTarget" "addEventListener"

impl TEventTarget with add_event_listener(self : Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit {
  add_event_listener_ffi(self.to_js(), type_, callback, options.or(None))
}

fn remove_event_listener_ffi(obj : JsValue, type_ : String, callback : EventListener, options : JsValue) -> Unit = "webapi_EventTarget" "removeEventListener"

impl TEventTarget with remove_event_listener(self : Self, type_ : String, callback : EventListener, options? : JsValue) -> Unit {
  remove_event_listener_ffi(self.to_js(), type_, callback, options.or(None))
}

fn dispatch_event_ffi(obj : JsValue, event : Event) -> Bool = "webapi_EventTarget" "dispatchEvent"

impl TEventTarget with dispatch_event(self : Self, event : Event) -> Bool {
  dispatch_event_ffi(self.to_js(), event)
}
