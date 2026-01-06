// Do not edit. This file is generated.
// MoonBit type: HTMLIFrameElement
// Specifications: html.idl

///|
#external
pub type HTMLIFrameElement

///|
pub impl TJsValue for HTMLIFrameElement with to_js(self : HTMLIFrameElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLIFrameElement] HTMLIFrameElement::into(
  self : HTMLIFrameElement,
) -> T = "%identity"

///|
pub impl THTMLIFrameElement for HTMLIFrameElement

///|
pub impl THTMLElement for HTMLIFrameElement

///|
pub impl TElement for HTMLIFrameElement

///|
pub impl TNode for HTMLIFrameElement

///|
pub impl TEventTarget for HTMLIFrameElement

///|
extern "js" fn htmli_frame_element_new_ffi() -> HTMLIFrameElement = "() => new HTMLIFrameElement()"

///|
pub fn HTMLIFrameElement::new() -> HTMLIFrameElement {
  htmli_frame_element_new_ffi()
}

///|
#external
pub type HTMLIFrameElementSrcdoc

///|
pub fn[T : THTMLIFrameElementSrcdoc] HTMLIFrameElementSrcdoc::into(
  self : HTMLIFrameElementSrcdoc,
) -> T = "%identity"

///|
pub impl THTMLIFrameElementSrcdoc for HTMLIFrameElementSrcdoc with to_js(
  self : HTMLIFrameElementSrcdoc,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLIFrameElementSrcdoc {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLIFrameElementSrcdoc for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl THTMLIFrameElementSrcdoc for String with to_js(self : String) -> JsValue = "%identity"

///|
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

///|
extern "js" fn htmli_frame_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl THTMLIFrameElement with src(self : Self) -> String {
  htmli_frame_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
impl THTMLIFrameElement with set_src(self : Self, src : String) -> Unit {
  htmli_frame_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn htmli_frame_element_srcdoc_ffi(
  obj : JsValue,
) -> HTMLIFrameElementSrcdoc = "(obj) => obj.srcdoc"

///|
impl THTMLIFrameElement with srcdoc(self : Self) -> HTMLIFrameElementSrcdoc {
  htmli_frame_element_srcdoc_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_srcdoc_ffi(
  obj : JsValue,
  srcdoc : JsValue,
) -> Unit = "(obj, srcdoc) => { obj.srcdoc = srcdoc; }"

///|
impl THTMLIFrameElement with set_srcdoc(
  self : Self,
  srcdoc : &THTMLIFrameElementSrcdoc,
) -> Unit {
  htmli_frame_element_set_srcdoc_ffi(TJsValue::to_js(self), srcdoc.to_js())
}

///|
extern "js" fn htmli_frame_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLIFrameElement with name(self : Self) -> String {
  htmli_frame_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLIFrameElement with set_name(self : Self, name : String) -> Unit {
  htmli_frame_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn htmli_frame_element_sandbox_ffi(obj : JsValue) -> DOMTokenList = "(obj) => obj.sandbox"

///|
impl THTMLIFrameElement with sandbox(self : Self) -> DOMTokenList {
  htmli_frame_element_sandbox_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_allow_ffi(obj : JsValue) -> String = "(obj) => obj.allow"

///|
impl THTMLIFrameElement with allow(self : Self) -> String {
  htmli_frame_element_allow_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_allow_ffi(
  obj : JsValue,
  allow : JsValue,
) -> Unit = "(obj, allow) => { obj.allow = allow; }"

///|
impl THTMLIFrameElement with set_allow(self : Self, allow : String) -> Unit {
  htmli_frame_element_set_allow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(allow),
  )
}

///|
extern "js" fn htmli_frame_element_allow_fullscreen_ffi(obj : JsValue) -> Bool = "(obj) => obj.allowFullscreen"

///|
impl THTMLIFrameElement with allow_fullscreen(self : Self) -> Bool {
  htmli_frame_element_allow_fullscreen_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_allow_fullscreen_ffi(
  obj : JsValue,
  allow_fullscreen : JsValue,
) -> Unit = "(obj, allowFullscreen) => { obj.allowFullscreen = allow_fullscreen; }"

///|
impl THTMLIFrameElement with set_allow_fullscreen(
  self : Self,
  allow_fullscreen : Bool,
) -> Unit {
  htmli_frame_element_set_allow_fullscreen_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(allow_fullscreen),
  )
}

///|
extern "js" fn htmli_frame_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLIFrameElement with width(self : Self) -> String {
  htmli_frame_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLIFrameElement with set_width(self : Self, width : String) -> Unit {
  htmli_frame_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn htmli_frame_element_height_ffi(obj : JsValue) -> String = "(obj) => obj.height"

///|
impl THTMLIFrameElement with height(self : Self) -> String {
  htmli_frame_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLIFrameElement with set_height(self : Self, height : String) -> Unit {
  htmli_frame_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn htmli_frame_element_referrer_policy_ffi(obj : JsValue) -> String = "(obj) => obj.referrerPolicy"

///|
impl THTMLIFrameElement with referrer_policy(self : Self) -> String {
  htmli_frame_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrer_policy; }"

///|
impl THTMLIFrameElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  htmli_frame_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
extern "js" fn htmli_frame_element_loading_ffi(obj : JsValue) -> String = "(obj) => obj.loading"

///|
impl THTMLIFrameElement with loading(self : Self) -> String {
  htmli_frame_element_loading_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "(obj, loading) => { obj.loading = loading; }"

///|
impl THTMLIFrameElement with set_loading(self : Self, loading : String) -> Unit {
  htmli_frame_element_set_loading_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(loading),
  )
}

///|
extern "js" fn htmli_frame_element_content_document_ffi(
  obj : JsValue,
) -> Document = "(obj) => obj.contentDocument"

///|
impl THTMLIFrameElement with content_document(self : Self) -> Document {
  htmli_frame_element_content_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_content_window_ffi(
  obj : JsValue,
) -> WindowProxy = "(obj) => obj.contentWindow"

///|
impl THTMLIFrameElement with content_window(self : Self) -> WindowProxy {
  htmli_frame_element_content_window_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument(obj)"

///|
impl THTMLIFrameElement with get_svg_document(self : Self) -> Document? {
  let result = htmli_frame_element_get_svg_document_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn htmli_frame_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLIFrameElement with align(self : Self) -> String {
  htmli_frame_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLIFrameElement with set_align(self : Self, align : String) -> Unit {
  htmli_frame_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn htmli_frame_element_scrolling_ffi(obj : JsValue) -> String = "(obj) => obj.scrolling"

///|
impl THTMLIFrameElement with scrolling(self : Self) -> String {
  htmli_frame_element_scrolling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "(obj, scrolling) => { obj.scrolling = scrolling; }"

///|
impl THTMLIFrameElement with set_scrolling(self : Self, scrolling : String) -> Unit {
  htmli_frame_element_set_scrolling_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scrolling),
  )
}

///|
extern "js" fn htmli_frame_element_frame_border_ffi(obj : JsValue) -> String = "(obj) => obj.frameBorder"

///|
impl THTMLIFrameElement with frame_border(self : Self) -> String {
  htmli_frame_element_frame_border_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "(obj, frameBorder) => { obj.frameBorder = frame_border; }"

///|
impl THTMLIFrameElement with set_frame_border(
  self : Self,
  frame_border : String,
) -> Unit {
  htmli_frame_element_set_frame_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(frame_border),
  )
}

///|
extern "js" fn htmli_frame_element_long_desc_ffi(obj : JsValue) -> String = "(obj) => obj.longDesc"

///|
impl THTMLIFrameElement with long_desc(self : Self) -> String {
  htmli_frame_element_long_desc_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = long_desc; }"

///|
impl THTMLIFrameElement with set_long_desc(self : Self, long_desc : String) -> Unit {
  htmli_frame_element_set_long_desc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(long_desc),
  )
}

///|
extern "js" fn htmli_frame_element_margin_height_ffi(obj : JsValue) -> String = "(obj) => obj.marginHeight"

///|
impl THTMLIFrameElement with margin_height(self : Self) -> String {
  htmli_frame_element_margin_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "(obj, marginHeight) => { obj.marginHeight = margin_height; }"

///|
impl THTMLIFrameElement with set_margin_height(
  self : Self,
  margin_height : String,
) -> Unit {
  htmli_frame_element_set_margin_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_height),
  )
}

///|
extern "js" fn htmli_frame_element_margin_width_ffi(obj : JsValue) -> String = "(obj) => obj.marginWidth"

///|
impl THTMLIFrameElement with margin_width(self : Self) -> String {
  htmli_frame_element_margin_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmli_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "(obj, marginWidth) => { obj.marginWidth = margin_width; }"

///|
impl THTMLIFrameElement with set_margin_width(
  self : Self,
  margin_width : String,
) -> Unit {
  htmli_frame_element_set_margin_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_width),
  )
}
