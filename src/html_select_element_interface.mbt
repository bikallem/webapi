///|
#external
pub type HTMLSelectElement

///|
pub impl TJsValue for HTMLSelectElement with to_js(self : HTMLSelectElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSelectElement] HTMLSelectElement::into(
  self : HTMLSelectElement,
) -> T = "%identity"

///|
pub impl THTMLSelectElement for HTMLSelectElement

///|
pub impl THTMLElement for HTMLSelectElement

///|
pub impl TElement for HTMLSelectElement

///|
pub impl TNode for HTMLSelectElement

///|
pub impl TEventTarget for HTMLSelectElement

///|
extern "js" fn html_select_element_new_ffi() -> HTMLSelectElement = "() => new HTMLSelectElement()"

///|
pub fn HTMLSelectElement::new() -> HTMLSelectElement {
  html_select_element_new_ffi()
}

///|
pub(open) trait THTMLSelectElementAddElement {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLSelectElementAddElement for HTMLOptionElement with to_js(
  self : HTMLOptionElement,
) -> JsValue = "%identity"

///|
pub impl THTMLSelectElementAddElement for HTMLOptGroupElement with to_js(
  self : HTMLOptGroupElement,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLSelectElementAddBefore {
  to_js(self : Self) -> JsValue
}

///|
pub impl THTMLSelectElementAddBefore for HTMLElement with to_js(
  self : HTMLElement,
) -> JsValue = "%identity"

///|
pub impl THTMLSelectElementAddBefore for Int with to_js(self : Int) -> JsValue = "%identity"

///|
pub trait THTMLSelectElement: THTMLElement {
  named_item(self : Self, name : String) -> HTMLOptionElement = _
  add(
    self : Self,
    element : &THTMLSelectElementAddElement,
    before? : &THTMLSelectElementAddBefore,
  ) -> Unit = _
  remove(self : Self) -> Unit = _
  remove_2(self : Self, index : Int) -> Unit = _
  check_validity(self : Self) -> Bool = _
  report_validity(self : Self) -> Bool = _
  set_custom_validity(self : Self, error : String) -> Unit = _
  show_picker(self : Self) -> Unit = _
}

///|
extern "js" fn html_select_element_named_item_ffi(
  obj : JsValue,
  name : JsValue,
) -> HTMLOptionElement = "(obj, name) => obj.namedItem(obj, name)"

///|
impl THTMLSelectElement with named_item(self : Self, name : String) -> HTMLOptionElement {
  html_select_element_named_item_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
extern "js" fn html_select_element_add_ffi(
  obj : JsValue,
  element : JsValue,
  before : JsValue,
) -> Unit = "(obj, element, before) => obj.add(obj, element, before)"

///|
impl THTMLSelectElement with add(
  self : Self,
  element : &THTMLSelectElementAddElement,
  before? : &THTMLSelectElementAddBefore = JsValue::null(),
) -> Unit {
  html_select_element_add_ffi(
    TJsValue::to_js(self),
    element.to_js(),
    before.to_js(),
  )
}

///|
extern "js" fn html_select_element_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove(obj)"

///|
impl THTMLSelectElement with remove(self : Self) -> Unit {
  html_select_element_remove_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_remove_2_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.remove_2(obj, index)"

///|
impl THTMLSelectElement with remove_2(self : Self, index : Int) -> Unit {
  html_select_element_remove_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_select_element_check_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.checkValidity(obj)"

///|
impl THTMLSelectElement with check_validity(self : Self) -> Bool {
  html_select_element_check_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_report_validity_ffi(obj : JsValue) -> Bool = "(obj) => obj.reportValidity(obj)"

///|
impl THTMLSelectElement with report_validity(self : Self) -> Bool {
  html_select_element_report_validity_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_select_element_set_custom_validity_ffi(
  obj : JsValue,
  error : JsValue,
) -> Unit = "(obj, error) => obj.setCustomValidity(obj, error)"

///|
impl THTMLSelectElement with set_custom_validity(self : Self, error : String) -> Unit {
  html_select_element_set_custom_validity_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(error),
  )
}

///|
extern "js" fn html_select_element_show_picker_ffi(obj : JsValue) -> Unit = "(obj) => obj.showPicker(obj)"

///|
impl THTMLSelectElement with show_picker(self : Self) -> Unit {
  html_select_element_show_picker_ffi(TJsValue::to_js(self))
}
