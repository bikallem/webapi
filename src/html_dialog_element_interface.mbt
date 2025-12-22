///|
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
extern "js" fn html_dialog_element_new_ffi() -> HTMLDialogElement = "() => new HTMLDialogElement()"

///|
pub fn HTMLDialogElement::new() -> HTMLDialogElement {
  html_dialog_element_new_ffi()
}

///|
pub trait THTMLDialogElement: THTMLElement {
  show(self : Self) -> Unit = _
  show_modal(self : Self) -> Unit = _
  close(self : Self, return_value? : String) -> Unit = _
  request_close(self : Self, return_value? : String) -> Unit = _
}

///|
extern "js" fn html_dialog_element_show_ffi(obj : JsValue) -> Unit = "(obj) => obj.show(obj)"

///|
impl THTMLDialogElement with show(self : Self) -> Unit {
  html_dialog_element_show_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_dialog_element_show_modal_ffi(obj : JsValue) -> Unit = "(obj) => obj.showModal(obj)"

///|
impl THTMLDialogElement with show_modal(self : Self) -> Unit {
  html_dialog_element_show_modal_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_dialog_element_close_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, return_value) => obj.close(obj, return_value)"

///|
impl THTMLDialogElement with close(self : Self, return_value? : String) -> Unit {
  html_dialog_element_close_ffi(TJsValue::to_js(self), opt_to_js(return_value))
}

///|
extern "js" fn html_dialog_element_request_close_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "(obj, return_value) => obj.requestClose(obj, return_value)"

///|
impl THTMLDialogElement with request_close(self : Self, return_value? : String) -> Unit {
  html_dialog_element_request_close_ffi(
    TJsValue::to_js(self),
    opt_to_js(return_value),
  )
}
