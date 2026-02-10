///|
extern "js" fn focus_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  related_target : JsValue,
) -> FocusEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, relatedTarget) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  return obj;
  #|}

///|
extern "js" fn focus_event_init_empty_ffi() -> FocusEventInit = "() => {}"
