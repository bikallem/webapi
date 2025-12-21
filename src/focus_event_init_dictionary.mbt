///|
#external
pub type FocusEventInit

///|
pub impl TJsValue for FocusEventInit with to_js(self : FocusEventInit) -> JsValue = "%identity"

///|
extern "js" fn focus_event_init_ffi(
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  related_target : JsValue,
) -> FocusEventInit =
  #|(view, detail, which, relatedTarget) => {
  #|  const obj = {};
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  return obj;
  #|}

///|
pub fn FocusEventInit::new(
  view? : &TWindow = JsValue::null(),
  detail? : Int = 0,
  which? : UInt = 0,
  related_target? : &TEventTarget = JsValue::null(),
) -> FocusEventInit {
  focus_event_init_ffi(
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(related_target),
  )
}

///|
extern "js" fn focus_event_init_empty_ffi() -> FocusEventInit = "() => {}"

///|
pub fn FocusEventInit::empty() -> FocusEventInit {
  focus_event_init_empty_ffi()
}
