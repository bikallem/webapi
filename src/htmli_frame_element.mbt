// Auto-generated MoonBit bindings for HTMLIFrameElement interface
// Do not edit manually

#external
pub type HTMLIFrameElement

pub impl TJsValue for HTMLIFrameElement with to_js(self: HTMLIFrameElement) -> JsValue = "%identity"


pub fn[T: THTMLIFrameElement] HTMLIFrameElement::into(self : HTMLIFrameElement) -> T = "%identity"
pub impl THTMLIFrameElement for HTMLIFrameElement

pub fn HTMLIFrameElement::new() -> HTMLIFrameElement = "webapi_HTMLIFrameElement" "new"

pub trait THTMLIFrameElement: TJsValue + TTHTMLElement {
  src(self: Self) -> String = _
  set_src(self: Self, value : String) -> Unit = _
  srcdoc(self: Self) -> JsValue = _
  set_srcdoc(self: Self, value : JsValue) -> Unit = _
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  sandbox(self: Self) -> &TDOMTokenList = _
  allow(self: Self) -> String = _
  set_allow(self: Self, value : String) -> Unit = _
  allow_fullscreen(self: Self) -> Bool = _
  set_allow_fullscreen(self: Self, value : Bool) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
  height(self: Self) -> String = _
  set_height(self: Self, value : String) -> Unit = _
  referrer_policy(self: Self) -> String = _
  set_referrer_policy(self: Self, value : String) -> Unit = _
  loading(self: Self) -> String = _
  set_loading(self: Self, value : String) -> Unit = _
  content_document(self: Self) -> &TDocument = _
  content_window(self: Self) -> WindowProxy = _
  get_svg_document(self: Self) -> &TDocument = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  scrolling(self: Self) -> String = _
  set_scrolling(self: Self, value : String) -> Unit = _
  frame_border(self: Self) -> String = _
  set_frame_border(self: Self, value : String) -> Unit = _
  long_desc(self: Self) -> String = _
  set_long_desc(self: Self, value : String) -> Unit = _
  margin_height(self: Self) -> String = _
  set_margin_height(self: Self, value : String) -> Unit = _
  margin_width(self: Self) -> String = _
  set_margin_width(self: Self, value : String) -> Unit = _
}

///|
fn htmli_frame_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "src"

