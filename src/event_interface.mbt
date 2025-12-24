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
  composed_path(self : Self) -> Array[EventTarget] = _
  stop_propagation(self : Self) -> Unit = _
  stop_immediate_propagation(self : Self) -> Unit = _
  prevent_default(self : Self) -> Unit = _
  init_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool) -> Unit = _
}

///|
extern "js" fn event_composed_path_ffi(obj : JsValue) -> Array[EventTarget] = "(obj) => obj.composedPath(obj)"

///|
impl TEvent with composed_path(self : Self) -> Array[EventTarget] {
  event_composed_path_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopPropagation(obj)"

///|
impl TEvent with stop_propagation(self : Self) -> Unit {
  event_stop_propagation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopImmediatePropagation(obj)"

///|
impl TEvent with stop_immediate_propagation(self : Self) -> Unit {
  event_stop_immediate_propagation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_prevent_default_ffi(obj : JsValue) -> Unit = "(obj) => obj.preventDefault(obj)"

///|
impl TEvent with prevent_default(self : Self) -> Unit {
  event_prevent_default_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable) => obj.initEvent(obj, type_, bubbles, cancelable)"

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
