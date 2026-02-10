// Do not edit. This file is generated.
// MoonBit type: HTMLIFrameElement
// Specifications: html.idl

/// [HTMLIFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement)
#external
pub type HTMLIFrameElement

pub impl TJsValue for HTMLIFrameElement with to_js(self: HTMLIFrameElement) -> JsValue = "%identity"

pub fn[T: THTMLIFrameElement] HTMLIFrameElement::into(self : HTMLIFrameElement) -> T = "%identity"

pub impl THTMLIFrameElement for HTMLIFrameElement

pub impl THTMLElement for HTMLIFrameElement

pub impl TElement for HTMLIFrameElement

pub impl TNode for HTMLIFrameElement

pub impl TEventTarget for HTMLIFrameElement

pub fn HTMLIFrameElement::new() -> HTMLIFrameElement {
  htmli_frame_element_new_ffi()
}

/// [HTMLIFrameElementSrcdoc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElementSrcdoc)
#external
pub type HTMLIFrameElementSrcdoc

pub fn[T: THTMLIFrameElementSrcdoc] HTMLIFrameElementSrcdoc::into(self : HTMLIFrameElementSrcdoc) -> T = "%identity"

pub impl THTMLIFrameElementSrcdoc for HTMLIFrameElementSrcdoc with to_js(self : HTMLIFrameElementSrcdoc) -> JsValue = "%identity"

pub(open) trait THTMLIFrameElementSrcdoc {
  to_js(self : Self) -> JsValue
}

pub impl THTMLIFrameElementSrcdoc for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

pub impl THTMLIFrameElementSrcdoc for String with to_js(self : String) -> JsValue = "%identity"

/// [HTMLIFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement) interface.
pub trait THTMLIFrameElement: THTMLElement {
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  srcdoc(self : Self) -> HTMLIFrameElementSrcdoc = _
  set_srcdoc(self : Self, srcdoc : &THTMLIFrameElementSrcdoc) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  sandbox(self : Self) -> DOMTokenList = _
  allow(self : Self) -> String = _
  set_allow(self : Self, allow : String) -> Unit = _
  allow_fullscreen(self : Self) -> Bool = _
  set_allow_fullscreen(self : Self, allow_fullscreen : Bool) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
  loading(self : Self) -> String = _
  set_loading(self : Self, loading : String) -> Unit = _
  content_document(self : Self) -> Document = _
  content_window(self : Self) -> WindowProxy = _
  get_svg_document(self : Self) -> Document? = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  scrolling(self : Self) -> String = _
  set_scrolling(self : Self, scrolling : String) -> Unit = _
  frame_border(self : Self) -> String = _
  set_frame_border(self : Self, frame_border : String) -> Unit = _
  long_desc(self : Self) -> String = _
  set_long_desc(self : Self, long_desc : String) -> Unit = _
  margin_height(self : Self) -> String = _
  set_margin_height(self : Self, margin_height : String) -> Unit = _
  margin_width(self : Self) -> String = _
  set_margin_width(self : Self, margin_width : String) -> Unit = _
}

/// [HTMLIFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/src)
impl THTMLIFrameElement with src(self : Self) -> String {
  htmli_frame_element_src_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/src)
impl THTMLIFrameElement with set_src(self : Self, 
src : String) -> Unit {
  htmli_frame_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLIFrameElement.srcdoc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/srcdoc)
impl THTMLIFrameElement with srcdoc(self : Self) -> HTMLIFrameElementSrcdoc {
  htmli_frame_element_srcdoc_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.srcdoc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/srcdoc)
impl THTMLIFrameElement with set_srcdoc(self : Self, 
srcdoc : &THTMLIFrameElementSrcdoc) -> Unit {
  htmli_frame_element_set_srcdoc_ffi(TJsValue::to_js(self), srcdoc.to_js())
}

/// [HTMLIFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/name)
impl THTMLIFrameElement with name(self : Self) -> String {
  htmli_frame_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/name)
impl THTMLIFrameElement with set_name(self : Self, 
name : String) -> Unit {
  htmli_frame_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLIFrameElement.sandbox](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/sandbox)
impl THTMLIFrameElement with sandbox(self : Self) -> DOMTokenList {
  htmli_frame_element_sandbox_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.allow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allow)
impl THTMLIFrameElement with allow(self : Self) -> String {
  htmli_frame_element_allow_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.allow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allow)
impl THTMLIFrameElement with set_allow(self : Self, 
allow : String) -> Unit {
  htmli_frame_element_set_allow_ffi(TJsValue::to_js(self), TJsValue::to_js(allow))
}

