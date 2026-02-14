///|
extern "js" fn form_data_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  form_data : JsValue,
) -> FormDataEventInit =
  #|(bubbles, cancelable, composed, formData) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (formData !== undefined) obj.formData = formData;
  #|  return obj;
  #|}

///|
extern "js" fn form_data_event_init_empty_ffi() -> FormDataEventInit = "() => {}"

///|
extern "js" fn form_data_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn form_data_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn form_data_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn form_data_event_init_get_form_data_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.formData"

///|
fn form_data_event_init_get_form_data_ffi(obj : JsValue) -> FormData {
  form_data_event_init_get_form_data_ffi_js(obj).unsafe_cast()
}
