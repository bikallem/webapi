// Do not edit. This file is generated.
// MoonBit type: HTMLIFrameElement
// Specifications: html.idl

///|
/// [HTMLIFrameElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement)
#external
pub type HTMLIFrameElement

///|
pub impl TJsValue for HTMLIFrameElement with to_js(self : HTMLIFrameElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLIFrameElement with from_js_any(value : JsAny) -> HTMLIFrameElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLIFrameElement] HTMLIFrameElement::into(
  self : HTMLIFrameElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLIFrameElement] HTMLIFrameElement::unsafe_into(
  self : HTMLIFrameElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLIFrameElement with constructor_name() {
  "HTMLIFrameElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLIFrameElement + HasConstructor] HTMLIFrameElement::try_into(
  self : HTMLIFrameElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
pub fn HTMLIFrameElement::new() -> HTMLIFrameElement {
  htmli_frame_element_new_ffi()
}

///|
pub(open) trait THTMLIFrameElementSrcdoc: TJsValue {}

///|
pub impl THTMLIFrameElementSrcdoc for TrustedHTML

///|
pub impl THTMLIFrameElementSrcdoc for String

///|
#external
pub type HTMLIFrameElementSrcdoc

///|
pub impl TJsValue for HTMLIFrameElementSrcdoc with to_js(
  self : HTMLIFrameElementSrcdoc,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLIFrameElementSrcdoc with from_js_any(value : JsAny) -> HTMLIFrameElementSrcdoc = "%identity"

///|
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLIFrameElementSrcdoc + FromJsAny] HTMLIFrameElementSrcdoc::into(
  self : HTMLIFrameElementSrcdoc,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLIFrameElementSrcdoc + FromJsAny] HTMLIFrameElementSrcdoc::unsafe_into(
  self : HTMLIFrameElementSrcdoc,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLIFrameElementSrcdoc] HTMLIFrameElementSrcdoc::from(
  value : T,
) -> HTMLIFrameElementSrcdoc = "%identity"

///|
pub impl THTMLIFrameElementSrcdoc for HTMLIFrameElementSrcdoc

///|
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
  get_svg_document_opt(self : Self) -> Document? = _
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
  get_svg_document(self : Self) -> Document = _
}

///|
/// [HTMLIFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/src)
impl THTMLIFrameElement with src(self : Self) -> String {
  htmli_frame_element_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/src)
impl THTMLIFrameElement with set_src(self : Self, src : String) -> Unit {
  htmli_frame_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLIFrameElement.srcdoc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/srcdoc)
impl THTMLIFrameElement with srcdoc(self : Self) -> HTMLIFrameElementSrcdoc {
  htmli_frame_element_srcdoc_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.srcdoc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/srcdoc)
impl THTMLIFrameElement with set_srcdoc(
  self : Self,
  srcdoc : &THTMLIFrameElementSrcdoc,
) -> Unit {
  htmli_frame_element_set_srcdoc_ffi(TJsValue::to_js(self), srcdoc.to_js())
}

///|
/// [HTMLIFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/name)
impl THTMLIFrameElement with name(self : Self) -> String {
  htmli_frame_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/name)
impl THTMLIFrameElement with set_name(self : Self, name : String) -> Unit {
  htmli_frame_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLIFrameElement.sandbox](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/sandbox)
impl THTMLIFrameElement with sandbox(self : Self) -> DOMTokenList {
  htmli_frame_element_sandbox_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.allow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allow)
impl THTMLIFrameElement with allow(self : Self) -> String {
  htmli_frame_element_allow_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.allow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allow)
impl THTMLIFrameElement with set_allow(self : Self, allow : String) -> Unit {
  htmli_frame_element_set_allow_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(allow),
  )
}

///|
/// [HTMLIFrameElement.allowFullscreen](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allowFullscreen)
impl THTMLIFrameElement with allow_fullscreen(self : Self) -> Bool {
  htmli_frame_element_allow_fullscreen_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.allowFullscreen](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/allowFullscreen)
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
/// [HTMLIFrameElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/width)
impl THTMLIFrameElement with width(self : Self) -> String {
  htmli_frame_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/width)
impl THTMLIFrameElement with set_width(self : Self, width : String) -> Unit {
  htmli_frame_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLIFrameElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/height)
impl THTMLIFrameElement with height(self : Self) -> String {
  htmli_frame_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/height)
