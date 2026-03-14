// Do not edit. This file is generated.
// MoonBit type: HTMLLinkElement
// Specifications: html.idl

/// [HTMLLinkElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement)
#external
pub type HTMLLinkElement

pub impl TJsValue for HTMLLinkElement with to_js(self: HTMLLinkElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLLinkElement with from_js_any(value : JsAny) -> HTMLLinkElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLLinkElement] HTMLLinkElement::into(self : HTMLLinkElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLLinkElement] HTMLLinkElement::unsafe_into(self : HTMLLinkElement) -> T = "%identity"

pub impl HasConstructor for HTMLLinkElement with constructor_name() { "HTMLLinkElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLLinkElement + HasConstructor] HTMLLinkElement::try_into(self : HTMLLinkElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLLinkElement for HTMLLinkElement

pub impl THTMLElement for HTMLLinkElement

pub impl TElement for HTMLLinkElement

pub impl TNode for HTMLLinkElement

pub impl TEventTarget for HTMLLinkElement

pub fn HTMLLinkElement::new() -> HTMLLinkElement {
  html_link_element_new_ffi()
}

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

/// [HTMLLinkElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/href)
impl THTMLLinkElement with href(self : Self) -> String {
  html_link_element_href_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/href)
impl THTMLLinkElement with set_href(self : Self, 
href : String) -> Unit {
  html_link_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

/// [HTMLLinkElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/crossOrigin)
impl THTMLLinkElement with cross_origin(self : Self) -> String {
  html_link_element_cross_origin_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/crossOrigin)
impl THTMLLinkElement with set_cross_origin(self : Self, 
cross_origin : String) -> Unit {
  html_link_element_set_cross_origin_ffi(TJsValue::to_js(self), TJsValue::to_js(cross_origin))
}

/// [HTMLLinkElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rel)
impl THTMLLinkElement with rel(self : Self) -> String {
  html_link_element_rel_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.rel](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rel)
impl THTMLLinkElement with set_rel(self : Self, 
rel : String) -> Unit {
  html_link_element_set_rel_ffi(TJsValue::to_js(self), TJsValue::to_js(rel))
}

/// [HTMLLinkElement.as](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/as)
impl THTMLLinkElement with as_(self : Self) -> String {
  html_link_element_as_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.as](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/as)
impl THTMLLinkElement with set_as_(self : Self, 
as_ : String) -> Unit {
  html_link_element_set_as_ffi(TJsValue::to_js(self), TJsValue::to_js(as_))
}

/// [HTMLLinkElement.relList](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/relList)
impl THTMLLinkElement with rel_list(self : Self) -> DOMTokenList {
  html_link_element_rel_list_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/media)
impl THTMLLinkElement with media(self : Self) -> String {
  html_link_element_media_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/media)
impl THTMLLinkElement with set_media(self : Self, 
media : String) -> Unit {
  html_link_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

/// [HTMLLinkElement.integrity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/integrity)
impl THTMLLinkElement with integrity(self : Self) -> String {
  html_link_element_integrity_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.integrity](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/integrity)
impl THTMLLinkElement with set_integrity(self : Self, 
integrity : String) -> Unit {
  html_link_element_set_integrity_ffi(TJsValue::to_js(self), TJsValue::to_js(integrity))
}

/// [HTMLLinkElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/hreflang)
impl THTMLLinkElement with hreflang(self : Self) -> String {
  html_link_element_hreflang_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.hreflang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/hreflang)
impl THTMLLinkElement with set_hreflang(self : Self, 
hreflang : String) -> Unit {
  html_link_element_set_hreflang_ffi(TJsValue::to_js(self), TJsValue::to_js(hreflang))
}

/// [HTMLLinkElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/type)
impl THTMLLinkElement with type_(self : Self) -> String {
  html_link_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/type)
impl THTMLLinkElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_link_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLLinkElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/sizes)
impl THTMLLinkElement with sizes(self : Self) -> DOMTokenList {
  html_link_element_sizes_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.imageSrcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSrcset)
impl THTMLLinkElement with image_srcset(self : Self) -> String {
  html_link_element_image_srcset_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.imageSrcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSrcset)
impl THTMLLinkElement with set_image_srcset(self : Self, 
image_srcset : String) -> Unit {
  html_link_element_set_image_srcset_ffi(TJsValue::to_js(self), TJsValue::to_js(image_srcset))
}

/// [HTMLLinkElement.imageSizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSizes)
impl THTMLLinkElement with image_sizes(self : Self) -> String {
  html_link_element_image_sizes_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.imageSizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/imageSizes)
impl THTMLLinkElement with set_image_sizes(self : Self, 
image_sizes : String) -> Unit {
  html_link_element_set_image_sizes_ffi(TJsValue::to_js(self), TJsValue::to_js(image_sizes))
}

/// [HTMLLinkElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/referrerPolicy)
impl THTMLLinkElement with referrer_policy(self : Self) -> String {
  html_link_element_referrer_policy_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/referrerPolicy)
impl THTMLLinkElement with set_referrer_policy(self : Self, 
referrer_policy : String) -> Unit {
  html_link_element_set_referrer_policy_ffi(TJsValue::to_js(self), TJsValue::to_js(referrer_policy))
}

/// [HTMLLinkElement.blocking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/blocking)
impl THTMLLinkElement with blocking(self : Self) -> DOMTokenList {
  html_link_element_blocking_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/disabled)
impl THTMLLinkElement with disabled(self : Self) -> Bool {
  html_link_element_disabled_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/disabled)
impl THTMLLinkElement with set_disabled(self : Self, 
disabled : Bool) -> Unit {
  html_link_element_set_disabled_ffi(TJsValue::to_js(self), TJsValue::to_js(disabled))
}

/// [HTMLLinkElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/fetchPriority)
impl THTMLLinkElement with fetch_priority(self : Self) -> String {
  html_link_element_fetch_priority_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/fetchPriority)
impl THTMLLinkElement with set_fetch_priority(self : Self, 
fetch_priority : String) -> Unit {
  html_link_element_set_fetch_priority_ffi(TJsValue::to_js(self), TJsValue::to_js(fetch_priority))
}

/// [HTMLLinkElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/charset)
impl THTMLLinkElement with charset(self : Self) -> String {
  html_link_element_charset_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.charset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/charset)
impl THTMLLinkElement with set_charset(self : Self, 
charset : String) -> Unit {
  html_link_element_set_charset_ffi(TJsValue::to_js(self), TJsValue::to_js(charset))
}

/// [HTMLLinkElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rev)
impl THTMLLinkElement with rev(self : Self) -> String {
  html_link_element_rev_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.rev](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/rev)
impl THTMLLinkElement with set_rev(self : Self, 
rev : String) -> Unit {
  html_link_element_set_rev_ffi(TJsValue::to_js(self), TJsValue::to_js(rev))
}

/// [HTMLLinkElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/target)
impl THTMLLinkElement with target(self : Self) -> String {
  html_link_element_target_ffi(TJsValue::to_js(self))
}

/// [HTMLLinkElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/target)
impl THTMLLinkElement with set_target(self : Self, 
target : String) -> Unit {
  html_link_element_set_target_ffi(TJsValue::to_js(self), TJsValue::to_js(target))
}

/// [HTMLLinkElement.sheet](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement/sheet)
impl THTMLLinkElement with sheet(self : Self) -> CSSStyleSheet {
  html_link_element_sheet_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn html_link_element_new_ffi() -> HTMLLinkElement = "() => new HTMLLinkElement()"

#cfg(target="js")
extern "js" fn html_link_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn html_link_element_href_ffi(obj: JsValue) -> String {
  html_link_element_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

#cfg(target="js")
extern "js" fn html_link_element_cross_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
#cfg(target="js")
fn html_link_element_cross_origin_ffi(obj: JsValue) -> String {
  html_link_element_cross_origin_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

#cfg(target="js")
extern "js" fn html_link_element_rel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rel"

///|
#cfg(target="js")
fn html_link_element_rel_ffi(obj: JsValue) -> String {
  html_link_element_rel_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "(obj, rel) => { obj.rel = rel; }"

#cfg(target="js")
extern "js" fn html_link_element_as_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.as"

///|
#cfg(target="js")
fn html_link_element_as_ffi(obj: JsValue) -> String {
  html_link_element_as_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_as_ffi(obj: JsValue, as_: JsValue) -> Unit = "(obj, as) => { obj.as = as; }"

#cfg(target="js")
extern "js" fn html_link_element_rel_list_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.relList"

///|
#cfg(target="js")
fn html_link_element_rel_list_ffi(obj: JsValue) -> DOMTokenList {
  html_link_element_rel_list_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_media_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn html_link_element_media_ffi(obj: JsValue) -> String {
  html_link_element_media_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "(obj, media) => { obj.media = media; }"

#cfg(target="js")
extern "js" fn html_link_element_integrity_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.integrity"

///|
#cfg(target="js")
fn html_link_element_integrity_ffi(obj: JsValue) -> String {
  html_link_element_integrity_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_integrity_ffi(obj: JsValue, integrity: JsValue) -> Unit = "(obj, integrity) => { obj.integrity = integrity; }"

#cfg(target="js")
extern "js" fn html_link_element_hreflang_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hreflang"

///|
#cfg(target="js")
fn html_link_element_hreflang_ffi(obj: JsValue) -> String {
  html_link_element_hreflang_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_hreflang_ffi(obj: JsValue, hreflang: JsValue) -> Unit = "(obj, hreflang) => { obj.hreflang = hreflang; }"

#cfg(target="js")
extern "js" fn html_link_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn html_link_element_type_ffi(obj: JsValue) -> String {
  html_link_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="js")
extern "js" fn html_link_element_sizes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sizes"

///|
#cfg(target="js")
fn html_link_element_sizes_ffi(obj: JsValue) -> DOMTokenList {
  html_link_element_sizes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_image_srcset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.imageSrcset"

///|
#cfg(target="js")
fn html_link_element_image_srcset_ffi(obj: JsValue) -> String {
  html_link_element_image_srcset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_image_srcset_ffi(obj: JsValue, image_srcset: JsValue) -> Unit = "(obj, imageSrcset) => { obj.imageSrcset = imageSrcset; }"

#cfg(target="js")
extern "js" fn html_link_element_image_sizes_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.imageSizes"

///|
#cfg(target="js")
fn html_link_element_image_sizes_ffi(obj: JsValue) -> String {
  html_link_element_image_sizes_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_image_sizes_ffi(obj: JsValue, image_sizes: JsValue) -> Unit = "(obj, imageSizes) => { obj.imageSizes = imageSizes; }"

#cfg(target="js")
extern "js" fn html_link_element_referrer_policy_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn html_link_element_referrer_policy_ffi(obj: JsValue) -> String {
  html_link_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

#cfg(target="js")
extern "js" fn html_link_element_blocking_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.blocking"

///|
#cfg(target="js")
fn html_link_element_blocking_ffi(obj: JsValue) -> DOMTokenList {
  html_link_element_blocking_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_disabled_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn html_link_element_disabled_ffi(obj: JsValue) -> Bool {
  html_link_element_disabled_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

#cfg(target="js")
extern "js" fn html_link_element_fetch_priority_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.fetchPriority"

///|
#cfg(target="js")
fn html_link_element_fetch_priority_ffi(obj: JsValue) -> String {
  html_link_element_fetch_priority_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

#cfg(target="js")
extern "js" fn html_link_element_charset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.charset"

///|
#cfg(target="js")
fn html_link_element_charset_ffi(obj: JsValue) -> String {
  html_link_element_charset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "(obj, charset) => { obj.charset = charset; }"

#cfg(target="js")
extern "js" fn html_link_element_rev_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rev"

///|
#cfg(target="js")
fn html_link_element_rev_ffi(obj: JsValue) -> String {
  html_link_element_rev_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_rev_ffi(obj: JsValue, rev: JsValue) -> Unit = "(obj, rev) => { obj.rev = rev; }"

#cfg(target="js")
extern "js" fn html_link_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
#cfg(target="js")
fn html_link_element_target_ffi(obj: JsValue) -> String {
  html_link_element_target_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_link_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"

#cfg(target="js")
extern "js" fn html_link_element_sheet_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sheet"

///|
#cfg(target="js")
fn html_link_element_sheet_ffi(obj: JsValue) -> CSSStyleSheet {
  html_link_element_sheet_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn html_link_element_new_ffi() -> HTMLLinkElement = "webapi_HTMLLinkElement" "new"

#cfg(target="wasm-gc")
fn html_link_element_href_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_href"

///|
#cfg(target="wasm-gc")
fn html_link_element_href_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_href_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_href"

#cfg(target="wasm-gc")
fn html_link_element_cross_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_crossOrigin"

///|
#cfg(target="wasm-gc")
fn html_link_element_cross_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_cross_origin_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_crossOrigin"

#cfg(target="wasm-gc")
fn html_link_element_rel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_rel"

///|
#cfg(target="wasm-gc")
fn html_link_element_rel_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_rel_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_rel_ffi(obj: JsValue, rel: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_rel"

#cfg(target="wasm-gc")
fn html_link_element_as_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_as"

///|
#cfg(target="wasm-gc")
fn html_link_element_as_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_as_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_as_ffi(obj: JsValue, as_: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_as"

#cfg(target="wasm-gc")
fn html_link_element_rel_list_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLLinkElement" "get_relList"

#cfg(target="wasm-gc")
fn html_link_element_media_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_media"

///|
#cfg(target="wasm-gc")
fn html_link_element_media_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_media_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_media_ffi(obj: JsValue, media: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_media"

#cfg(target="wasm-gc")
fn html_link_element_integrity_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_integrity"

///|
#cfg(target="wasm-gc")
fn html_link_element_integrity_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_integrity_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_integrity_ffi(obj: JsValue, integrity: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_integrity"

#cfg(target="wasm-gc")
fn html_link_element_hreflang_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_hreflang"

///|
#cfg(target="wasm-gc")
fn html_link_element_hreflang_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_hreflang_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_hreflang_ffi(obj: JsValue, hreflang: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_hreflang"

#cfg(target="wasm-gc")
fn html_link_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_type"

///|
#cfg(target="wasm-gc")
fn html_link_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_type"

#cfg(target="wasm-gc")
fn html_link_element_sizes_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLLinkElement" "get_sizes"

#cfg(target="wasm-gc")
fn html_link_element_image_srcset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_imageSrcset"

///|
#cfg(target="wasm-gc")
fn html_link_element_image_srcset_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_image_srcset_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_image_srcset_ffi(obj: JsValue, image_srcset: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_imageSrcset"

#cfg(target="wasm-gc")
fn html_link_element_image_sizes_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_imageSizes"

///|
#cfg(target="wasm-gc")
fn html_link_element_image_sizes_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_image_sizes_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_image_sizes_ffi(obj: JsValue, image_sizes: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_imageSizes"

#cfg(target="wasm-gc")
fn html_link_element_referrer_policy_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn html_link_element_referrer_policy_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_referrer_policy_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_referrer_policy_ffi(obj: JsValue, referrer_policy: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_referrerPolicy"

#cfg(target="wasm-gc")
fn html_link_element_blocking_ffi(obj: JsValue) -> DOMTokenList = "webapi_HTMLLinkElement" "get_blocking"

#cfg(target="wasm-gc")
fn html_link_element_disabled_ffi(obj: JsValue) -> Bool = "webapi_HTMLLinkElement" "get_disabled"

#cfg(target="wasm-gc")
fn html_link_element_set_disabled_ffi(obj: JsValue, disabled: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_disabled"

#cfg(target="wasm-gc")
fn html_link_element_fetch_priority_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_fetchPriority"

///|
#cfg(target="wasm-gc")
fn html_link_element_fetch_priority_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_fetch_priority_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_fetch_priority_ffi(obj: JsValue, fetch_priority: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_fetchPriority"

#cfg(target="wasm-gc")
fn html_link_element_charset_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_charset"

///|
#cfg(target="wasm-gc")
fn html_link_element_charset_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_charset_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_charset_ffi(obj: JsValue, charset: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_charset"

#cfg(target="wasm-gc")
fn html_link_element_rev_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_rev"

///|
#cfg(target="wasm-gc")
fn html_link_element_rev_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_rev_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_rev_ffi(obj: JsValue, rev: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_rev"

#cfg(target="wasm-gc")
fn html_link_element_target_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLLinkElement" "get_target"

///|
#cfg(target="wasm-gc")
fn html_link_element_target_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_link_element_target_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_link_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "webapi_HTMLLinkElement" "set_target"

#cfg(target="wasm-gc")
fn html_link_element_sheet_ffi(obj: JsValue) -> CSSStyleSheet = "webapi_HTMLLinkElement" "get_sheet"