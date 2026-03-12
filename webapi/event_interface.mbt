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
pub impl FromJsAny for Event with from_js_any(value : JsAny) -> Event = "%identity"

///|
pub fn[T : TEvent] Event::into(self : Event) -> T = "%identity"

///|
pub impl TEvent for Event

///|
pub fn Event::new(type_ : String, event_init_dict? : EventInit) -> Event {
  event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
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
  event_type_ffi(TJsValue::to_js(self))
}

///|
/// [Event.target](https://developer.mozilla.org/en-US/docs/Web/API/Event/target)
impl TEvent with target(self : Self) -> EventTarget {
  event_target_ffi(TJsValue::to_js(self))
}

///|
/// [Event.srcElement](https://developer.mozilla.org/en-US/docs/Web/API/Event/srcElement)
impl TEvent with src_element(self : Self) -> EventTarget {
  event_src_element_ffi(TJsValue::to_js(self))
}

///|
/// [Event.currentTarget](https://developer.mozilla.org/en-US/docs/Web/API/Event/currentTarget)
impl TEvent with current_target(self : Self) -> EventTarget {
  event_current_target_ffi(TJsValue::to_js(self))
}

///|
/// [Event.composedPath](https://developer.mozilla.org/en-US/docs/Web/API/Event/composedPath)
impl TEvent with composed_path(self : Self) -> Array[EventTarget] {
  event_composed_path_ffi(TJsValue::to_js(self))
}

///|
/// [Event.eventPhase](https://developer.mozilla.org/en-US/docs/Web/API/Event/eventPhase)
impl TEvent with event_phase(self : Self) -> UInt {
  event_event_phase_ffi(TJsValue::to_js(self))
}

///|
/// [Event.stopPropagation](https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation)
impl TEvent with stop_propagation(self : Self) -> Unit {
  event_stop_propagation_ffi(TJsValue::to_js(self))
}

///|
/// [Event.cancelBubble](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelBubble)
impl TEvent with cancel_bubble(self : Self) -> Bool {
  event_cancel_bubble_ffi(TJsValue::to_js(self))
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
  event_bubbles_ffi(TJsValue::to_js(self))
}

///|
/// [Event.cancelable](https://developer.mozilla.org/en-US/docs/Web/API/Event/cancelable)
impl TEvent with cancelable(self : Self) -> Bool {
  event_cancelable_ffi(TJsValue::to_js(self))
}

///|
/// [Event.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/Event/returnValue)
impl TEvent with return_value(self : Self) -> Bool {
  event_return_value_ffi(TJsValue::to_js(self))
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
  event_default_prevented_ffi(TJsValue::to_js(self))
}

///|
/// [Event.composed](https://developer.mozilla.org/en-US/docs/Web/API/Event/composed)
impl TEvent with composed(self : Self) -> Bool {
  event_composed_ffi(TJsValue::to_js(self))
}

///|
/// [Event.isTrusted](https://developer.mozilla.org/en-US/docs/Web/API/Event/isTrusted)
impl TEvent with is_trusted(self : Self) -> Bool {
  event_is_trusted_ffi(TJsValue::to_js(self))
}

///|
/// [Event.timeStamp](https://developer.mozilla.org/en-US/docs/Web/API/Event/timeStamp)
impl TEvent with time_stamp(self : Self) -> DOMHighResTimeStamp {
  event_time_stamp_ffi(TJsValue::to_js(self))
}

///|
/// [Event.initEvent](https://developer.mozilla.org/en-US/docs/Web/API/Event/initEvent)
impl TEvent with init_event(
  self : Self,
  type_ : String,
  bubbles? : Bool,
  cancelable? : Bool,
) -> Unit {
  event_init_event_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    opt_to_js(bubbles),
    opt_to_js(cancelable),
  )
}