impl THTMLIFrameElement with set_height(self : Self, height : String) -> Unit {
  htmli_frame_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
/// [HTMLIFrameElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/referrerPolicy)
impl THTMLIFrameElement with referrer_policy(self : Self) -> String {
  htmli_frame_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/referrerPolicy)
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
/// [HTMLIFrameElement.loading](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/loading)
impl THTMLIFrameElement with loading(self : Self) -> String {
  htmli_frame_element_loading_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.loading](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/loading)
impl THTMLIFrameElement with set_loading(self : Self, loading : String) -> Unit {
  htmli_frame_element_set_loading_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(loading),
  )
}

///|
/// [HTMLIFrameElement.contentDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/contentDocument)
impl THTMLIFrameElement with content_document(self : Self) -> Document {
  htmli_frame_element_content_document_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.contentWindow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/contentWindow)
impl THTMLIFrameElement with content_window(self : Self) -> WindowProxy {
  htmli_frame_element_content_window_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.getSVGDocument](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/getSVGDocument)
impl THTMLIFrameElement with get_svg_document_opt(self : Self) -> Document? {
  htmli_frame_element_get_svg_document_ffi(TJsValue::to_js(self)).to_option()
}

///|
/// [HTMLIFrameElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/align)
impl THTMLIFrameElement with align(self : Self) -> String {
  htmli_frame_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/align)
impl THTMLIFrameElement with set_align(self : Self, align : String) -> Unit {
  htmli_frame_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLIFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/scrolling)
impl THTMLIFrameElement with scrolling(self : Self) -> String {
  htmli_frame_element_scrolling_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.scrolling](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/scrolling)
impl THTMLIFrameElement with set_scrolling(self : Self, scrolling : String) -> Unit {
  htmli_frame_element_set_scrolling_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scrolling),
  )
}

///|
/// [HTMLIFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/frameBorder)
impl THTMLIFrameElement with frame_border(self : Self) -> String {
  htmli_frame_element_frame_border_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.frameBorder](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/frameBorder)
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
/// [HTMLIFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/longDesc)
impl THTMLIFrameElement with long_desc(self : Self) -> String {
  htmli_frame_element_long_desc_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/longDesc)
impl THTMLIFrameElement with set_long_desc(self : Self, long_desc : String) -> Unit {
  htmli_frame_element_set_long_desc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(long_desc),
  )
}

///|
/// [HTMLIFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginHeight)
impl THTMLIFrameElement with margin_height(self : Self) -> String {
  htmli_frame_element_margin_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.marginHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginHeight)
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
/// [HTMLIFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginWidth)
impl THTMLIFrameElement with margin_width(self : Self) -> String {
  htmli_frame_element_margin_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLIFrameElement.marginWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement/marginWidth)
impl THTMLIFrameElement with set_margin_width(
  self : Self,
  margin_width : String,
) -> Unit {
  htmli_frame_element_set_margin_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(margin_width),
  )
}