/// [HTMLIFrameElement.allowFullscreen](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allowFullscreen)
impl THTMLIFrameElement with allow_fullscreen(self : Self) -> Bool {
  htmli_frame_element_allow_fullscreen_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.allowFullscreen](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allowFullscreen)
impl THTMLIFrameElement with set_allow_fullscreen(self : Self, 
allow_fullscreen : Bool) -> Unit {
  htmli_frame_element_set_allow_fullscreen_ffi(TJsValue::to_js(self), TJsValue::to_js(allow_fullscreen))
}

/// [HTMLIFrameElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/width)
impl THTMLIFrameElement with width(self : Self) -> String {
  htmli_frame_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/width)
impl THTMLIFrameElement with set_width(self : Self, 
width : String) -> Unit {
  htmli_frame_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLIFrameElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/height)
impl THTMLIFrameElement with height(self : Self) -> String {
  htmli_frame_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/height)
impl THTMLIFrameElement with set_height(self : Self, 
height : String) -> Unit {
  htmli_frame_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLIFrameElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/referrerPolicy)
impl THTMLIFrameElement with referrer_policy(self : Self) -> String {
  htmli_frame_element_referrer_policy_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/referrerPolicy)
impl THTMLIFrameElement with set_referrer_policy(self : Self, 
referrer_policy : String) -> Unit {
  htmli_frame_element_set_referrer_policy_ffi(TJsValue::to_js(self), TJsValue::to_js(referrer_policy))
}

/// [HTMLIFrameElement.loading](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/loading)
impl THTMLIFrameElement with loading(self : Self) -> String {
  htmli_frame_element_loading_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.loading](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/loading)
impl THTMLIFrameElement with set_loading(self : Self, 
loading : String) -> Unit {
  htmli_frame_element_set_loading_ffi(TJsValue::to_js(self), TJsValue::to_js(loading))
}

/// [HTMLIFrameElement.contentDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/contentDocument)
impl THTMLIFrameElement with content_document(self : Self) -> Document {
  htmli_frame_element_content_document_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.contentWindow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/contentWindow)
impl THTMLIFrameElement with content_window(self : Self) -> WindowProxy {
  htmli_frame_element_content_window_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.getSVGDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/getSVGDocument)
impl THTMLIFrameElement with get_svg_document(self : Self) -> Document? {
  let result = htmli_frame_element_get_svg_document_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [HTMLIFrameElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/align)
impl THTMLIFrameElement with align(self : Self) -> String {
  htmli_frame_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/align)
impl THTMLIFrameElement with set_align(self : Self, 
align : String) -> Unit {
  htmli_frame_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

/// [HTMLIFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/scrolling)
impl THTMLIFrameElement with scrolling(self : Self) -> String {
  htmli_frame_element_scrolling_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/scrolling)
impl THTMLIFrameElement with set_scrolling(self : Self, 
scrolling : String) -> Unit {
  htmli_frame_element_set_scrolling_ffi(TJsValue::to_js(self), TJsValue::to_js(scrolling))
}

/// [HTMLIFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/frameBorder)
impl THTMLIFrameElement with frame_border(self : Self) -> String {
  htmli_frame_element_frame_border_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/frameBorder)
impl THTMLIFrameElement with set_frame_border(self : Self, 
frame_border : String) -> Unit {
  htmli_frame_element_set_frame_border_ffi(TJsValue::to_js(self), TJsValue::to_js(frame_border))
}

/// [HTMLIFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/longDesc)
impl THTMLIFrameElement with long_desc(self : Self) -> String {
  htmli_frame_element_long_desc_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/longDesc)
impl THTMLIFrameElement with set_long_desc(self : Self, 
long_desc : String) -> Unit {
  htmli_frame_element_set_long_desc_ffi(TJsValue::to_js(self), TJsValue::to_js(long_desc))
}

/// [HTMLIFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginHeight)
impl THTMLIFrameElement with margin_height(self : Self) -> String {
  htmli_frame_element_margin_height_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginHeight)
impl THTMLIFrameElement with set_margin_height(self : Self, 
margin_height : String) -> Unit {
  htmli_frame_element_set_margin_height_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_height))
}

/// [HTMLIFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginWidth)
impl THTMLIFrameElement with margin_width(self : Self) -> String {
  htmli_frame_element_margin_width_ffi(TJsValue::to_js(self))
}

/// [HTMLIFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginWidth)
impl THTMLIFrameElement with set_margin_width(self : Self, 
margin_width : String) -> Unit {
  htmli_frame_element_set_margin_width_ffi(TJsValue::to_js(self), TJsValue::to_js(margin_width))
}