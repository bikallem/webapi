extern "js" fn form_data_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, form_data: JsValue) -> FormDataEventInit = 
#|(bubbles, cancelable, composed, formData) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (formData !== undefined) obj.formData = formData;
#|  return obj;
#|}

extern "js" fn form_data_event_init_empty_ffi() -> FormDataEventInit = "() => {}"