// Auto-generated MoonBit bindings for HTMLStyleElement interface
// Do not edit manually

#external
pub type HTMLStyleElement

pub impl TJsValue for HTMLStyleElement with to_js(self: HTMLStyleElement) -> JsValue = "%identity"


pub fn[T: THTMLStyleElement] HTMLStyleElement::into(self : HTMLStyleElement) -> T = "%identity"
pub impl THTMLStyleElement for HTMLStyleElement

pub fn HTMLStyleElement::new() -> HTMLStyleElement = "webapi_HTMLStyleElement" "new"

pub trait THTMLStyleElement: TJsValue + TTHTMLElement {
  disabled(self: Self) -> Bool = _
  set_disabled(self: Self, value : Bool) -> Unit = _
  media(self: Self) -> String = _
  set_media(self: Self, value : String) -> Unit = _
  blocking(self: Self) -> &TDOMTokenList = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
}

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
impl THTMLStyleElement with blocking(self : Self) -> &TDOMTokenList {
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