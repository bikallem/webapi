// Auto-generated MoonBit bindings for MediaQueryListEventInit dictionary

// Do not edit manually

///|
#external
pub type MediaQueryListEventInit

///|
pub impl TJsValue for MediaQueryListEventInit with to_js(self : MediaQueryListEventInit) -> JsValue = "%identity"

///|
fn media_query_list_event_init_ffi(media : JsValue, matches : JsValue) -> MediaQueryListEventInit = "webapi_MediaQueryListEventInit" "new"

///|
pub fn MediaQueryListEventInit::new(
  media? : JsValue,
  matches? : Bool = false
) -> MediaQueryListEventInit {
  let media_js = opt_to_js(media)
  media_query_list_event_init_ffi(media_js, TJsValue::to_js(matches))
}

///|
pub fn MediaQueryListEventInit::empty() -> MediaQueryListEventInit = "webapi_Dictionary" "empty"