///|
extern "js" fn media_query_list_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  media : JsValue,
  matches : JsValue,
) -> MediaQueryListEventInit =
  #|(bubbles, cancelable, composed, media, matches) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (media !== undefined) obj.media = media;
  #|  if (matches !== undefined) obj.matches = matches;
  #|  return obj;
  #|}

///|
extern "js" fn media_query_list_event_init_empty_ffi() -> MediaQueryListEventInit = "() => {}"
