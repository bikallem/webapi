// Do not edit. This file is generated.
// MoonBit type: HTMLFrameElement
// Specifications: html.idl

/// [HTMLFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement)
#external
pub type HTMLFrameElement

pub impl TJsValue for HTMLFrameElement with to_js(self: HTMLFrameElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLFrameElement with from_js_any(value : JsAny) -> HTMLFrameElement = "%identity"

pub fn[T: THTMLFrameElement] HTMLFrameElement::into(self : HTMLFrameElement) -> T = "%identity"

pub impl THTMLFrameElement for HTMLFrameElement

pub impl THTMLElement for HTMLFrameElement

pub impl TElement for HTMLFrameElement

pub impl TNode for HTMLFrameElement

pub impl TEventTarget for HTMLFrameElement

pub fn HTMLFrameElement::new() -> HTMLFrameElement {
  html_frame_element_new_ffi()
}

/// [HTMLFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement) interface.
pub trait THTMLFrameElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  scrolling(self : Self) -> String = _
  set_scrolling(self : Self, scrolling : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  frame_border(self : Self) -> String = _
  set_frame_border(self : Self, frame_border : String) -> Unit = _
  long_desc(self : Self) -> String = _
  set_long_desc(self : Self, long_desc : String) -> Unit = _
  no_resize(self : Self) -> Bool = _
  set_no_resize(self : Self, no_resize : Bool) -> Unit = _
  content_document(self : Self) -> Document = _
  content_window(self : Self) -> WindowProxy = _
  margin_height(self : Self) -> String = _
  set_margin_height(self : Self, margin_height : String) -> Unit = _
  margin_width(self : Self) -> String = _
  set_margin_width(self : Self, margin_width : String) -> Unit = _
}

/// [HTMLFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/name)
impl THTMLFrameElement with name(self : Self) -> String {
  html_frame_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/name)
impl THTMLFrameElement with set_name(self : Self, 
name : String) -> Unit {
  html_frame_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/scrolling)
impl THTMLFrameElement with scrolling(self : Self) -> String {
  html_frame_element_scrolling_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/scrolling)
impl THTMLFrameElement with set_scrolling(self : Self, 
scrolling : String) -> Unit {
  html_frame_element_set_scrolling_ffi(TJsValue::to_js(self), TJsValue::to_js(scrolling))
}

/// [HTMLFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/src)
impl THTMLFrameElement with src(self : Self) -> String {
  html_frame_element_src_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/src)
impl THTMLFrameElement with set_src(self : Self, 
src : String) -> Unit {
  html_frame_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/frameBorder)
impl THTMLFrameElement with frame_border(self : Self) -> String {
  html_frame_element_frame_border_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/frameBorder)
impl THTMLFrameElement with set_frame_border(self : Self, 
frame_border : String) -> Unit {
  html_frame_element_set_frame_border_ffi(TJsValue::to_js(self), TJsValue::to_js(frame_border))
}

/// [HTMLFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/longDesc)
impl THTMLFrameElement with long_desc(self : Self) -> String {
  html_frame_element_long_desc_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/longDesc)
impl THTMLFrameElement with set_long_desc(self : Self, 
long_desc : String) -> Unit {
  html_frame_element_set_long_desc_ffi(TJsValue::to_js(self), TJsValue::to_js(long_desc))
}

/// [HTMLFrameElement.noResize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/noResize)
impl THTMLFrameElement with no_resize(self : Self) -> Bool {
  html_frame_element_no_resize_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.noResize](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/noResize)
impl THTMLFrameElement with set_no_resize(self : Self, 
no_resize : Bool) -> Unit {
  html_frame_element_set_no_resize_ffi(TJsValue::to_js(self), TJsValue::to_js(no_resize))
}

/// [HTMLFrameElement.contentDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/contentDocument)
impl THTMLFrameElement with content_document(self : Self) -> Document {
  html_frame_element_content_document_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.contentWindow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/contentWindow)
impl THTMLFrameElement with content_window(self : Self) -> WindowProxy {
  html_frame_element_content_window_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginHeight)
impl THTMLFrameElement with margin_height(self : Self) -> String {
  html_frame_element_margin_height_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginHeight)
impl THTMLFrameElement with set_margin_height(self : Self, 
margin_height : String) -> Unit {
  html_frame_element_set_margin_height_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_height))
}

/// [HTMLFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginWidth)
impl THTMLFrameElement with margin_width(self : Self) -> String {
  html_frame_element_margin_width_ffi(TJsValue::to_js(self))
}

/// [HTMLFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement/marginWidth)
impl THTMLFrameElement with set_margin_width(self : Self, 
margin_width : String) -> Unit {
  html_frame_element_set_margin_width_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_width))
}