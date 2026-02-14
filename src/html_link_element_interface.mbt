// Do not edit. This file is generated.
// MoonBit type: HTMLLinkElement
// Specifications: html.idl

///|
/// [HTMLLinkElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement)
#external
pub type HTMLLinkElement

///|
pub impl TJsValue for HTMLLinkElement with to_js(self : HTMLLinkElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLLinkElement with from_js_any(value : JsAny) -> HTMLLinkElement = "%identity"

///|
pub fn[T : THTMLLinkElement] HTMLLinkElement::into(self : HTMLLinkElement) -> T = "%identity"

///|
pub impl THTMLLinkElement for HTMLLinkElement

///|
pub impl THTMLElement for HTMLLinkElement

///|
pub impl TElement for HTMLLinkElement

///|
pub impl TNode for HTMLLinkElement

///|
pub impl TEventTarget for HTMLLinkElement

///|
pub fn HTMLLinkElement::new() -> HTMLLinkElement {
  html_link_element_new_ffi()
}

///|
/// [HTMLLinkElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement) interface.
pub trait THTMLLinkElement: THTMLElement {
  href(self : Self) -> String = _
  set_href(self : Self, href : String) -> Unit = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, rel : String) -> Unit = _
  as_(self : Self) -> String = _
  set_as_(self : Self, as_ : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  integrity(self : Self) -> String = _
  set_integrity(self : Self, integrity : String) -> Unit = _
  hreflang(self : Self) -> String = _
  set_hreflang(self : Self, hreflang : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  sizes(self : Self) -> DOMTokenList = _
  image_srcset(self : Self) -> String = _
  set_image_srcset(self : Self, image_srcset : String) -> Unit = _
  image_sizes(self : Self) -> String = _
  set_image_sizes(self : Self, image_sizes : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  fetch_priority(self : Self) -> String = _
  set_fetch_priority(self : Self, fetch_priority : String) -> Unit = _
  charset(self : Self) -> String = _
  set_charset(self : Self, charset : String) -> Unit = _
  rev(self : Self) -> String = _
  set_rev(self : Self, rev : String) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, target : String) -> Unit = _
  sheet(self : Self) -> CSSStyleSheet = _
}

///|
/// [HTMLLinkElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/href)
impl THTMLLinkElement with href(self : Self) -> String {
  html_link_element_href_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/href)
impl THTMLLinkElement with set_href(self : Self, href : String) -> Unit {
  html_link_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
/// [HTMLLinkElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/crossOrigin)
impl THTMLLinkElement with cross_origin(self : Self) -> String {
  html_link_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/crossOrigin)
impl THTMLLinkElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  html_link_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
/// [HTMLLinkElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rel)
impl THTMLLinkElement with rel(self : Self) -> String {
  html_link_element_rel_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rel)
impl THTMLLinkElement with set_rel(self : Self, rel : String) -> Unit {
  html_link_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
/// [HTMLLinkElement.as](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/as)
impl THTMLLinkElement with as_(self : Self) -> String {
  html_link_element_as_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.as](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/as)
impl THTMLLinkElement with set_as_(self : Self, as_ : String) -> Unit {
  html_link_element_set_as_ffi(TJsValue::to_js(self), TJsValue::to_js(as_))
}

///|
/// [HTMLLinkElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/relList)
impl THTMLLinkElement with rel_list(self : Self) -> DOMTokenList {
  html_link_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/media)
impl THTMLLinkElement with media(self : Self) -> String {
  html_link_element_media_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/media)
impl THTMLLinkElement with set_media(self : Self, media : String) -> Unit {
  html_link_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

///|
/// [HTMLLinkElement.integrity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/integrity)
impl THTMLLinkElement with integrity(self : Self) -> String {
  html_link_element_integrity_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.integrity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/integrity)
impl THTMLLinkElement with set_integrity(self : Self, integrity : String) -> Unit {
  html_link_element_set_integrity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(integrity),
  )
}

///|
/// [HTMLLinkElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/hreflang)
impl THTMLLinkElement with hreflang(self : Self) -> String {
  html_link_element_hreflang_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/hreflang)
impl THTMLLinkElement with set_hreflang(self : Self, hreflang : String) -> Unit {
  html_link_element_set_hreflang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hreflang),
  )
}

///|
/// [HTMLLinkElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/type)
impl THTMLLinkElement with type_(self : Self) -> String {
  html_link_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/type)
impl THTMLLinkElement with set_type_(self : Self, type_ : String) -> Unit {
  html_link_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
/// [HTMLLinkElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/sizes)
impl THTMLLinkElement with sizes(self : Self) -> DOMTokenList {
  html_link_element_sizes_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.imageSrcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSrcset)
impl THTMLLinkElement with image_srcset(self : Self) -> String {
  html_link_element_image_srcset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.imageSrcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSrcset)
impl THTMLLinkElement with set_image_srcset(self : Self, image_srcset : String) -> Unit {
  html_link_element_set_image_srcset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_srcset),
  )
}

///|
/// [HTMLLinkElement.imageSizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSizes)
impl THTMLLinkElement with image_sizes(self : Self) -> String {
  html_link_element_image_sizes_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.imageSizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSizes)
impl THTMLLinkElement with set_image_sizes(self : Self, image_sizes : String) -> Unit {
  html_link_element_set_image_sizes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_sizes),
  )
}

///|
/// [HTMLLinkElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/referrerPolicy)
impl THTMLLinkElement with referrer_policy(self : Self) -> String {
  html_link_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/referrerPolicy)
impl THTMLLinkElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  html_link_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
/// [HTMLLinkElement.blocking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/blocking)
impl THTMLLinkElement with blocking(self : Self) -> DOMTokenList {
  html_link_element_blocking_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/disabled)
impl THTMLLinkElement with disabled(self : Self) -> Bool {
  html_link_element_disabled_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/disabled)
impl THTMLLinkElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_link_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
/// [HTMLLinkElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/fetchPriority)
impl THTMLLinkElement with fetch_priority(self : Self) -> String {
  html_link_element_fetch_priority_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/fetchPriority)
impl THTMLLinkElement with set_fetch_priority(
  self : Self,
  fetch_priority : String,
) -> Unit {
  html_link_element_set_fetch_priority_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(fetch_priority),
  )
}

///|
/// [HTMLLinkElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/charset)
impl THTMLLinkElement with charset(self : Self) -> String {
  html_link_element_charset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/charset)
impl THTMLLinkElement with set_charset(self : Self, charset : String) -> Unit {
  html_link_element_set_charset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charset),
  )
}

///|
/// [HTMLLinkElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rev)
impl THTMLLinkElement with rev(self : Self) -> String {
  html_link_element_rev_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rev)
impl THTMLLinkElement with set_rev(self : Self, rev : String) -> Unit {
  html_link_element_set_rev_ffi(TJsValue::to_js(self), TJsValue::to_js(rev))
}

///|
/// [HTMLLinkElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/target)
impl THTMLLinkElement with target(self : Self) -> String {
  html_link_element_target_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLinkElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/target)
impl THTMLLinkElement with set_target(self : Self, target : String) -> Unit {
  html_link_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
/// [HTMLLinkElement.sheet](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/sheet)
impl THTMLLinkElement with sheet(self : Self) -> CSSStyleSheet {
  html_link_element_sheet_ffi(TJsValue::to_js(self))
}
