// Do not edit. This file is generated.
// MoonBit type: HTMLMetaElement
// Specifications: html.idl

///|
#external
pub type HTMLMetaElement

///|
pub impl TJsValue for HTMLMetaElement with to_js(self : HTMLMetaElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMetaElement] HTMLMetaElement::into(self : HTMLMetaElement) -> T = "%identity"

///|
pub impl THTMLMetaElement for HTMLMetaElement

///|
pub impl THTMLElement for HTMLMetaElement

///|
pub impl TElement for HTMLMetaElement

///|
pub impl TNode for HTMLMetaElement

///|
pub impl TEventTarget for HTMLMetaElement

///|
extern "js" fn html_meta_element_new_ffi() -> HTMLMetaElement = "() => new HTMLMetaElement()"

///|
pub fn HTMLMetaElement::new() -> HTMLMetaElement {
  html_meta_element_new_ffi()
}

///|
pub trait THTMLMetaElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  http_equiv(self : Self) -> String = _
  set_http_equiv(self : Self, http_equiv : String) -> Unit = _
  content(self : Self) -> String = _
  set_content(self : Self, content : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  scheme(self : Self) -> String = _
  set_scheme(self : Self, scheme : String) -> Unit = _
}

///|
extern "js" fn html_meta_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLMetaElement with name(self : Self) -> String {
  html_meta_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meta_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLMetaElement with set_name(self : Self, name : String) -> Unit {
  html_meta_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_meta_element_http_equiv_ffi(obj : JsValue) -> String = "(obj) => obj.httpEquiv"

///|
impl THTMLMetaElement with http_equiv(self : Self) -> String {
  html_meta_element_http_equiv_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meta_element_set_http_equiv_ffi(
  obj : JsValue,
  http_equiv : JsValue,
) -> Unit = "(obj, httpEquiv) => { obj.httpEquiv = http_equiv; }"

///|
impl THTMLMetaElement with set_http_equiv(self : Self, http_equiv : String) -> Unit {
  html_meta_element_set_http_equiv_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(http_equiv),
  )
}

///|
extern "js" fn html_meta_element_content_ffi(obj : JsValue) -> String = "(obj) => obj.content"

///|
impl THTMLMetaElement with content(self : Self) -> String {
  html_meta_element_content_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meta_element_set_content_ffi(
  obj : JsValue,
  content : JsValue,
) -> Unit = "(obj, content) => { obj.content = content; }"

///|
impl THTMLMetaElement with set_content(self : Self, content : String) -> Unit {
  html_meta_element_set_content_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(content),
  )
}

///|
extern "js" fn html_meta_element_media_ffi(obj : JsValue) -> String = "(obj) => obj.media"

///|
impl THTMLMetaElement with media(self : Self) -> String {
  html_meta_element_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meta_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
impl THTMLMetaElement with set_media(self : Self, media : String) -> Unit {
  html_meta_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

///|
extern "js" fn html_meta_element_scheme_ffi(obj : JsValue) -> String = "(obj) => obj.scheme"

///|
impl THTMLMetaElement with scheme(self : Self) -> String {
  html_meta_element_scheme_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meta_element_set_scheme_ffi(
  obj : JsValue,
  scheme : JsValue,
) -> Unit = "(obj, scheme) => { obj.scheme = scheme; }"

///|
impl THTMLMetaElement with set_scheme(self : Self, scheme : String) -> Unit {
  html_meta_element_set_scheme_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scheme),
  )
}
