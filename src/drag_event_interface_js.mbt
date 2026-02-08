///|
extern "js" fn drag_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> DragEvent = "(type_, event_init_dict) => new DragEvent(type_, event_init_dict)"

///|
extern "js" fn drag_event_data_transfer_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dataTransfer"
