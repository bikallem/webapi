///|
fn event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> Event = "webapi_Event" "new"

///|
fn event_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Event" "get_type"

///|
fn event_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(event_type_ffi_wasm(obj))
}

///|
fn event_target_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "get_target"

///|
fn event_src_element_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "get_srcElement"

///|
fn event_current_target_ffi(obj : JsValue) -> EventTarget = "webapi_Event" "get_currentTarget"

///|
fn event_composed_path_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Event" "composedPath"

///|
fn event_composed_path_ffi(obj : JsValue) -> Array[EventTarget] {
  event_composed_path_ffi_wasm(obj).to_array()
}

///|
fn event_event_phase_ffi(obj : JsValue) -> UInt = "webapi_Event" "get_eventPhase"

///|
fn event_stop_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopPropagation"

///|
fn event_cancel_bubble_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_cancelBubble"

///|
fn event_set_cancel_bubble_ffi(obj : JsValue, cancel_bubble : JsValue) -> Unit = "webapi_Event" "set_cancelBubble"

///|
fn event_stop_immediate_propagation_ffi(obj : JsValue) -> Unit = "webapi_Event" "stopImmediatePropagation"

///|
fn event_bubbles_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_bubbles"

///|
fn event_cancelable_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_cancelable"

///|
fn event_return_value_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_returnValue"

///|
fn event_set_return_value_ffi(obj : JsValue, return_value : JsValue) -> Unit = "webapi_Event" "set_returnValue"

///|
fn event_prevent_default_ffi(obj : JsValue) -> Unit = "webapi_Event" "preventDefault"

///|
fn event_default_prevented_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_defaultPrevented"

///|
fn event_composed_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_composed"

///|
fn event_is_trusted_ffi(obj : JsValue) -> Bool = "webapi_Event" "get_isTrusted"

///|
fn event_time_stamp_ffi(obj : JsValue) -> DOMHighResTimeStamp = "webapi_Event" "get_timeStamp"

///|
fn event_init_event_ffi(
  obj : JsValue,
  type_ : JsValue,
  bubbles : JsValue,
  cancelable : JsValue,
) -> Unit = "webapi_Event" "initEvent"
