// Auto-generated MoonBit bindings for HTMLSourceElement interface
// Do not edit manually

#external
pub type HTMLSourceElement

pub impl TJsValue for HTMLSourceElement with to_js(self: HTMLSourceElement) -> JsValue = "%identity"


pub fn[T: THTMLSourceElement] HTMLSourceElement::into(self : HTMLSourceElement) -> T = "%identity"
pub impl THTMLSourceElement for HTMLSourceElement

pub fn HTMLSourceElement::new() -> HTMLSourceElement = "webapi_HTMLSourceElement" "new"

pub trait THTMLSourceElement: TJsValue + TTHTMLElement {
  src(self: Self) -> String = _
  set_src(self: Self, value : String) -> Unit = _
  type_(self: Self) -> String = _
  set_type_(self: Self, value : String) -> Unit = _
  srcset(self: Self) -> String = _
  set_srcset(self: Self, value : String) -> Unit = _
  sizes(self: Self) -> String = _
  set_sizes(self: Self, value : String) -> Unit = _
  media(self: Self) -> String = _
  set_media(self: Self, value : String) -> Unit = _
  width(self: Self) -> UInt = _
  set_width(self: Self, value : UInt) -> Unit = _
  height(self: Self) -> UInt = _
  set_height(self: Self, value : UInt) -> Unit = _
}

///|
fn h_t_m_l_source_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLSourceElement" "src"

///|
impl THTMLSourceElement with src(self : Self) -> String {
  h_t_m_l_source_element_src_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSourceElement" "set_src"

///|
impl THTMLSourceElement with set_src(self : Self, value : String) -> Unit {
  h_t_m_l_source_element_set_src_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_source_element_type_ffi(obj : JsValue) -> String = "webapi_HTMLSourceElement" "type"

///|
impl THTMLSourceElement with type_(self : Self) -> String {
  h_t_m_l_source_element_type_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_type_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSourceElement" "set_type"

///|
impl THTMLSourceElement with set_type_(self : Self, value : String) -> Unit {
  h_t_m_l_source_element_set_type_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_source_element_srcset_ffi(obj : JsValue) -> String = "webapi_HTMLSourceElement" "srcset"

///|
impl THTMLSourceElement with srcset(self : Self) -> String {
  h_t_m_l_source_element_srcset_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_srcset_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSourceElement" "set_srcset"

///|
impl THTMLSourceElement with set_srcset(self : Self, value : String) -> Unit {
  h_t_m_l_source_element_set_srcset_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_source_element_sizes_ffi(obj : JsValue) -> String = "webapi_HTMLSourceElement" "sizes"

///|
impl THTMLSourceElement with sizes(self : Self) -> String {
  h_t_m_l_source_element_sizes_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_sizes_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSourceElement" "set_sizes"

///|
impl THTMLSourceElement with set_sizes(self : Self, value : String) -> Unit {
  h_t_m_l_source_element_set_sizes_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_source_element_media_ffi(obj : JsValue) -> String = "webapi_HTMLSourceElement" "media"

///|
impl THTMLSourceElement with media(self : Self) -> String {
  h_t_m_l_source_element_media_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_media_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLSourceElement" "set_media"

///|
impl THTMLSourceElement with set_media(self : Self, value : String) -> Unit {
  h_t_m_l_source_element_set_media_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_source_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLSourceElement" "width"

///|
impl THTMLSourceElement with width(self : Self) -> UInt {
  h_t_m_l_source_element_width_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_width_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLSourceElement" "set_width"

///|
impl THTMLSourceElement with set_width(self : Self, value : UInt) -> Unit {
  h_t_m_l_source_element_set_width_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_source_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLSourceElement" "height"

///|
impl THTMLSourceElement with height(self : Self) -> UInt {
  h_t_m_l_source_element_height_ffi(self.to_js())
}

///|
fn h_t_m_l_source_element_set_height_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLSourceElement" "set_height"

///|
impl THTMLSourceElement with set_height(self : Self, value : UInt) -> Unit {
  h_t_m_l_source_element_set_height_ffi(self.to_js(), value)
}