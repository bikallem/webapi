// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEventInit
// Specifications: dom.idl, cssom-view.idl

/// [MediaQueryListEventInit](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEventInit)
#external
pub type MediaQueryListEventInit

pub impl TJsValue for MediaQueryListEventInit with to_js(self: MediaQueryListEventInit) -> JsValue = "%identity"

pub fn MediaQueryListEventInit::new(bubbles? : Bool = false, 
cancelable? : Bool = false, 
composed? : Bool = false, 
media? : CSSOMString = "", 
matches? : Bool = false) -> MediaQueryListEventInit {
  media_query_list_event_init_ffi(TJsValue::to_js(bubbles), TJsValue::to_js(cancelable), TJsValue::to_js(composed), TJsValue::to_js(media), TJsValue::to_js(matches))
}

pub fn MediaQueryListEventInit::empty() -> MediaQueryListEventInit { media_query_list_event_init_empty_ffi() }