///|
impl THTMLIFrameElement with src(self : Self) -> String {
  htmli_frame_element_src_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_src"

///|
impl THTMLIFrameElement with set_src(self : Self, value : String) -> Unit {
  htmli_frame_element_set_src_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_srcdoc_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "srcdoc"

///|
impl THTMLIFrameElement with srcdoc(self : Self) -> JsValue {
  htmli_frame_element_srcdoc_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_srcdoc_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLIFrameElement" "set_srcdoc"

///|
impl THTMLIFrameElement with set_srcdoc(self : Self, value : JsValue) -> Unit {
  htmli_frame_element_set_srcdoc_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "name"

///|
impl THTMLIFrameElement with name(self : Self) -> String {
  htmli_frame_element_name_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_name"

///|
impl THTMLIFrameElement with set_name(self : Self, value : String) -> Unit {
  htmli_frame_element_set_name_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_sandbox_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "sandbox"

///|
impl THTMLIFrameElement with sandbox(self : Self) -> &TDOMTokenList {
  htmli_frame_element_sandbox_ffi(self.to_js()).unsafe_cast()
}

///|
fn htmli_frame_element_allow_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "allow"

///|
impl THTMLIFrameElement with allow(self : Self) -> String {
  htmli_frame_element_allow_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_allow_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_allow"

///|
impl THTMLIFrameElement with set_allow(self : Self, value : String) -> Unit {
  htmli_frame_element_set_allow_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_allow_fullscreen_ffi(obj : JsValue) -> Bool = "webapi_HTMLIFrameElement" "allowFullscreen"

///|
impl THTMLIFrameElement with allow_fullscreen(self : Self) -> Bool {
  htmli_frame_element_allow_fullscreen_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_allow_fullscreen_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLIFrameElement" "set_allowFullscreen"

///|
impl THTMLIFrameElement with set_allow_fullscreen(self : Self, value : Bool) -> Unit {
  htmli_frame_element_set_allow_fullscreen_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "width"

///|
impl THTMLIFrameElement with width(self : Self) -> String {
  htmli_frame_element_width_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_width"

///|
impl THTMLIFrameElement with set_width(self : Self, value : String) -> Unit {
  htmli_frame_element_set_width_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_height_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "height"

///|
impl THTMLIFrameElement with height(self : Self) -> String {
  htmli_frame_element_height_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_height"

///|
impl THTMLIFrameElement with set_height(self : Self, value : String) -> Unit {
  htmli_frame_element_set_height_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_referrer_policy_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "referrerPolicy"

///|
impl THTMLIFrameElement with referrer_policy(self : Self) -> String {
  htmli_frame_element_referrer_policy_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_referrer_policy_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_referrerPolicy"

///|
impl THTMLIFrameElement with set_referrer_policy(self : Self, value : String) -> Unit {
  htmli_frame_element_set_referrer_policy_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_loading_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "loading"

///|
impl THTMLIFrameElement with loading(self : Self) -> String {
  htmli_frame_element_loading_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_loading_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_loading"

///|
impl THTMLIFrameElement with set_loading(self : Self, value : String) -> Unit {
  htmli_frame_element_set_loading_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_content_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "contentDocument"

///|
impl THTMLIFrameElement with content_document(self : Self) -> &TDocument {
  htmli_frame_element_content_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn htmli_frame_element_content_window_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "contentWindow"

///|
impl THTMLIFrameElement with content_window(self : Self) -> WindowProxy {
  htmli_frame_element_content_window_ffi(self.to_js()).unsafe_cast()
}

///|
fn htmli_frame_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "align"

///|
impl THTMLIFrameElement with align(self : Self) -> String {
  htmli_frame_element_align_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_align"

///|
impl THTMLIFrameElement with set_align(self : Self, value : String) -> Unit {
  htmli_frame_element_set_align_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_scrolling_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "scrolling"

///|
impl THTMLIFrameElement with scrolling(self : Self) -> String {
  htmli_frame_element_scrolling_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_scrolling_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_scrolling"

///|
impl THTMLIFrameElement with set_scrolling(self : Self, value : String) -> Unit {
  htmli_frame_element_set_scrolling_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_frame_border_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "frameBorder"

///|
impl THTMLIFrameElement with frame_border(self : Self) -> String {
  htmli_frame_element_frame_border_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_frame_border_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_frameBorder"

///|
impl THTMLIFrameElement with set_frame_border(self : Self, value : String) -> Unit {
  htmli_frame_element_set_frame_border_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_long_desc_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "longDesc"

///|
impl THTMLIFrameElement with long_desc(self : Self) -> String {
  htmli_frame_element_long_desc_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_long_desc_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_longDesc"

///|
impl THTMLIFrameElement with set_long_desc(self : Self, value : String) -> Unit {
  htmli_frame_element_set_long_desc_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_margin_height_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "marginHeight"

///|
impl THTMLIFrameElement with margin_height(self : Self) -> String {
  htmli_frame_element_margin_height_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_margin_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_marginHeight"

///|
impl THTMLIFrameElement with set_margin_height(self : Self, value : String) -> Unit {
  htmli_frame_element_set_margin_height_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_margin_width_ffi(obj : JsValue) -> String = "webapi_HTMLIFrameElement" "marginWidth"

///|
impl THTMLIFrameElement with margin_width(self : Self) -> String {
  htmli_frame_element_margin_width_ffi(self.to_js())
}

///|
fn htmli_frame_element_set_margin_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLIFrameElement" "set_marginWidth"

///|
impl THTMLIFrameElement with set_margin_width(self : Self, value : String) -> Unit {
  htmli_frame_element_set_margin_width_ffi(self.to_js(), value)
}

///|
fn htmli_frame_element_get_svg_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLIFrameElement" "getSVGDocument"

///|
impl THTMLIFrameElement with get_svg_document(self : Self) -> &TDocument {
  htmli_frame_element_get_svg_document_ffi(self.to_js()).unsafe_cast()
}