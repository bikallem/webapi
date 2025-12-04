// Auto-generated MoonBit bindings for HTMLLinkElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLLinkElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions, ReflectURL] attribute USVString href;
//   [CEReactions] attribute DOMString? crossOrigin;
//   [CEReactions, Reflect] attribute DOMString rel;
//   [CEReactions] attribute DOMString as;
//   [SameObject, PutForwards=value, Reflect="rel"] readonly attribute DOMTokenList relList;
//   [CEReactions, Reflect] attribute DOMString media;
//   [CEReactions, Reflect] attribute DOMString integrity;
//   [CEReactions, Reflect] attribute DOMString hreflang;
//   [CEReactions, Reflect] attribute DOMString type;
//   [SameObject, PutForwards=value, Reflect] readonly attribute DOMTokenList sizes;
//   [CEReactions, Reflect] attribute USVString imageSrcset;
//   [CEReactions, Reflect] attribute DOMString imageSizes;
//   [CEReactions] attribute DOMString referrerPolicy;
//   [SameObject, PutForwards=value, Reflect] readonly attribute DOMTokenList blocking;
//   [CEReactions, Reflect] attribute boolean disabled;
//   [CEReactions] attribute DOMString fetchPriority;
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLLinkElement {
//   [CEReactions, Reflect] attribute DOMString charset;
//   [CEReactions, Reflect] attribute DOMString rev;
//   [CEReactions, Reflect] attribute DOMString target;
// };
// 
// interface mixin LinkStyle {
//   readonly attribute CSSStyleSheet? sheet;
// };

///|
#external
pub type HTMLLinkElement

///|
pub trait THTMLLinkElement: TJsValue + THTMLElement {
  href(self : Self) -> String = _
  set_href(self : Self, value : String) -> Unit = _
  cross_origin(self : Self) -> String? = _
  set_cross_origin(self : Self, value : String) -> Unit = _
  rel(self : Self) -> String = _
  set_rel(self : Self, value : String) -> Unit = _
  as_(self : Self) -> String = _
  set_as_(self : Self, value : String) -> Unit = _
  rel_list(self : Self) -> DOMTokenList = _
  media(self : Self) -> String = _
  set_media(self : Self, value : String) -> Unit = _
  integrity(self : Self) -> String = _
  set_integrity(self : Self, value : String) -> Unit = _
  hreflang(self : Self) -> String = _
  set_hreflang(self : Self, value : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, value : String) -> Unit = _
  sizes(self : Self) -> DOMTokenList = _
  image_srcset(self : Self) -> String = _
  set_image_srcset(self : Self, value : String) -> Unit = _
  image_sizes(self : Self) -> String = _
  set_image_sizes(self : Self, value : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, value : String) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, value : Bool) -> Unit = _
  fetch_priority(self : Self) -> String = _
  set_fetch_priority(self : Self, value : String) -> Unit = _
  charset(self : Self) -> String = _
  set_charset(self : Self, value : String) -> Unit = _
  rev(self : Self) -> String = _
  set_rev(self : Self, value : String) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, value : String) -> Unit = _
  sheet(self : Self) -> JsValue? = _
}

///|
pub impl TEventTarget for HTMLLinkElement

///|
pub impl TNode for HTMLLinkElement

///|
pub impl TElement for HTMLLinkElement

///|
pub impl THTMLElement for HTMLLinkElement

///|
pub impl THTMLLinkElement for HTMLLinkElement

///|
pub impl TJsValue for HTMLLinkElement with to_js(self : HTMLLinkElement) -> JsValue = "%identity"

///|
pub fn HTMLLinkElement::new() -> HTMLLinkElement = "webapi_HTMLLinkElement" "new"

///|
fn html_link_element_href_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "href"

///|
impl THTMLLinkElement with href(self : Self) -> String {
  html_link_element_href_ffi(self.to_js())
}

///|
fn html_link_element_set_href_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_href"

///|
impl THTMLLinkElement with set_href(self : Self, value : String) -> Unit {
  html_link_element_set_href_ffi(self.to_js(), value)
}

///|
fn html_link_element_cross_origin_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLinkElement" "crossOrigin"

///|
impl THTMLLinkElement with cross_origin(self : Self) -> String? {
  html_link_element_cross_origin_ffi(self.to_js()).as_option()
}

///|
fn html_link_element_set_cross_origin_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLLinkElement" "set_crossOrigin"

///|
impl THTMLLinkElement with set_cross_origin(self : Self, value : String) -> Unit {
  html_link_element_set_cross_origin_ffi(self.to_js(), value)
}

///|
fn html_link_element_rel_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "rel"

///|
impl THTMLLinkElement with rel(self : Self) -> String {
  html_link_element_rel_ffi(self.to_js())
}

///|
fn html_link_element_set_rel_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_rel"

///|
impl THTMLLinkElement with set_rel(self : Self, value : String) -> Unit {
  html_link_element_set_rel_ffi(self.to_js(), value)
}

///|
fn html_link_element_as_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "as"

///|
impl THTMLLinkElement with as_(self : Self) -> String {
  html_link_element_as_ffi(self.to_js())
}

///|
fn html_link_element_set_as_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_as"

///|
impl THTMLLinkElement with set_as_(self : Self, value : String) -> Unit {
  html_link_element_set_as_ffi(self.to_js(), value)
}

///|
fn html_link_element_rel_list_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLinkElement" "relList"

