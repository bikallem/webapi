///|
extern "js" fn event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> Event = "(type_, event_init_dict) => new Event(type_, event_init_dict)"

///|
extern "js" fn event_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn event_type_ffi(obj : JsValue) -> String {
  event_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.target"

///|
fn event_target_ffi(obj : JsValue) -> EventTarget {
  event_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_src_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.srcElement"

///|
fn event_src_element_ffi(obj : JsValue) -> EventTarget {
  event_src_element_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_current_target_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentTarget"

///|
fn event_current_target_ffi(obj : JsValue) -> EventTarget {
  event_current_target_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_composed_path_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.composedPath()"

///|
fn event_composed_path_ffi(obj : JsValue) -> Array[EventTarget] {
  event_composed_path_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_event_phase_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.eventPhase"

///|
fn event_event_phase_ffi(obj : JsValue) -> UInt {
  event_event_phase_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopPropagation()"

///|
extern "js" fn event_cancel_bubble_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cancelBubble"

///|
fn event_cancel_bubble_ffi(obj : JsValue) -> Bool {
  event_cancel_bubble_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_set_cancel_bubble_ffi(
  obj : JsValue,
  cancel_bubble : JsValue,
) -> Unit = "(obj, cancelBubble) => { obj.cancelBubble = cancelBubble; }"

///|
extern "js" fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "(obj) => obj.stopImmediatePropagation()"

///|
extern "js" fn event_bubbles_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
fn event_bubbles_ffi(obj : JsValue) -> Bool {
  event_bubbles_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_cancelable_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
fn event_cancelable_ffi(obj : JsValue) -> Bool {
  event_cancelable_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_return_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.returnValue"

///|
fn event_return_value_ffi(obj : JsValue) -> Bool {
  event_return_value_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, returnValue) => { obj.returnValue = returnValue; }"

///|
extern "js" fn event_prevent_default_ffi(obj : JsValue) -> Unit = "(obj) => obj.preventDefault()"

///|
extern "js" fn event_default_prevented_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.defaultPrevented"

///|
fn event_default_prevented_ffi(obj : JsValue) -> Bool {
  event_default_prevented_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_composed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
fn event_composed_ffi(obj : JsValue) -> Bool {
  event_composed_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_is_trusted_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isTrusted"

///|
fn event_is_trusted_ffi(obj : JsValue) -> Bool {
  event_is_trusted_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_time_stamp_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeStamp"

///|
fn event_time_stamp_ffi(obj : JsValue) -> Double {
  event_time_stamp_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "(obj, type_, bubbles, cancelable) => obj.initEvent(type_, bubbles, cancelable)"
