// Auto-generated MoonBit bindings for HTMLMetaElement interface
// Do not edit manually

#external
pub type HTMLMetaElement

pub impl TJsValue for HTMLMetaElement with to_js(self: HTMLMetaElement) -> JsValue = "%identity"


pub fn[T: THTMLMetaElement] HTMLMetaElement::into(self : HTMLMetaElement) -> T = "%identity"
pub impl THTMLMetaElement for HTMLMetaElement

pub fn HTMLMetaElement::new() -> HTMLMetaElement = "webapi_HTMLMetaElement" "new"

pub trait THTMLMetaElement: TJsValue + TTHTMLElement {
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  http_equiv(self: Self) -> String = _
  set_http_equiv(self: Self, value : String) -> Unit = _
  content(self: Self) -> String = _
  set_content(self: Self, value : String) -> Unit = _
  media(self: Self) -> String = _
  set_media(self: Self, value : String) -> Unit = _
  scheme(self: Self) -> String = _
  set_scheme(self: Self, value : String) -> Unit = _
}

///|
fn html_meta_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLMetaElement" "name"

///|
impl THTMLMetaElement with name(self : Self) -> String {
  html_meta_element_name_ffi(self.to_js())
}

///|
fn html_meta_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMetaElement" "set_name"

///|
impl THTMLMetaElement with set_name(self : Self, value : String) -> Unit {
  html_meta_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_meta_element_http_equiv_ffi(obj : JsValue) -> String = "webapi_HTMLMetaElement" "httpEquiv"

///|
impl THTMLMetaElement with http_equiv(self : Self) -> String {
  html_meta_element_http_equiv_ffi(self.to_js())
}

///|
fn html_meta_element_set_http_equiv_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMetaElement" "set_httpEquiv"

///|
impl THTMLMetaElement with set_http_equiv(self : Self, value : String) -> Unit {
  html_meta_element_set_http_equiv_ffi(self.to_js(), value)
}

///|
fn html_meta_element_content_ffi(obj : JsValue) -> String = "webapi_HTMLMetaElement" "content"

///|
impl THTMLMetaElement with content(self : Self) -> String {
  html_meta_element_content_ffi(self.to_js())
}

///|
fn html_meta_element_set_content_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMetaElement" "set_content"

///|
impl THTMLMetaElement with set_content(self : Self, value : String) -> Unit {
  html_meta_element_set_content_ffi(self.to_js(), value)
}

///|
fn html_meta_element_media_ffi(obj : JsValue) -> String = "webapi_HTMLMetaElement" "media"

///|
impl THTMLMetaElement with media(self : Self) -> String {
  html_meta_element_media_ffi(self.to_js())
}

///|
fn html_meta_element_set_media_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMetaElement" "set_media"

///|
impl THTMLMetaElement with set_media(self : Self, value : String) -> Unit {
  html_meta_element_set_media_ffi(self.to_js(), value)
}

///|
fn html_meta_element_scheme_ffi(obj : JsValue) -> String = "webapi_HTMLMetaElement" "scheme"

///|
impl THTMLMetaElement with scheme(self : Self) -> String {
  html_meta_element_scheme_ffi(self.to_js())
}

///|
fn html_meta_element_set_scheme_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMetaElement" "set_scheme"

///|
impl THTMLMetaElement with set_scheme(self : Self, value : String) -> Unit {
  html_meta_element_set_scheme_ffi(self.to_js(), value)
}