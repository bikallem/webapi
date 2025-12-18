// Auto-generated MoonBit bindings for HTMLFrameElement interface
// Do not edit manually

#external
pub type HTMLFrameElement

pub impl TJsValue for HTMLFrameElement with to_js(self: HTMLFrameElement) -> JsValue = "%identity"


pub fn[T: THTMLFrameElement] HTMLFrameElement::into(self : HTMLFrameElement) -> T = "%identity"
pub impl THTMLFrameElement for HTMLFrameElement

pub fn HTMLFrameElement::new() -> HTMLFrameElement = "webapi_HTMLFrameElement" "new"

pub trait THTMLFrameElement: TJsValue + TTHTMLElement {
  name(self: Self) -> String = _
  set_name(self: Self, value : String) -> Unit = _
  scrolling(self: Self) -> String = _
  set_scrolling(self: Self, value : String) -> Unit = _
  src(self: Self) -> String = _
  set_src(self: Self, value : String) -> Unit = _
  frame_border(self: Self) -> String = _
  set_frame_border(self: Self, value : String) -> Unit = _
  long_desc(self: Self) -> String = _
  set_long_desc(self: Self, value : String) -> Unit = _
  no_resize(self: Self) -> Bool = _
  set_no_resize(self: Self, value : Bool) -> Unit = _
  content_document(self: Self) -> &TDocument = _
  content_window(self: Self) -> WindowProxy = _
  margin_height(self: Self) -> String = _
  set_margin_height(self: Self, value : String) -> Unit = _
  margin_width(self: Self) -> String = _
  set_margin_width(self: Self, value : String) -> Unit = _
}

///|
fn h_t_m_l_frame_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "name"

///|
impl THTMLFrameElement with name(self : Self) -> String {
  h_t_m_l_frame_element_name_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_name"

///|
impl THTMLFrameElement with set_name(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_name_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_scrolling_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "scrolling"

///|
impl THTMLFrameElement with scrolling(self : Self) -> String {
  h_t_m_l_frame_element_scrolling_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_scrolling_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_scrolling"

///|
impl THTMLFrameElement with set_scrolling(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_scrolling_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "src"

///|
impl THTMLFrameElement with src(self : Self) -> String {
  h_t_m_l_frame_element_src_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_src"

///|
impl THTMLFrameElement with set_src(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_src_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_frame_border_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "frameBorder"

///|
impl THTMLFrameElement with frame_border(self : Self) -> String {
  h_t_m_l_frame_element_frame_border_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_frame_border_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_frameBorder"

///|
impl THTMLFrameElement with set_frame_border(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_frame_border_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_long_desc_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "longDesc"

///|
impl THTMLFrameElement with long_desc(self : Self) -> String {
  h_t_m_l_frame_element_long_desc_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_long_desc_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_longDesc"

///|
impl THTMLFrameElement with set_long_desc(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_long_desc_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_no_resize_ffi(obj : JsValue) -> Bool = "webapi_HTMLFrameElement" "noResize"

///|
impl THTMLFrameElement with no_resize(self : Self) -> Bool {
  h_t_m_l_frame_element_no_resize_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_no_resize_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLFrameElement" "set_noResize"

///|
impl THTMLFrameElement with set_no_resize(self : Self, value : Bool) -> Unit {
  h_t_m_l_frame_element_set_no_resize_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_content_document_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "contentDocument"

///|
impl THTMLFrameElement with content_document(self : Self) -> &TDocument {
  h_t_m_l_frame_element_content_document_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_frame_element_content_window_ffi(obj : JsValue) -> JsValue = "webapi_HTMLFrameElement" "contentWindow"

///|
impl THTMLFrameElement with content_window(self : Self) -> WindowProxy {
  h_t_m_l_frame_element_content_window_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_frame_element_margin_height_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "marginHeight"

///|
impl THTMLFrameElement with margin_height(self : Self) -> String {
  h_t_m_l_frame_element_margin_height_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_margin_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_marginHeight"

///|
impl THTMLFrameElement with set_margin_height(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_margin_height_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_frame_element_margin_width_ffi(obj : JsValue) -> String = "webapi_HTMLFrameElement" "marginWidth"

///|
impl THTMLFrameElement with margin_width(self : Self) -> String {
  h_t_m_l_frame_element_margin_width_ffi(self.to_js())
}

///|
fn h_t_m_l_frame_element_set_margin_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameElement" "set_marginWidth"

///|
impl THTMLFrameElement with set_margin_width(self : Self, value : String) -> Unit {
  h_t_m_l_frame_element_set_margin_width_ffi(self.to_js(), value)
}