///|
#cfg(target="js")
extern "js" fn event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> Event = "(type_, event_init_dict) => new Event(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn event_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn event_type_ffi(obj : JsValue) -> String {
  event_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn event_target_ffi(obj : JsValue) -> EventTarget {
  event_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_src_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.srcElement"

///|
#cfg(target="js")
fn event_src_element_ffi(obj : JsValue) -> EventTarget {
  event_src_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_current_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentTarget"

///|
#cfg(target="js")
fn event_current_target_ffi(obj : JsValue) -> EventTarget {
  event_current_target_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_composed_path_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.composedPath()"

///|
#cfg(target="js")
fn event_composed_path_ffi(obj : JsValue) -> Array[EventTarget] {
  event_composed_path_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_event_phase_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.eventPhase"

///|
#cfg(target="js")
fn event_event_phase_ffi(obj : JsValue) -> UInt {
  event_event_phase_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopPropagation()"

///|
#cfg(target="js")
extern "js" fn event_cancel_bubble_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cancelBubble"

///|
#cfg(target="js")
fn event_cancel_bubble_ffi(obj : JsValue) -> Bool {
  event_cancel_bubble_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_set_cancel_bubble_ffi(
  obj : JsValue,
  cancel_bubble : JsValue,
) -> Unit = "(obj, cancelBubble) => { obj.cancelBubble = cancelBubble; }"

///|
#cfg(target="js")
extern "js" fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopImmediatePropagation()"

///|
#cfg(target="js")
extern "js" fn event_bubbles_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
fn event_bubbles_ffi(obj : JsValue) -> Bool {
  event_bubbles_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_cancelable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
fn event_cancelable_ffi(obj : JsValue) -> Bool {
  event_cancelable_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_return_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.returnValue"

///|
#cfg(target="js")
fn event_return_value_ffi(obj : JsValue) -> Bool {
  event_return_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"

///|
#cfg(target="js")
extern "js" fn event_prevent_default_ffi(obj : JsValue) -> Unit = "(obj) => obj.preventDefault()"

///|
#cfg(target="js")
extern "js" fn event_default_prevented_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.defaultPrevented"

///|
#cfg(target="js")
fn event_default_prevented_ffi(obj : JsValue) -> Bool {
  event_default_prevented_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_composed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
fn event_composed_ffi(obj : JsValue) -> Bool {
  event_composed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_is_trusted_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isTrusted"

///|
#cfg(target="js")
fn event_is_trusted_ffi(obj : JsValue) -> Bool {
  event_is_trusted_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_time_stamp_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeStamp"

///|
#cfg(target="js")
fn event_time_stamp_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  event_time_stamp_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable) => obj.initEvent(type_, bubbles, cancelable)"

///|
#cfg(target="wasm-gc")
fn event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> Event = "webapi_Event" "new"

///|
#cfg(target="wasm-gc")
fn event_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Event" "get_type"

///|
#cfg(target="wasm-gc")
fn event_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(event_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn event_target_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "get_target"

///|
#cfg(target="wasm-gc")
fn event_src_element_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "get_srcElement"

///|
#cfg(target="wasm-gc")
fn event_current_target_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "get_currentTarget"

///|
#cfg(target="wasm-gc")
fn event_composed_path_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Event" "composedPath"

///|
#cfg(target="wasm-gc")
fn event_composed_path_ffi(obj : JsValue) -> Array[EventTarget] {
  event_composed_path_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn event_event_phase_ffi(obj : JsValue) -> UInt = "webapi_Event" "get_eventPhase"

///|
#cfg(target="wasm-gc")
fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopPropagation"

///|
#cfg(target="wasm-gc")
fn event_cancel_bubble_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_cancelBubble"

///|
#cfg(target="wasm-gc")
fn event_set_cancel_bubble_ffi(obj : JsValue, cancel_bubble : JsValue) -> Unit = "webapi_Event" "set_cancelBubble"

///|
#cfg(target="wasm-gc")
fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopImmediatePropagation"

///|
#cfg(target="wasm-gc")
fn event_bubbles_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn event_cancelable_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn event_return_value_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_returnValue"

///|
#cfg(target="wasm-gc")
fn event_set_return_value_ffi(obj : JsValue, return_value : JsValue) -> Unit = "webapi_Event" "set_returnValue"

///|
#cfg(target="wasm-gc")
fn event_prevent_default_ffi(obj : JsValue) -> Unit = "webapi_Event" "preventDefault"

///|
#cfg(target="wasm-gc")
fn event_default_prevented_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_defaultPrevented"

///|
#cfg(target="wasm-gc")
fn event_composed_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_composed"

///|
#cfg(target="wasm-gc")
fn event_is_trusted_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_isTrusted"

///|
#cfg(target="wasm-gc")
fn event_time_stamp_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_Event" "get_timeStamp"

///|
#cfg(target="wasm-gc")
fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "webapi_Event" "initEvent"
