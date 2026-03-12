fn extendable_message_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ExtendableMessageEvent = "webapi_ExtendableMessageEvent" "new"

fn extendable_message_event_data_ffi(obj: JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_data"

fn extendable_message_event_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_origin"

///|
fn extendable_message_event_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(extendable_message_event_origin_ffi_wasm(obj))
}

fn extendable_message_event_last_event_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_lastEventId"

///|
fn extendable_message_event_last_event_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(extendable_message_event_last_event_id_ffi_wasm(obj))
}

fn extendable_message_event_source_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ExtendableMessageEvent" "get_source"

///|
fn extendable_message_event_source_ffi(obj: JsValue) -> ExtendableMessageEventSource {
  extendable_message_event_source_ffi_wasm(obj).unsafe_cast()
}

fn extendable_message_event_ports_ffi_wasm(obj: JsValue) -> JsArray = "webapi_ExtendableMessageEvent" "get_ports"

///|
fn extendable_message_event_ports_ffi(obj: JsValue) -> Array[MessagePort] {
  extendable_message_event_ports_ffi_wasm(obj).to_array()
}