// Auto-generated MoonBit bindings for HTMLFrameSetElement interface
// Do not edit manually

#external
pub type HTMLFrameSetElement

pub impl TJsValue for HTMLFrameSetElement with to_js(self: HTMLFrameSetElement) -> JsValue = "%identity"


pub fn[T: THTMLFrameSetElement] HTMLFrameSetElement::into(self : HTMLFrameSetElement) -> T = "%identity"
pub impl THTMLFrameSetElement for HTMLFrameSetElement

pub fn HTMLFrameSetElement::new() -> HTMLFrameSetElement = "webapi_HTMLFrameSetElement" "new"

pub trait THTMLFrameSetElement: TJsValue + TTHTMLElement {
  cols(self: Self) -> String = _
  set_cols(self: Self, value : String) -> Unit = _
  rows(self: Self) -> String = _
  set_rows(self: Self, value : String) -> Unit = _
}

///|
fn html_frame_set_element_cols_ffi(obj : JsValue) -> String = "webapi_HTMLFrameSetElement" "cols"

///|
impl THTMLFrameSetElement with cols(self : Self) -> String {
  html_frame_set_element_cols_ffi(self.to_js())
}

///|
fn html_frame_set_element_set_cols_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameSetElement" "set_cols"

///|
impl THTMLFrameSetElement with set_cols(self : Self, value : String) -> Unit {
  html_frame_set_element_set_cols_ffi(self.to_js(), value)
}

///|
fn html_frame_set_element_rows_ffi(obj : JsValue) -> String = "webapi_HTMLFrameSetElement" "rows"

///|
impl THTMLFrameSetElement with rows(self : Self) -> String {
  html_frame_set_element_rows_ffi(self.to_js())
}

///|
fn html_frame_set_element_set_rows_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLFrameSetElement" "set_rows"

///|
impl THTMLFrameSetElement with set_rows(self : Self, value : String) -> Unit {
  html_frame_set_element_set_rows_ffi(self.to_js(), value)
}