///|
impl THTMLLinkElement with rel_list(self : Self) -> DOMTokenList {
  html_link_element_rel_list_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_link_element_media_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "media"

///|
impl THTMLLinkElement with media(self : Self) -> String {
  html_link_element_media_ffi(self.to_js())
}

///|
fn html_link_element_set_media_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_media"

///|
impl THTMLLinkElement with set_media(self : Self, value : String) -> Unit {
  html_link_element_set_media_ffi(self.to_js(), value)
}

///|
fn html_link_element_integrity_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "integrity"

///|
impl THTMLLinkElement with integrity(self : Self) -> String {
  html_link_element_integrity_ffi(self.to_js())
}

///|
fn html_link_element_set_integrity_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_integrity"

///|
impl THTMLLinkElement with set_integrity(self : Self, value : String) -> Unit {
  html_link_element_set_integrity_ffi(self.to_js(), value)
}

///|
fn html_link_element_hreflang_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "hreflang"

///|
impl THTMLLinkElement with hreflang(self : Self) -> String {
  html_link_element_hreflang_ffi(self.to_js())
}

///|
fn html_link_element_set_hreflang_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_hreflang"

///|
impl THTMLLinkElement with set_hreflang(self : Self, value : String) -> Unit {
  html_link_element_set_hreflang_ffi(self.to_js(), value)
}

///|
fn html_link_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "type"

///|
impl THTMLLinkElement with type_(self : Self) -> String {
  html_link_element_type_ffi(self.to_js())
}

///|
fn html_link_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_type"

///|
impl THTMLLinkElement with set_type_(self : Self, value : String) -> Unit {
  html_link_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_link_element_sizes_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLinkElement" "sizes"

///|
impl THTMLLinkElement with sizes(self : Self) -> DOMTokenList {
  html_link_element_sizes_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_link_element_image_srcset_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "imageSrcset"

///|
impl THTMLLinkElement with image_srcset(self : Self) -> String {
  html_link_element_image_srcset_ffi(self.to_js())
}

///|
fn html_link_element_set_image_srcset_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLLinkElement" "set_imageSrcset"

///|
impl THTMLLinkElement with set_image_srcset(self : Self, value : String) -> Unit {
  html_link_element_set_image_srcset_ffi(self.to_js(), value)
}

///|
fn html_link_element_image_sizes_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "imageSizes"

///|
impl THTMLLinkElement with image_sizes(self : Self) -> String {
  html_link_element_image_sizes_ffi(self.to_js())
}

///|
fn html_link_element_set_image_sizes_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_imageSizes"

///|
impl THTMLLinkElement with set_image_sizes(self : Self, value : String) -> Unit {
  html_link_element_set_image_sizes_ffi(self.to_js(), value)
}

///|
fn html_link_element_referrer_policy_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "referrerPolicy"

///|
impl THTMLLinkElement with referrer_policy(self : Self) -> String {
  html_link_element_referrer_policy_ffi(self.to_js())
}

///|
fn html_link_element_set_referrer_policy_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLLinkElement" "set_referrerPolicy"

///|
impl THTMLLinkElement with set_referrer_policy(self : Self, value : String) -> Unit {
  html_link_element_set_referrer_policy_ffi(self.to_js(), value)
}

///|
fn html_link_element_blocking_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLinkElement" "blocking"

///|
impl THTMLLinkElement with blocking(self : Self) -> DOMTokenList {
  html_link_element_blocking_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_link_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLLinkElement" "disabled"

///|
impl THTMLLinkElement with disabled(self : Self) -> Bool {
  html_link_element_disabled_ffi(self.to_js())
}

///|
fn html_link_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLLinkElement" "set_disabled"

///|
impl THTMLLinkElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_link_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_link_element_fetch_priority_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "fetchPriority"

///|
impl THTMLLinkElement with fetch_priority(self : Self) -> String {
  html_link_element_fetch_priority_ffi(self.to_js())
}

///|
fn html_link_element_set_fetch_priority_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLLinkElement" "set_fetchPriority"

///|
impl THTMLLinkElement with set_fetch_priority(self : Self, value : String) -> Unit {
  html_link_element_set_fetch_priority_ffi(self.to_js(), value)
}

///|
fn html_link_element_charset_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "charset"

///|
impl THTMLLinkElement with charset(self : Self) -> String {
  html_link_element_charset_ffi(self.to_js())
}

///|
fn html_link_element_set_charset_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_charset"

///|
impl THTMLLinkElement with set_charset(self : Self, value : String) -> Unit {
  html_link_element_set_charset_ffi(self.to_js(), value)
}

///|
fn html_link_element_rev_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "rev"

///|
impl THTMLLinkElement with rev(self : Self) -> String {
  html_link_element_rev_ffi(self.to_js())
}

///|
fn html_link_element_set_rev_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_rev"

///|
impl THTMLLinkElement with set_rev(self : Self, value : String) -> Unit {
  html_link_element_set_rev_ffi(self.to_js(), value)
}

///|
fn html_link_element_target_ffi(obj : JsValue) -> String = "webapi_HTMLLinkElement" "target"

///|
impl THTMLLinkElement with target(self : Self) -> String {
  html_link_element_target_ffi(self.to_js())
}

///|
fn html_link_element_set_target_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLLinkElement" "set_target"

///|
impl THTMLLinkElement with set_target(self : Self, value : String) -> Unit {
  html_link_element_set_target_ffi(self.to_js(), value)
}

///|
fn html_link_element_sheet_ffi(obj : JsValue) -> JsValue = "webapi_HTMLLinkElement" "sheet"

///|
impl THTMLLinkElement with sheet(self : Self) -> JsValue? {
  html_link_element_sheet_ffi(self.to_js()).as_option()
}
