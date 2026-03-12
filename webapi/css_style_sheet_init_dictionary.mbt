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
pub(open) trait TCSSStyleSheetInitNewMedia: TJsValue {}

///|
pub impl TCSSStyleSheetInitNewMedia for MediaList

///|
pub impl TCSSStyleSheetInitNewMedia for String

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
pub(open) trait TCSSStyleSheetInitGetMedia: TJsValue {}

///|
pub impl TCSSStyleSheetInitGetMedia for MediaList

///|
pub impl TCSSStyleSheetInitGetMedia for String

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
pub impl TCSSStyleSheetInitGetMedia for CSSStyleSheetInitGetMedia

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

///|
#cfg(target="js")
extern "js" fn css_style_sheet_init_ffi(
  base_url : JsValue,
  media : JsValue,
  disabled : JsValue,
) -> CSSStyleSheetInit =
  #|(baseURL, media, disabled) => {
  #|  const obj = {};
  #|  if (baseURL !== undefined) obj.baseURL = baseURL;
  #|  if (media !== undefined) obj.media = media;
  #|  if (disabled !== undefined) obj.disabled = disabled;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn css_style_sheet_init_empty_ffi() -> CSSStyleSheetInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn css_style_sheet_init_get_base_url_ffi(obj : JsValue) -> JsValue = "(obj) => obj.baseURL"

///|
#cfg(target="js")
extern "js" fn css_style_sheet_init_get_media_ffi(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
extern "js" fn css_style_sheet_init_get_disabled_ffi(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_init_ffi(
  base_url : JsValue,
  media : JsValue,
  disabled : JsValue,
) -> CSSStyleSheetInit = "webapi_CSSStyleSheetInit" "new"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_init_empty_ffi() -> CSSStyleSheetInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_init_get_base_url_ffi(obj : JsValue) -> JsValue = "webapi_CSSStyleSheetInit" "get_baseURL"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_init_get_media_ffi(obj : JsValue) -> JsValue = "webapi_CSSStyleSheetInit" "get_media"

///|
#cfg(target="wasm-gc")
fn css_style_sheet_init_get_disabled_ffi(obj : JsValue) -> JsValue = "webapi_CSSStyleSheetInit" "get_disabled"
