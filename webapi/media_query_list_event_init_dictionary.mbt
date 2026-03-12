// Do not edit. This file is generated.
// MoonBit type: MediaQueryListEventInit
// Specifications: dom.idl, cssom-view.idl

/// [MediaQueryListEventInit](https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListEventInit)
#external
pub type MediaQueryListEventInit

pub impl TJsValue for MediaQueryListEventInit with to_js(self: MediaQueryListEventInit) -> JsValue = "%identity"

pub impl FromJsAny for MediaQueryListEventInit with from_js_any(value : JsAny) -> MediaQueryListEventInit = "%identity"

pub fn MediaQueryListEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
media? : CSSOMString, 
matches? : Bool) -> MediaQueryListEventInit {
  media_query_list_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(media), opt_to_js(matches))
}

pub fn MediaQueryListEventInit::empty() -> MediaQueryListEventInit { media_query_list_event_init_empty_ffi() }

pub fn MediaQueryListEventInit::bubbles(self : MediaQueryListEventInit) -> Bool? {
  media_query_list_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn MediaQueryListEventInit::cancelable(self : MediaQueryListEventInit) -> Bool? {
  media_query_list_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn MediaQueryListEventInit::composed(self : MediaQueryListEventInit) -> Bool? {
  media_query_list_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn MediaQueryListEventInit::media(self : MediaQueryListEventInit) -> CSSOMString? {
  media_query_list_event_init_get_media_ffi(TJsValue::to_js(self)).to_option()
}

pub fn MediaQueryListEventInit::matches(self : MediaQueryListEventInit) -> Bool? {
  media_query_list_event_init_get_matches_ffi(TJsValue::to_js(self)).to_option_prim()
}