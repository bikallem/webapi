fn form_data_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, form_data: JsValue) -> FormDataEventInit = "webapi_FormDataEventInit" "new"

fn form_data_event_init_empty_ffi() -> FormDataEventInit = "webapi_Dictionary" "empty"

fn form_data_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_FormDataEventInit" "get_bubbles"

fn form_data_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_FormDataEventInit" "get_cancelable"

fn form_data_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_FormDataEventInit" "get_composed"

fn form_data_event_init_get_form_data_ffi(obj: JsValue) -> FormData = "webapi_FormDataEventInit" "get_formData"