///|
impl THTMLIFrameElement with get_svg_document(self : Self) -> Document {
  self.get_svg_document_opt().unwrap()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_new_ffi() -> HTMLIFrameElement = "() => new HTMLIFrameElement()"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn htmli_frame_element_src_ffi(obj : JsValue) -> String {
  htmli_frame_element_src_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_srcdoc_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.srcdoc"

///|
#cfg(target="js")
fn htmli_frame_element_srcdoc_ffi(obj : JsValue) -> HTMLIFrameElementSrcdoc {
  htmli_frame_element_srcdoc_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_srcdoc_ffi(
  obj : JsValue,
  srcdoc : JsValue,
) -> Unit = "(obj, srcdoc) => { obj.srcdoc = srcdoc; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn htmli_frame_element_name_ffi(obj : JsValue) -> String {
  htmli_frame_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_sandbox_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sandbox"

///|
#cfg(target="js")
fn htmli_frame_element_sandbox_ffi(obj : JsValue) -> DOMTokenList {
  htmli_frame_element_sandbox_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_allow_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.allow"

///|
#cfg(target="js")
fn htmli_frame_element_allow_ffi(obj : JsValue) -> String {
  htmli_frame_element_allow_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_allow_ffi(
  obj : JsValue,
  allow : JsValue,
) -> Unit = "(obj, allow) => { obj.allow = allow; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_allow_fullscreen_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.allowFullscreen"

///|
#cfg(target="js")
fn htmli_frame_element_allow_fullscreen_ffi(obj : JsValue) -> Bool {
  htmli_frame_element_allow_fullscreen_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_allow_fullscreen_ffi(
  obj : JsValue,
  allow_fullscreen : JsValue,
) -> Unit = "(obj, allowFullscreen) => { obj.allowFullscreen = allowFullscreen; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn htmli_frame_element_width_ffi(obj : JsValue) -> String {
  htmli_frame_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn htmli_frame_element_height_ffi(obj : JsValue) -> String {
  htmli_frame_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_referrer_policy_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn htmli_frame_element_referrer_policy_ffi(obj : JsValue) -> String {
  htmli_frame_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_loading_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.loading"

///|
#cfg(target="js")
fn htmli_frame_element_loading_ffi(obj : JsValue) -> String {
  htmli_frame_element_loading_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "(obj, loading) => { obj.loading = loading; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_content_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentDocument"

///|
#cfg(target="js")
fn htmli_frame_element_content_document_ffi(obj : JsValue) -> Document {
  htmli_frame_element_content_document_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_content_window_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.contentWindow"

///|
#cfg(target="js")
fn htmli_frame_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  htmli_frame_element_content_window_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument()"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn htmli_frame_element_align_ffi(obj : JsValue) -> String {
  htmli_frame_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_scrolling_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.scrolling"

///|
#cfg(target="js")
fn htmli_frame_element_scrolling_ffi(obj : JsValue) -> String {
  htmli_frame_element_scrolling_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "(obj, scrolling) => { obj.scrolling = scrolling; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_frame_border_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.frameBorder"

///|
#cfg(target="js")
fn htmli_frame_element_frame_border_ffi(obj : JsValue) -> String {
  htmli_frame_element_frame_border_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "(obj, frameBorder) => { obj.frameBorder = frameBorder; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_long_desc_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.longDesc"

///|
#cfg(target="js")
fn htmli_frame_element_long_desc_ffi(obj : JsValue) -> String {
  htmli_frame_element_long_desc_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = longDesc; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_margin_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.marginHeight"

///|
#cfg(target="js")
fn htmli_frame_element_margin_height_ffi(obj : JsValue) -> String {
  htmli_frame_element_margin_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "(obj, marginHeight) => { obj.marginHeight = marginHeight; }"

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_margin_width_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.marginWidth"

///|
#cfg(target="js")
fn htmli_frame_element_margin_width_ffi(obj : JsValue) -> String {
  htmli_frame_element_margin_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmli_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "(obj, marginWidth) => { obj.marginWidth = marginWidth; }"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_new_ffi() -> HTMLIFrameElement = "webapi_HTMLIFrameElement" "new"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_src"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_src_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_src"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_srcdoc_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_srcdoc"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_srcdoc_ffi(obj : JsValue) -> HTMLIFrameElementSrcdoc {
  htmli_frame_element_srcdoc_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_srcdoc_ffi(obj : JsValue, srcdoc : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_srcdoc"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_name"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_name"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_sandbox_ffi(obj : JsValue) -> DOMTokenList = "webapi_HTMLIFrameElement" "get_sandbox"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_allow_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_allow"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_allow_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_allow_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_allow_ffi(obj : JsValue, allow : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_allow"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_allow_fullscreen_ffi(obj : JsValue) -> Bool = "webapi_HTMLIFrameElement" "get_allowFullscreen"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_allow_fullscreen_ffi(
  obj : JsValue,
  allow_fullscreen : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_allowFullscreen"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_width"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_width_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_width"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_height"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_height_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_height"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_referrer_policy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_referrer_policy_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_referrer_policy_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_loading_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_loading"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_loading_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_loading_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_loading"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_content_document_ffi(obj : JsValue) -> Document = "webapi_HTMLIFrameElement" "get_contentDocument"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_content_window_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_contentWindow"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_content_window_ffi(obj : JsValue) -> WindowProxy {
  htmli_frame_element_content_window_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "getSVGDocument"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_align"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_align"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_scrolling_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_scrolling"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_scrolling_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_scrolling_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_scrolling_ffi(
  obj : JsValue,
  scrolling : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_scrolling"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_frame_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_frameBorder"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_frame_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_frame_border_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_frame_border_ffi(
  obj : JsValue,
  frame_border : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_frameBorder"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_long_desc_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_longDesc"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_long_desc_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_long_desc_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_longDesc"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_margin_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_marginHeight"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_margin_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_margin_height_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_margin_height_ffi(
  obj : JsValue,
  margin_height : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_marginHeight"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_margin_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "get_marginWidth"

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_margin_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmli_frame_element_margin_width_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmli_frame_element_set_margin_width_ffi(
  obj : JsValue,
  margin_width : JsValue,
) -> Unit = "webapi_HTMLIFrameElement" "set_marginWidth"
