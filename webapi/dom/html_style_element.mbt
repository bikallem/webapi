// Auto-generated MoonBit bindings for HTMLStyleElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLStyleElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   attribute boolean disabled;
//   [CEReactions, Reflect] attribute DOMString media;
//   [SameObject, PutForwards=value, Reflect] readonly attribute DOMTokenList blocking;
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLStyleElement {
//   [CEReactions, Reflect] attribute DOMString type;
// };

///|
#external
pub type HTMLStyleElement

///|
pub trait THTMLStyleElement: TJsValue + THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, value : Bool) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, value : String) -> Unit = _
  blocking(self : Self) -> DOMTokenList = _
  type_(self : Self) -> String = _
  set_type_(self : Self, value : String) -> Unit = _
}

///|
pub impl THTMLElement for HTMLStyleElement

///|
pub impl THTMLStyleElement for HTMLStyleElement

///|
pub impl TJsValue for HTMLStyleElement with to_js(self : HTMLStyleElement) -> JsValue = "%identity"

///|
pub fn HTMLStyleElement::null() -> HTMLStyleElement = "JsValue" "null"

///|
pub fn HTMLStyleElement::is_null(self : HTMLStyleElement) -> Bool = "JsValue" "isNull"

///|
pub fn HTMLStyleElement::new() -> HTMLStyleElement = "webapi_HTMLStyleElement" "new"

///|
fn html_style_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_HTMLStyleElement" "disabled"

///|
impl THTMLStyleElement with disabled(self : Self) -> Bool {
  html_style_element_disabled_ffi(self.to_js())
}

///|
fn html_style_element_set_disabled_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLStyleElement" "set_disabled"

///|
impl THTMLStyleElement with set_disabled(self : Self, value : Bool) -> Unit {
  html_style_element_set_disabled_ffi(self.to_js(), value)
}

///|
fn html_style_element_media_ffi(obj : JsValue) -> String = "webapi_HTMLStyleElement" "media"

///|
impl THTMLStyleElement with media(self : Self) -> String {
  html_style_element_media_ffi(self.to_js())
}

///|
fn html_style_element_set_media_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLStyleElement" "set_media"

///|
impl THTMLStyleElement with set_media(self : Self, value : String) -> Unit {
  html_style_element_set_media_ffi(self.to_js(), value)
}

///|
fn html_style_element_blocking_ffi(obj : JsValue) -> JsValue = "webapi_HTMLStyleElement" "blocking"

///|
impl THTMLStyleElement with blocking(self : Self) -> DOMTokenList {
  html_style_element_blocking_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_style_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLStyleElement" "type"

///|
impl THTMLStyleElement with type_(self : Self) -> String {
  html_style_element_type_ffi(self.to_js())
}

///|
fn html_style_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLStyleElement" "set_type"

///|
impl THTMLStyleElement with set_type_(self : Self, value : String) -> Unit {
  html_style_element_set_type_ffi(self.to_js(), value)
}
