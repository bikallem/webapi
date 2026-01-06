// Do not edit. This file is generated.
// MoonBit type: HTMLEmbedElement
// Specifications: html.idl

///|
#external
pub type HTMLEmbedElement

///|
pub impl TJsValue for HTMLEmbedElement with to_js(self : HTMLEmbedElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLEmbedElement] HTMLEmbedElement::into(
  self : HTMLEmbedElement,
) -> T = "%identity"

///|
pub impl THTMLEmbedElement for HTMLEmbedElement

///|
pub impl THTMLElement for HTMLEmbedElement

///|
pub impl TElement for HTMLEmbedElement

///|
pub impl TNode for HTMLEmbedElement

///|
pub impl TEventTarget for HTMLEmbedElement

///|
extern "js" fn html_embed_element_new_ffi() -> HTMLEmbedElement = "() => new HTMLEmbedElement()"

///|
pub fn HTMLEmbedElement::new() -> HTMLEmbedElement {
  html_embed_element_new_ffi()
}

///|
pub trait THTMLEmbedElement: THTMLElement {
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  get_svg_document(self : Self) -> Document? = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
}

///|
extern "js" fn html_embed_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl THTMLEmbedElement with src(self : Self) -> String {
  html_embed_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_embed_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
impl THTMLEmbedElement with set_src(self : Self, src : String) -> Unit {
  html_embed_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn html_embed_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLEmbedElement with type_(self : Self) -> String {
  html_embed_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_embed_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl THTMLEmbedElement with set_type_(self : Self, type_ : String) -> Unit {
  html_embed_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn html_embed_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLEmbedElement with width(self : Self) -> String {
  html_embed_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_embed_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLEmbedElement with set_width(self : Self, width : String) -> Unit {
  html_embed_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_embed_element_height_ffi(obj : JsValue) -> String = "(obj) => obj.height"

///|
impl THTMLEmbedElement with height(self : Self) -> String {
  html_embed_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_embed_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLEmbedElement with set_height(self : Self, height : String) -> Unit {
  html_embed_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_embed_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument()"

///|
impl THTMLEmbedElement with get_svg_document(self : Self) -> Document? {
  let result = html_embed_element_get_svg_document_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn html_embed_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLEmbedElement with align(self : Self) -> String {
  html_embed_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_embed_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLEmbedElement with set_align(self : Self, align : String) -> Unit {
  html_embed_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_embed_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLEmbedElement with name(self : Self) -> String {
  html_embed_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_embed_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLEmbedElement with set_name(self : Self, name : String) -> Unit {
  html_embed_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}
