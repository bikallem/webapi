///|
fn drag_event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> DragEvent = "webapi_DragEvent" "new"

///|
fn drag_event_data_transfer_ffi(obj : JsValue) -> JsValue = "webapi_DragEvent" "get_dataTransfer"
