// Do not edit. This file is generated.
// MoonBit type: CSSStyleSheetInit
// Specifications: cssom.idl

///|
/// [CSSStyleSheetInit](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheetInit)
#external
pub type CSSStyleSheetInit

///|
pub impl TJsValue for CSSStyleSheetInit with to_js(self : CSSStyleSheetInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSStyleSheetInit with from_js_any(value : JsAny) -> CSSStyleSheetInit = "%identity"

///|
pub(open) trait TCSSStyleSheetInitNewMedia {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCSSStyleSheetInitNewMedia for MediaList with to_js(self : MediaList) -> JsValue = "%identity"

///|
pub impl TCSSStyleSheetInitNewMedia for String with to_js(self : String) -> JsValue = "%identity"

///|
pub fn CSSStyleSheetInit::new(
  base_url? : String,
  media? : &TCSSStyleSheetInitNewMedia,
  disabled? : Bool,
) -> CSSStyleSheetInit {
  css_style_sheet_init_ffi(
    opt_to_js(base_url),
    match media {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
    opt_to_js(disabled),
  )
}

///|
pub fn CSSStyleSheetInit::empty() -> CSSStyleSheetInit {
  css_style_sheet_init_empty_ffi()
}

///|
pub(open) trait TCSSStyleSheetInitGetMedia {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCSSStyleSheetInitGetMedia for MediaList with to_js(self : MediaList) -> JsValue = "%identity"

///|
pub impl TCSSStyleSheetInitGetMedia for String with to_js(self : String) -> JsValue = "%identity"

///|
#external
pub type CSSStyleSheetInitGetMedia

///|
pub impl TJsValue for CSSStyleSheetInitGetMedia with to_js(
  self : CSSStyleSheetInitGetMedia,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSStyleSheetInitGetMedia with from_js_any(value : JsAny) -> CSSStyleSheetInitGetMedia = "%identity"

///|
pub fn[T : TCSSStyleSheetInitGetMedia + FromJsAny] CSSStyleSheetInitGetMedia::into(
  self : CSSStyleSheetInitGetMedia,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TCSSStyleSheetInitGetMedia] CSSStyleSheetInitGetMedia::from(
  value : T,
) -> CSSStyleSheetInitGetMedia = "%identity"

///|
pub impl TCSSStyleSheetInitGetMedia for CSSStyleSheetInitGetMedia with to_js(
  self : CSSStyleSheetInitGetMedia,
) -> JsValue = "%identity"

///|
pub fn CSSStyleSheetInit::base_url(self : CSSStyleSheetInit) -> String? {
  css_style_sheet_init_get_base_url_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn CSSStyleSheetInit::media(
  self : CSSStyleSheetInit,
) -> CSSStyleSheetInitGetMedia? {
  css_style_sheet_init_get_media_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn CSSStyleSheetInit::disabled(self : CSSStyleSheetInit) -> Bool? {
  css_style_sheet_init_get_disabled_ffi(TJsValue::to_js(self)).to_option_prim()
}
