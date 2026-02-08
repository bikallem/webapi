///|
extern "js" fn input_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InputEvent = "(type_, event_init_dict) => new InputEvent(type_, event_init_dict)"

///|
extern "js" fn input_event_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
extern "js" fn input_event_is_composing_ffi(obj : JsValue) -> JsValue = "(obj) => obj.isComposing"

///|
extern "js" fn input_event_input_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.inputType"
