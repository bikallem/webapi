// Auto-generated MoonBit bindings for MediaQueryListEventInit dictionary
// Do not edit manually

#external
pub type MediaQueryListEventInit

pub impl TJsValue for MediaQueryListEventInit with to_js(self: MediaQueryListEventInit) -> JsValue = "%identity"


fn media_query_list_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, media : JsValue, matches : JsValue) -> MediaQueryListEventInit = "webapi_MediaQueryListEventInit" "new"


pub fn MediaQueryListEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  media? : CSSOMString? : CSSOMString = "",
  matches? : Bool? : Bool = false) -> MediaQueryListEventInit {
    media_query_list_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(media)
     ,TJsValue::to_js(matches)
    )
}


pub fn MediaQueryListEventInit::empty() -> MediaQueryListEventInit = "webapi_Dictionary" "empty"