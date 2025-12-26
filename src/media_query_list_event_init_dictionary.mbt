// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEventInit
// Specifications: dom.idl, cssom-view.idl

///|
#external
pub type MediaQueryListEventInit

///|
pub impl TJsValue for MediaQueryListEventInit with to_js(
  self : MediaQueryListEventInit,
) -> JsValue = "%identity"

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
pub fn MediaQueryListEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  media? : String = "",
  matches? : Bool = false,
) -> MediaQueryListEventInit {
  media_query_list_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(media),
    TJsValue::to_js(matches),
  )
}

///|
extern "js" fn media_query_list_event_init_empty_ffi() -> MediaQueryListEventInit = "() => {}"

///|
pub fn MediaQueryListEventInit::empty() -> MediaQueryListEventInit {
  media_query_list_event_init_empty_ffi()
}
