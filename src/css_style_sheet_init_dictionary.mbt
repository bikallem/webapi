// Do not edit. This file is generated.
// MoonBit type: CSSStyleSheetInit
// Specifications: cssom.idl

/// [CSSStyleSheetInit](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheetInit)
#external
pub type CSSStyleSheetInit

pub impl TJsValue for CSSStyleSheetInit with to_js(self: CSSStyleSheetInit) -> JsValue = "%identity"

pub(open) trait TCSSStyleSheetInitNewMedia {
  to_js(self : Self) -> JsValue
}

pub impl TCSSStyleSheetInitNewMedia for MediaList with to_js(self : MediaList) -> JsValue = "%identity"

pub impl TCSSStyleSheetInitNewMedia for String with to_js(self : String) -> JsValue = "%identity"

pub fn CSSStyleSheetInit::new(base_url? : String = JsValue::null(), 
media? : &TCSSStyleSheetInitNewMedia = "", 
disabled? : Bool = false) -> CSSStyleSheetInit {
  css_style_sheet_init_ffi(TJsValue::to_js(base_url), media.to_js(), TJsValue::to_js(disabled))
}

pub fn CSSStyleSheetInit::empty() -> CSSStyleSheetInit { css_style_sheet_init_empty_ffi() }