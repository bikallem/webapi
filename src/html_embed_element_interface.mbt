// Do not edit. This file is generated.
// MoonBit type: HTMLEmbedElement
// Specifications: html.idl

/// [HTMLEmbedElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement)
#external
pub type HTMLEmbedElement

pub impl TJsValue for HTMLEmbedElement with to_js(self: HTMLEmbedElement) -> JsValue = "%identity"

pub fn[T: THTMLEmbedElement] HTMLEmbedElement::into(self : HTMLEmbedElement) -> T = "%identity"

pub impl THTMLEmbedElement for HTMLEmbedElement

pub impl THTMLElement for HTMLEmbedElement

pub impl TElement for HTMLEmbedElement

pub impl TNode for HTMLEmbedElement

pub impl TEventTarget for HTMLEmbedElement

pub fn HTMLEmbedElement::new() -> HTMLEmbedElement {
  html_embed_element_new_ffi()
}

/// [HTMLEmbedElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement) interface.
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

/// [HTMLEmbedElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/src)
impl THTMLEmbedElement with src(self : Self) -> String {
  html_embed_element_src_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLEmbedElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/src)
impl THTMLEmbedElement with set_src(self : Self, 
src : String) -> Unit {
  html_embed_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLEmbedElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/type)
impl THTMLEmbedElement with type_(self : Self) -> String {
  html_embed_element_type_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLEmbedElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/type)
impl THTMLEmbedElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_embed_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLEmbedElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/width)
impl THTMLEmbedElement with width(self : Self) -> String {
  html_embed_element_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLEmbedElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/width)
impl THTMLEmbedElement with set_width(self : Self, 
width : String) -> Unit {
  html_embed_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLEmbedElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/height)
impl THTMLEmbedElement with height(self : Self) -> String {
  html_embed_element_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLEmbedElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/height)
impl THTMLEmbedElement with set_height(self : Self, 
height : String) -> Unit {
  html_embed_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLEmbedElement.getSVGDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/getSVGDocument)
impl THTMLEmbedElement with get_svg_document(self : Self) -> Document? {
  let result = html_embed_element_get_svg_document_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [HTMLEmbedElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/align)
impl THTMLEmbedElement with align(self : Self) -> String {
  html_embed_element_align_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLEmbedElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/align)
impl THTMLEmbedElement with set_align(self : Self, 
align : String) -> Unit {
  html_embed_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

/// [HTMLEmbedElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/name)
impl THTMLEmbedElement with name(self : Self) -> String {
  html_embed_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLEmbedElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement/name)
impl THTMLEmbedElement with set_name(self : Self, 
name : String) -> Unit {
  html_embed_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}