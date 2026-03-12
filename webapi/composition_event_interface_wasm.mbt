fn composition_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> CompositionEvent = "webapi_CompositionEvent" "new"

fn composition_event_data_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CompositionEvent" "get_data"

///|
fn composition_event_data_ffi(obj: JsValue) -> String {
  jsvalue_to_string(composition_event_data_ffi_wasm(obj))
}

fn composition_event_init_composition_event_ffi(obj: JsValue, type_arg: JsValue, bubbles_arg: JsValue, cancelable_arg: JsValue, view_arg: JsValue, data_arg: JsValue) -> Unit = "webapi_CompositionEvent" "initCompositionEvent"