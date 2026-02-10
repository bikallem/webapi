// Do not edit. This file is generated.
// MoonBit type: HTMLDialogElement
// Specifications: html.idl

///|
/// [HTMLDialogElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement)
#external
pub type HTMLDialogElement

///|
pub impl TJsValue for HTMLDialogElement with to_js(self : HTMLDialogElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDialogElement] HTMLDialogElement::into(
  self : HTMLDialogElement,
) -> T = "%identity"

///|
pub impl THTMLDialogElement for HTMLDialogElement

///|
pub impl THTMLElement for HTMLDialogElement

///|
pub impl TElement for HTMLDialogElement

///|
pub impl TNode for HTMLDialogElement

///|
pub impl TEventTarget for HTMLDialogElement

///|
pub fn HTMLDialogElement::new() -> HTMLDialogElement {
  html_dialog_element_new_ffi()
}

///|
/// [HTMLDialogElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement) interface.
pub trait THTMLDialogElement: THTMLElement {
  open(self : Self) -> Bool = _
  set_open(self : Self, open : Bool) -> Unit = _
  return_value(self : Self) -> String = _
  set_return_value(self : Self, return_value : String) -> Unit = _
  closed_by(self : Self) -> String = _
  set_closed_by(self : Self, closed_by : String) -> Unit = _
  show(self : Self) -> Unit = _
  show_modal(self : Self) -> Unit = _
  close(self : Self, return_value? : String) -> Unit = _
  request_close(self : Self, return_value? : String) -> Unit = _
}

///|
/// [HTMLDialogElement.open](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/open)
impl THTMLDialogElement with open(self : Self) -> Bool {
  html_dialog_element_open_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDialogElement.open](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/open)
impl THTMLDialogElement with set_open(self : Self, open : Bool) -> Unit {
  html_dialog_element_set_open_ffi(TJsValue::to_js(self), TJsValue::to_js(open))
}

///|
/// [HTMLDialogElement.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/returnValue)
impl THTMLDialogElement with return_value(self : Self) -> String {
  html_dialog_element_return_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDialogElement.returnValue](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/returnValue)
impl THTMLDialogElement with set_return_value(
  self : Self,
  return_value : String,
) -> Unit {
  html_dialog_element_set_return_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(return_value),
  )
}

///|
/// [HTMLDialogElement.closedBy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/closedBy)
impl THTMLDialogElement with closed_by(self : Self) -> String {
  html_dialog_element_closed_by_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDialogElement.closedBy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/closedBy)
impl THTMLDialogElement with set_closed_by(self : Self, closed_by : String) -> Unit {
  html_dialog_element_set_closed_by_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(closed_by),
  )
}

///|
/// [HTMLDialogElement.show](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/show)
impl THTMLDialogElement with show(self : Self) -> Unit {
  html_dialog_element_show_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDialogElement.showModal](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/showModal)
impl THTMLDialogElement with show_modal(self : Self) -> Unit {
  html_dialog_element_show_modal_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDialogElement.close](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/close)
impl THTMLDialogElement with close(self : Self, return_value? : String) -> Unit {
  html_dialog_element_close_ffi(TJsValue::to_js(self), opt_to_js(return_value))
}

///|
/// [HTMLDialogElement.requestClose](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDialogElement/requestClose)
impl THTMLDialogElement with request_close(self : Self, return_value? : String) -> Unit {
  html_dialog_element_request_close_ffi(
    TJsValue::to_js(self),
    opt_to_js(return_value),
  )
}
