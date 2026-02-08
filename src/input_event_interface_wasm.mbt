///|
fn input_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InputEvent = "webapi_InputEvent" "new"

///|
fn input_event_data_ffi(obj : JsValue) -> JsValue = "webapi_InputEvent" "get_data"

///|
fn input_event_is_composing_ffi(obj : JsValue) -> JsValue = "webapi_InputEvent" "get_isComposing"

///|
fn input_event_input_type_ffi(obj : JsValue) -> JsValue = "webapi_InputEvent" "get_inputType"
