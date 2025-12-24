///|
#external
pub type HTMLStyleElement

///|
pub impl TJsValue for HTMLStyleElement with to_js(self : HTMLStyleElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLStyleElement] HTMLStyleElement::into(
  self : HTMLStyleElement,
) -> T = "%identity"

///|
pub impl THTMLStyleElement for HTMLStyleElement

///|
pub impl THTMLElement for HTMLStyleElement

///|
pub impl TElement for HTMLStyleElement

///|
pub impl TNode for HTMLStyleElement

///|
pub impl TEventTarget for HTMLStyleElement

///|
extern "js" fn html_style_element_new_ffi() -> HTMLStyleElement = "() => new HTMLStyleElement()"

///|
pub fn HTMLStyleElement::new() -> HTMLStyleElement {
  html_style_element_new_ffi()
}

///|
pub trait THTMLStyleElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  sheet(self : Self) -> CSSStyleSheet = _
}

///|
extern "js" fn html_style_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLStyleElement with disabled(self : Self) -> Bool {
  html_style_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLStyleElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_style_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_style_element_media_ffi(obj : JsValue) -> String = "(obj) => obj.media"

///|
impl THTMLStyleElement with media(self : Self) -> String {
  html_style_element_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_style_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
impl THTMLStyleElement with set_media(self : Self, media : String) -> Unit {
  html_style_element_set_media_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(media),
  )
}

///|
extern "js" fn html_style_element_blocking_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.blocking"

///|
impl THTMLStyleElement with blocking(self : Self) -> DOMTokenList {
  html_style_element_blocking_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_style_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLStyleElement with type_(self : Self) -> String {
  html_style_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_style_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl THTMLStyleElement with set_type_(self : Self, type_ : String) -> Unit {
  html_style_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn html_style_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "(obj) => obj.sheet"

///|
impl THTMLStyleElement with sheet(self : Self) -> CSSStyleSheet {
  html_style_element_sheet_ffi(TJsValue::to_js(self))
}
