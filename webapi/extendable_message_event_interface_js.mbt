extern "js" fn extendable_message_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ExtendableMessageEvent = "(type_, event_init_dict) => new ExtendableMessageEvent(type_, event_init_dict)"

extern "js" fn extendable_message_event_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.data"

///|
fn extendable_message_event_data_ffi(obj: JsValue) -> JsValue {
  extendable_message_event_data_ffi_js(obj).unsafe_cast()
}

extern "js" fn extendable_message_event_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.origin"

///|
fn extendable_message_event_origin_ffi(obj: JsValue) -> String {
  extendable_message_event_origin_ffi_js(obj).unsafe_cast()
}

extern "js" fn extendable_message_event_last_event_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lastEventId"

///|
fn extendable_message_event_last_event_id_ffi(obj: JsValue) -> String {
  extendable_message_event_last_event_id_ffi_js(obj).unsafe_cast()
}

extern "js" fn extendable_message_event_source_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.source"

///|
fn extendable_message_event_source_ffi(obj: JsValue) -> ExtendableMessageEventSource {
  extendable_message_event_source_ffi_js(obj).unsafe_cast()
}

extern "js" fn extendable_message_event_ports_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ports"

///|
fn extendable_message_event_ports_ffi(obj: JsValue) -> Array[MessagePort] {
  extendable_message_event_ports_ffi_js(obj).unsafe_cast()
}