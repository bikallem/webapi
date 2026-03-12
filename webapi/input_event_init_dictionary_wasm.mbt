fn input_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, view: JsValue, detail: JsValue, which: JsValue, data: JsValue, is_composing: JsValue, input_type: JsValue) -> InputEventInit = "webapi_InputEventInit" "new"

fn input_event_init_empty_ffi() -> InputEventInit = "webapi_Dictionary" "empty"

fn input_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_bubbles"

fn input_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_cancelable"

fn input_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_composed"

fn input_event_init_get_view_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_view"

fn input_event_init_get_detail_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_detail"

fn input_event_init_get_which_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_which"

fn input_event_init_get_data_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_data"

fn input_event_init_get_is_composing_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_isComposing"

fn input_event_init_get_input_type_ffi(obj: JsValue) -> JsValue = "webapi_InputEventInit" "get_inputType"