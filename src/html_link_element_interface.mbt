// Do not edit. This file is generated.
// MoonBit type: HTMLLinkElement
// Specifications: html.idl

///|
#external
pub type HTMLLinkElement

///|
pub impl TJsValue for HTMLLinkElement with to_js(self : HTMLLinkElement) -> JsValue = "%identity"

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
extern "js" fn html_link_element_new_ffi() -> HTMLLinkElement = "() => new HTMLLinkElement()"

///|
pub fn HTMLLinkElement::new() -> HTMLLinkElement {
  html_link_element_new_ffi()
}

///|
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
extern "js" fn html_link_element_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
impl THTMLLinkElement with href(self : Self) -> String {
  html_link_element_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_href_ffi(
  obj : JsValue,
  href : JsValue,
) -> Unit = "(obj, href) => { obj.href = href; }"

///|
impl THTMLLinkElement with set_href(self : Self, href : String) -> Unit {
  html_link_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
extern "js" fn html_link_element_cross_origin_ffi(obj : JsValue) -> String = "(obj) => obj.crossOrigin"

///|
impl THTMLLinkElement with cross_origin(self : Self) -> String {
  html_link_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = cross_origin; }"

///|
impl THTMLLinkElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  html_link_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
extern "js" fn html_link_element_rel_ffi(obj : JsValue) -> String = "(obj) => obj.rel"

///|
impl THTMLLinkElement with rel(self : Self) -> String {
  html_link_element_rel_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_rel_ffi(
  obj : JsValue,
  rel : JsValue,
) -> Unit = "(obj, rel) => { obj.rel = rel; }"

///|
impl THTMLLinkElement with set_rel(self : Self, rel : String) -> Unit {
  html_link_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

///|
extern "js" fn html_link_element_as_ffi(obj : JsValue) -> String = "(obj) => obj.as"

///|
impl THTMLLinkElement with as_(self : Self) -> String {
  html_link_element_as_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_as_ffi(
  obj : JsValue,
  as_ : JsValue,
) -> Unit = "(obj, as) => { obj.as = as_; }"

///|
impl THTMLLinkElement with set_as_(self : Self, as_ : String) -> Unit {
  html_link_element_set_as_ffi(TJsValue::to_js(self), TJsValue::to_js(as_))
}

///|
extern "js" fn html_link_element_rel_list_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.relList"

///|
impl THTMLLinkElement with rel_list(self : Self) -> DOMTokenList {
  html_link_element_rel_list_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_media_ffi(obj : JsValue) -> String = "(obj) => obj.media"

///|
impl THTMLLinkElement with media(self : Self) -> String {
  html_link_element_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
impl THTMLLinkElement with set_media(self : Self, media : String) -> Unit {
  html_link_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

///|
extern "js" fn html_link_element_integrity_ffi(obj : JsValue) -> String = "(obj) => obj.integrity"

///|
impl THTMLLinkElement with integrity(self : Self) -> String {
  html_link_element_integrity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_integrity_ffi(
  obj : JsValue,
  integrity : JsValue,
) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

///|
impl THTMLLinkElement with set_integrity(self : Self, integrity : String) -> Unit {
  html_link_element_set_integrity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(integrity),
  )
}

///|
extern "js" fn html_link_element_hreflang_ffi(obj : JsValue) -> String = "(obj) => obj.hreflang"

///|
impl THTMLLinkElement with hreflang(self : Self) -> String {
  html_link_element_hreflang_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_hreflang_ffi(
  obj : JsValue,
  hreflang : JsValue,
) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

///|
impl THTMLLinkElement with set_hreflang(self : Self, hreflang : String) -> Unit {
  html_link_element_set_hreflang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hreflang),
  )
}

///|
extern "js" fn html_link_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLLinkElement with type_(self : Self) -> String {
  html_link_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type_; }"

///|
impl THTMLLinkElement with set_type_(self : Self, type_ : String) -> Unit {
  html_link_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn html_link_element_sizes_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.sizes"

///|
impl THTMLLinkElement with sizes(self : Self) -> DOMTokenList {
  html_link_element_sizes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_image_srcset_ffi(obj : JsValue) -> String = "(obj) => obj.imageSrcset"

///|
impl THTMLLinkElement with image_srcset(self : Self) -> String {
  html_link_element_image_srcset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_image_srcset_ffi(
  obj : JsValue,
  image_srcset : JsValue,
) -> Unit = "(obj, imageSrcset) => { obj.imageSrcset = image_srcset; }"

///|
impl THTMLLinkElement with set_image_srcset(self : Self, image_srcset : String) -> Unit {
  html_link_element_set_image_srcset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_srcset),
  )
}

///|
extern "js" fn html_link_element_image_sizes_ffi(obj : JsValue) -> String = "(obj) => obj.imageSizes"

///|
impl THTMLLinkElement with image_sizes(self : Self) -> String {
  html_link_element_image_sizes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_image_sizes_ffi(
  obj : JsValue,
  image_sizes : JsValue,
) -> Unit = "(obj, imageSizes) => { obj.imageSizes = image_sizes; }"

///|
impl THTMLLinkElement with set_image_sizes(self : Self, image_sizes : String) -> Unit {
  html_link_element_set_image_sizes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(image_sizes),
  )
}

///|
extern "js" fn html_link_element_referrer_policy_ffi(obj : JsValue) -> String = "(obj) => obj.referrerPolicy"

///|
impl THTMLLinkElement with referrer_policy(self : Self) -> String {
  html_link_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrer_policy; }"

///|
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
extern "js" fn html_link_element_blocking_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.blocking"

///|
impl THTMLLinkElement with blocking(self : Self) -> DOMTokenList {
  html_link_element_blocking_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLLinkElement with disabled(self : Self) -> Bool {
  html_link_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLLinkElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_link_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_link_element_fetch_priority_ffi(obj : JsValue) -> String = "(obj) => obj.fetchPriority"

///|
impl THTMLLinkElement with fetch_priority(self : Self) -> String {
  html_link_element_fetch_priority_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetch_priority; }"

///|
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
extern "js" fn html_link_element_charset_ffi(obj : JsValue) -> String = "(obj) => obj.charset"

///|
impl THTMLLinkElement with charset(self : Self) -> String {
  html_link_element_charset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_charset_ffi(
  obj : JsValue,
  charset : JsValue,
) -> Unit = "(obj, charset) => { obj.charset = charset; }"

///|
impl THTMLLinkElement with set_charset(self : Self, charset : String) -> Unit {
  html_link_element_set_charset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(charset),
  )
}

///|
extern "js" fn html_link_element_rev_ffi(obj : JsValue) -> String = "(obj) => obj.rev"

///|
impl THTMLLinkElement with rev(self : Self) -> String {
  html_link_element_rev_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_rev_ffi(
  obj : JsValue,
  rev : JsValue,
) -> Unit = "(obj, rev) => { obj.rev = rev; }"

///|
impl THTMLLinkElement with set_rev(self : Self, rev : String) -> Unit {
  html_link_element_set_rev_ffi(TJsValue::to_js(self), TJsValue::to_js(rev))
}

///|
extern "js" fn html_link_element_target_ffi(obj : JsValue) -> String = "(obj) => obj.target"

///|
impl THTMLLinkElement with target(self : Self) -> String {
  html_link_element_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_link_element_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
impl THTMLLinkElement with set_target(self : Self, target : String) -> Unit {
  html_link_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}

///|
extern "js" fn html_link_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "(obj) => obj.sheet"

///|
impl THTMLLinkElement with sheet(self : Self) -> CSSStyleSheet {
  html_link_element_sheet_ffi(TJsValue::to_js(self))
}
