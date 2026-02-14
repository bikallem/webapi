// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEventInit
// Specifications: dom.idl, cssom-view.idl

///|
/// [MediaQueryListEventInit](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEventInit)
#external
pub type MediaQueryListEventInit

///|
pub impl TJsValue for MediaQueryListEventInit with to_js(
  self : MediaQueryListEventInit,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for MediaQueryListEventInit with from_js_any(value : JsAny) -> MediaQueryListEventInit = "%identity"

///|
pub fn MediaQueryListEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  media? : CSSOMString = "",
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
pub fn MediaQueryListEventInit::empty() -> MediaQueryListEventInit {
  media_query_list_event_init_empty_ffi()
}

///|
pub fn MediaQueryListEventInit::bubbles(
  self : MediaQueryListEventInit,
) -> Bool? {
  let result = media_query_list_event_init_get_bubbles_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MediaQueryListEventInit::cancelable(
  self : MediaQueryListEventInit,
) -> Bool? {
  let result = media_query_list_event_init_get_cancelable_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MediaQueryListEventInit::composed(
  self : MediaQueryListEventInit,
) -> Bool? {
  let result = media_query_list_event_init_get_composed_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn MediaQueryListEventInit::media(
  self : MediaQueryListEventInit,
) -> CSSOMString? {
  let result = media_query_list_event_init_get_media_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn MediaQueryListEventInit::matches(
  self : MediaQueryListEventInit,
) -> Bool? {
  let result = media_query_list_event_init_get_matches_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
