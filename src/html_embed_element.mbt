// Auto-generated MoonBit bindings for HTMLEmbedElement interface
// Do not edit manually

#external
pub type HTMLEmbedElement

pub impl TJsValue for HTMLEmbedElement with to_js(self: HTMLEmbedElement) -> JsValue = "%identity"


pub fn[T: THTMLEmbedElement] HTMLEmbedElement::into(self : HTMLEmbedElement) -> T = "%identity"
pub impl THTMLEmbedElement for HTMLEmbedElement

pub fn HTMLEmbedElement::new() -> HTMLEmbedElement = "webapi_HTMLEmbedElement" "new"

pub trait THTMLEmbedElement: TJsValue + TTHTMLElement {
  src(self: Self) -> String = _
  set_src(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
  height(self: Self) -> String = _
  set_height(self: Self, value : String) -> Unit = _
  get_svg_document(self: Self) -> &TDocument = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
}

///|
fn html_embed_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLEmbedElement" "src"

///|
impl THTMLEmbedElement with src(self : Self) -> String {
  html_embed_element_src_ffi(self.to_js())
}

///|
fn html_embed_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLEmbedElement" "set_src"

///|
impl THTMLEmbedElement with set_src(self : Self, value : String) -> Unit {
  html_embed_element_set_src_ffi(self.to_js(), value)
}

///|
fn html_embed_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLEmbedElement" "type"

///|
impl THTMLEmbedElement with type_(self : Self) -> String {
  html_embed_element_type_ffi(self.to_js())
}

///|
fn html_embed_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLEmbedElement" "set_type"

///|
impl THTMLEmbedElement with set_type_(self : Self, value : String) -> Unit {
  html_embed_element_set_type_ffi(self.to_js(), value)
}

///|
fn html_embed_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLEmbedElement" "width"

///|
impl THTMLEmbedElement with width(self : Self) -> String {
  html_embed_element_width_ffi(self.to_js())
}

///|
fn html_embed_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLEmbedElement" "set_width"

///|
impl THTMLEmbedElement with set_width(self : Self, value : String) -> Unit {
  html_embed_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_embed_element_height_ffi(obj : JsValue) -> String = "webapi_HTMLEmbedElement" "height"

///|
impl THTMLEmbedElement with height(self : Self) -> String {
  html_embed_element_height_ffi(self.to_js())
}

///|
fn html_embed_element_set_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLEmbedElement" "set_height"

///|
impl THTMLEmbedElement with set_height(self : Self, value : String) -> Unit {
  html_embed_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_embed_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLEmbedElement" "align"

///|
impl THTMLEmbedElement with align(self : Self) -> String {
  html_embed_element_align_ffi(self.to_js())
}

///|
fn html_embed_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLEmbedElement" "set_align"

///|
impl THTMLEmbedElement with set_align(self : Self, value : String) -> Unit {
  html_embed_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_embed_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLEmbedElement" "name"

///|
impl THTMLEmbedElement with name(self : Self) -> String {
  html_embed_element_name_ffi(self.to_js())
}

///|
fn html_embed_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLEmbedElement" "set_name"

///|
impl THTMLEmbedElement with set_name(self : Self, value : String) -> Unit {
  html_embed_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_embed_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLEmbedElement" "getSVGDocument"

///|
impl THTMLEmbedElement with get_svg_document(self : Self) -> &TDocument {
  html_embed_element_get_svg_document_ffi(self.to_js()).unsafe_cast()
}