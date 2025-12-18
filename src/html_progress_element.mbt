// Auto-generated MoonBit bindings for HTMLProgressElement interface
// Do not edit manually

#external
pub type HTMLProgressElement

pub impl TJsValue for HTMLProgressElement with to_js(self: HTMLProgressElement) -> JsValue = "%identity"


pub fn[T: THTMLProgressElement] HTMLProgressElement::into(self : HTMLProgressElement) -> T = "%identity"
pub impl THTMLProgressElement for HTMLProgressElement

pub fn HTMLProgressElement::new() -> HTMLProgressElement = "webapi_HTMLProgressElement" "new"

pub trait THTMLProgressElement: TJsValue + TTHTMLElement {
  value(self: Self) -> Double = _
  set_value(self: Self, value : Double) -> Unit = _
  max(self: Self) -> Double = _
  set_max(self: Self, value : Double) -> Unit = _
  position(self: Self) -> Double = _
  labels(self: Self) -> &TNodeList = _
}

///|
fn html_progress_element_value_ffi(obj : JsValue) -> Double = "webapi_HTMLProgressElement" "value"

///|
impl THTMLProgressElement with value(self : Self) -> Double {
  html_progress_element_value_ffi(self.to_js())
}

///|
fn html_progress_element_set_value_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLProgressElement" "set_value"

///|
impl THTMLProgressElement with set_value(self : Self, value : Double) -> Unit {
  html_progress_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_progress_element_max_ffi(obj : JsValue) -> Double = "webapi_HTMLProgressElement" "max"

///|
impl THTMLProgressElement with max(self : Self) -> Double {
  html_progress_element_max_ffi(self.to_js())
}

///|
fn html_progress_element_set_max_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLProgressElement" "set_max"

///|
impl THTMLProgressElement with set_max(self : Self, value : Double) -> Unit {
  html_progress_element_set_max_ffi(self.to_js(), value)
}

///|
fn html_progress_element_position_ffi(obj : JsValue) -> Double = "webapi_HTMLProgressElement" "position"

///|
impl THTMLProgressElement with position(self : Self) -> Double {
  html_progress_element_position_ffi(self.to_js())
}

///|
fn html_progress_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLProgressElement" "labels"

///|
impl THTMLProgressElement with labels(self : Self) -> &TNodeList {
  html_progress_element_labels_ffi(self.to_js()).unsafe_cast()
}