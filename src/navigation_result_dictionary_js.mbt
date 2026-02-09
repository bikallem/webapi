///|
extern "js" fn navigation_result_ffi(
  committed : JsValue,
  finished : JsValue,
) -> NavigationResult =
  #|(committed, finished) => {
  #|  const obj = {};
  #|  if (committed !== undefined) obj.committed = committed;
  #|  if (finished !== undefined) obj.finished = finished;
  #|  return obj;
  #|}

///|
extern "js" fn navigation_result_empty_ffi() -> NavigationResult = "() => {}"
