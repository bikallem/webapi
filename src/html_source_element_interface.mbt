// Do not edit. This file is generated.
// MoonBit type: HTMLSourceElement
// Specifications: html.idl

///|
/// [HTMLSourceElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement)
#external
pub type HTMLSourceElement

///|
pub impl TJsValue for HTMLSourceElement with to_js(self : HTMLSourceElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSourceElement] HTMLSourceElement::into(
  self : HTMLSourceElement,
) -> T = "%identity"

///|
pub impl THTMLSourceElement for HTMLSourceElement

///|
pub impl THTMLElement for HTMLSourceElement

///|
pub impl TElement for HTMLSourceElement

///|
pub impl TNode for HTMLSourceElement

///|
pub impl TEventTarget for HTMLSourceElement

///|
pub fn HTMLSourceElement::new() -> HTMLSourceElement {
  html_source_element_new_ffi()
}

///|
/// [HTMLSourceElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement) interface.
pub trait THTMLSourceElement: THTMLElement {
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  srcset(self : Self) -> String = _
  set_srcset(self : Self, srcset : String) -> Unit = _
  sizes(self : Self) -> String = _
  set_sizes(self : Self, sizes : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
}

///|
/// [HTMLSourceElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/src)
impl THTMLSourceElement with src(self : Self) -> String {
  html_source_element_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/src)
impl THTMLSourceElement with set_src(self : Self, src : String) -> Unit {
  html_source_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLSourceElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/type)
impl THTMLSourceElement with type_(self : Self) -> String {
  html_source_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/type)
impl THTMLSourceElement with set_type_(self : Self, type_ : String) -> Unit {
  html_source_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
/// [HTMLSourceElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/srcset)
impl THTMLSourceElement with srcset(self : Self) -> String {
  html_source_element_srcset_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/srcset)
impl THTMLSourceElement with set_srcset(self : Self, srcset : String) -> Unit {
  html_source_element_set_srcset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(srcset),
  )
}

///|
/// [HTMLSourceElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/sizes)
impl THTMLSourceElement with sizes(self : Self) -> String {
  html_source_element_sizes_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/sizes)
impl THTMLSourceElement with set_sizes(self : Self, sizes : String) -> Unit {
  html_source_element_set_sizes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sizes),
  )
}

///|
/// [HTMLSourceElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/media)
impl THTMLSourceElement with media(self : Self) -> String {
  html_source_element_media_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.media](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/media)
impl THTMLSourceElement with set_media(self : Self, media : String) -> Unit {
  html_source_element_set_media_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(media),
  )
}

///|
/// [HTMLSourceElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/width)
impl THTMLSourceElement with width(self : Self) -> UInt {
  html_source_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/width)
impl THTMLSourceElement with set_width(self : Self, width : UInt) -> Unit {
  html_source_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLSourceElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/height)
impl THTMLSourceElement with height(self : Self) -> UInt {
  html_source_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLSourceElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement/height)
impl THTMLSourceElement with set_height(self : Self, height : UInt) -> Unit {
  html_source_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}
