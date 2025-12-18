// Auto-generated MoonBit bindings for HTMLDialogElement interface
// Do not edit manually

#external
pub type HTMLDialogElement

pub impl TJsValue for HTMLDialogElement with to_js(self: HTMLDialogElement) -> JsValue = "%identity"


pub fn[T: THTMLDialogElement] HTMLDialogElement::into(self : HTMLDialogElement) -> T = "%identity"
pub impl THTMLDialogElement for HTMLDialogElement

pub fn HTMLDialogElement::new() -> HTMLDialogElement = "webapi_HTMLDialogElement" "new"

pub trait THTMLDialogElement: TJsValue + TTHTMLElement {
  open(self: Self) -> Bool = _
  set_open(self: Self, value : Bool) -> Unit = _
  return_value(self: Self) -> String = _
  set_return_value(self: Self, value : String) -> Unit = _
  closed_by(self: Self) -> String = _
  set_closed_by(self: Self, value : String) -> Unit = _
  show(self: Self) -> Unit = _
  show_modal(self: Self) -> Unit = _
  close(self: Self, return_value? : String) -> Unit = _
  request_close(self: Self, return_value? : String) -> Unit = _
}

///|
fn h_t_m_l_dialog_element_open_ffi(obj : JsValue) -> Bool = "webapi_HTMLDialogElement" "open"

///|
impl THTMLDialogElement with open(self : Self) -> Bool {
  h_t_m_l_dialog_element_open_ffi(self.to_js())
}

///|
fn h_t_m_l_dialog_element_set_open_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLDialogElement" "set_open"

///|
impl THTMLDialogElement with set_open(self : Self, value : Bool) -> Unit {
  h_t_m_l_dialog_element_set_open_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_dialog_element_return_value_ffi(obj : JsValue) -> String = "webapi_HTMLDialogElement" "returnValue"

///|
impl THTMLDialogElement with return_value(self : Self) -> String {
  h_t_m_l_dialog_element_return_value_ffi(self.to_js())
}

///|
fn h_t_m_l_dialog_element_set_return_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLDialogElement" "set_returnValue"

///|
impl THTMLDialogElement with set_return_value(self : Self, value : String) -> Unit {
  h_t_m_l_dialog_element_set_return_value_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_dialog_element_closed_by_ffi(obj : JsValue) -> String = "webapi_HTMLDialogElement" "closedBy"

///|
impl THTMLDialogElement with closed_by(self : Self) -> String {
  h_t_m_l_dialog_element_closed_by_ffi(self.to_js())
}

///|
fn h_t_m_l_dialog_element_set_closed_by_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLDialogElement" "set_closedBy"

///|
impl THTMLDialogElement with set_closed_by(self : Self, value : String) -> Unit {
  h_t_m_l_dialog_element_set_closed_by_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_dialog_element_show_ffi(obj : JsValue) -> Unit = "webapi_HTMLDialogElement" "show"

///|
impl THTMLDialogElement with show(self : Self) -> Unit {
  h_t_m_l_dialog_element_show_ffi(self.to_js())
}

///|
fn h_t_m_l_dialog_element_show_modal_ffi(obj : JsValue) -> Unit = "webapi_HTMLDialogElement" "showModal"

///|
impl THTMLDialogElement with show_modal(self : Self) -> Unit {
  h_t_m_l_dialog_element_show_modal_ffi(self.to_js())
}

///|
fn h_t_m_l_dialog_element_close_ffi(obj : JsValue, return_value : JsValue) -> Unit = "webapi_HTMLDialogElement" "close"

///|
impl THTMLDialogElement with close(self : Self, return_value? : String) -> Unit {
  h_t_m_l_dialog_element_close_ffi(self.to_js(), TJsValue::to_js(return_value))
}

///|
fn h_t_m_l_dialog_element_request_close_ffi(obj : JsValue, return_value : JsValue) -> Unit = "webapi_HTMLDialogElement" "requestClose"

///|
impl THTMLDialogElement with request_close(self : Self, return_value? : String) -> Unit {
  h_t_m_l_dialog_element_request_close_ffi(self.to_js(), TJsValue::to_js(return_value))
}