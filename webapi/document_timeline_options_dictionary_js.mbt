///|
extern "js" fn document_timeline_options_ffi(
  origin_time : JsValue,
) -> DocumentTimelineOptions =
  #|(originTime) => {
  #|  const obj = {};
  #|  if (originTime !== undefined) obj.originTime = originTime;
  #|  return obj;
  #|}

///|
extern "js" fn document_timeline_options_empty_ffi() -> DocumentTimelineOptions = "() => {}"

///|
extern "js" fn document_timeline_options_get_origin_time_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.originTime"
