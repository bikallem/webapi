// Do not edit. This file is generated.
// MoonBit type: HTMLMetaElement
// Specifications: html.idl

/// [HTMLMetaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement)
#external
pub type HTMLMetaElement

pub impl TJsValue for HTMLMetaElement with to_js(self: HTMLMetaElement) -> JsValue = "%identity"

pub fn[T: THTMLMetaElement] HTMLMetaElement::into(self : HTMLMetaElement) -> T = "%identity"

pub impl THTMLMetaElement for HTMLMetaElement

pub impl THTMLElement for HTMLMetaElement

pub impl TElement for HTMLMetaElement

pub impl TNode for HTMLMetaElement

pub impl TEventTarget for HTMLMetaElement

pub fn HTMLMetaElement::new() -> HTMLMetaElement {
  html_meta_element_new_ffi()
}

/// [HTMLMetaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement) interface.
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

/// [HTMLMetaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/name)
impl THTMLMetaElement with name(self : Self) -> String {
  html_meta_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLMetaElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/name)
impl THTMLMetaElement with set_name(self : Self, 
name : String) -> Unit {
  html_meta_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLMetaElement.httpEquiv](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/httpEquiv)
impl THTMLMetaElement with http_equiv(self : Self) -> String {
  html_meta_element_http_equiv_ffi(TJsValue::to_js(self))
}

/// [HTMLMetaElement.httpEquiv](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/httpEquiv)
impl THTMLMetaElement with set_http_equiv(self : Self, 
http_equiv : String) -> Unit {
  html_meta_element_set_http_equiv_ffi(TJsValue::to_js(self), TJsValue::to_js(http_equiv))
}

/// [HTMLMetaElement.content](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/content)
impl THTMLMetaElement with content(self : Self) -> String {
  html_meta_element_content_ffi(TJsValue::to_js(self))
}

/// [HTMLMetaElement.content](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/content)
impl THTMLMetaElement with set_content(self : Self, 
content : String) -> Unit {
  html_meta_element_set_content_ffi(TJsValue::to_js(self), TJsValue::to_js(content))
}

/// [HTMLMetaElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/media)
impl THTMLMetaElement with media(self : Self) -> String {
  html_meta_element_media_ffi(TJsValue::to_js(self))
}

/// [HTMLMetaElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/media)
impl THTMLMetaElement with set_media(self : Self, 
media : String) -> Unit {
  html_meta_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

/// [HTMLMetaElement.scheme](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/scheme)
impl THTMLMetaElement with scheme(self : Self) -> String {
  html_meta_element_scheme_ffi(TJsValue::to_js(self))
}

/// [HTMLMetaElement.scheme](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement/scheme)
impl THTMLMetaElement with set_scheme(self : Self, 
scheme : String) -> Unit {
  html_meta_element_set_scheme_ffi(TJsValue::to_js(self), TJsValue::to_js(scheme))
}