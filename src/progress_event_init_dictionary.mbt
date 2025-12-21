///|
#external
pub type ProgressEventInit

///|
pub impl TJsValue for ProgressEventInit with to_js(self : ProgressEventInit) -> JsValue = "%identity"

///|
extern "js" fn progress_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  length_computable : JsValue,
  loaded : JsValue,
  total : JsValue,
) -> ProgressEventInit =
  #|(bubbles, cancelable, composed, lengthComputable, loaded, total) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (lengthComputable !== undefined) obj.lengthComputable = lengthComputable;
  #|  if (loaded !== undefined) obj.loaded = loaded;
  #|  if (total !== undefined) obj.total = total;
  #|  return obj;
  #|}

///|
pub fn ProgressEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  length_computable? : Bool = false,
  loaded? : Double = 0,
  total? : Double = 0,
) -> ProgressEventInit {
  progress_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(length_computable),
    TJsValue::to_js(loaded),
    TJsValue::to_js(total),
  )
}

///|
extern "js" fn progress_event_init_empty_ffi() -> ProgressEventInit = "() => {}"

///|
pub fn ProgressEventInit::empty() -> ProgressEventInit {
  progress_event_init_empty_ffi()
}
