// Do not edit. This file is generated.
// MoonBit type: HTMLFrameElement
// Specifications: html.idl

///|
#external
pub type HTMLFrameElement

///|
pub impl TJsValue for HTMLFrameElement with to_js(self : HTMLFrameElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFrameElement] HTMLFrameElement::into(
  self : HTMLFrameElement,
) -> T = "%identity"

///|
pub impl THTMLFrameElement for HTMLFrameElement

///|
pub impl THTMLElement for HTMLFrameElement

///|
pub impl TElement for HTMLFrameElement

///|
pub impl TNode for HTMLFrameElement

///|
pub impl TEventTarget for HTMLFrameElement

///|
extern "js" fn html_frame_element_new_ffi() -> HTMLFrameElement = "() => new HTMLFrameElement()"

///|
pub fn HTMLFrameElement::new() -> HTMLFrameElement {
  html_frame_element_new_ffi()
}

///|
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

///|
extern "js" fn html_frame_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLFrameElement with name(self : Self) -> String {
  html_frame_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLFrameElement with set_name(self : Self, name : String) -> Unit {
  html_frame_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_frame_element_scrolling_ffi(obj : JsValue) -> String = "(obj) => obj.scrolling"

///|
impl THTMLFrameElement with scrolling(self : Self) -> String {
  html_frame_element_scrolling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "(obj, scrolling) => { obj.scrolling = scrolling; }"

///|
impl THTMLFrameElement with set_scrolling(self : Self, scrolling : String) -> Unit {
  html_frame_element_set_scrolling_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scrolling),
  )
}

///|
extern "js" fn html_frame_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl THTMLFrameElement with src(self : Self) -> String {
  html_frame_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
impl THTMLFrameElement with set_src(self : Self, src : String) -> Unit {
  html_frame_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn html_frame_element_frame_border_ffi(obj : JsValue) -> String = "(obj) => obj.frameBorder"

///|
impl THTMLFrameElement with frame_border(self : Self) -> String {
  html_frame_element_frame_border_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "(obj, frameBorder) => { obj.frameBorder = frame_border; }"

///|
impl THTMLFrameElement with set_frame_border(self : Self, frame_border : String) -> Unit {
  html_frame_element_set_frame_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(frame_border),
  )
}

///|
extern "js" fn html_frame_element_long_desc_ffi(obj : JsValue) -> String = "(obj) => obj.longDesc"

///|
impl THTMLFrameElement with long_desc(self : Self) -> String {
  html_frame_element_long_desc_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = long_desc; }"

///|
impl THTMLFrameElement with set_long_desc(self : Self, long_desc : String) -> Unit {
  html_frame_element_set_long_desc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(long_desc),
  )
}

///|
extern "js" fn html_frame_element_no_resize_ffi(obj : JsValue) -> Bool = "(obj) => obj.noResize"

///|
impl THTMLFrameElement with no_resize(self : Self) -> Bool {
  html_frame_element_no_resize_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_no_resize_ffi(
  obj : JsValue,
  no_resize : JsValue,
) -> Unit = "(obj, noResize) => { obj.noResize = no_resize; }"

///|
impl THTMLFrameElement with set_no_resize(self : Self, no_resize : Bool) -> Unit {
  html_frame_element_set_no_resize_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_resize),
  )
}

///|
extern "js" fn html_frame_element_content_document_ffi(
  obj : JsValue,
) -> Document = "(obj) => obj.contentDocument"

///|
impl THTMLFrameElement with content_document(self : Self) -> Document {
  html_frame_element_content_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_content_window_ffi(
  obj : JsValue,
) -> WindowProxy = "(obj) => obj.contentWindow"

///|
impl THTMLFrameElement with content_window(self : Self) -> WindowProxy {
  html_frame_element_content_window_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_margin_height_ffi(obj : JsValue) -> String = "(obj) => obj.marginHeight"

///|
impl THTMLFrameElement with margin_height(self : Self) -> String {
  html_frame_element_margin_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "(obj, marginHeight) => { obj.marginHeight = margin_height; }"

///|
impl THTMLFrameElement with set_margin_height(
  self : Self,
  margin_height : String,
) -> Unit {
  html_frame_element_set_margin_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_height),
  )
}

///|
extern "js" fn html_frame_element_margin_width_ffi(obj : JsValue) -> String = "(obj) => obj.marginWidth"

///|
impl THTMLFrameElement with margin_width(self : Self) -> String {
  html_frame_element_margin_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "(obj, marginWidth) => { obj.marginWidth = margin_width; }"

///|
impl THTMLFrameElement with set_margin_width(self : Self, margin_width : String) -> Unit {
  html_frame_element_set_margin_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_width),
  )
}
