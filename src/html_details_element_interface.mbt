///|
#external
pub type HTMLDetailsElement

///|
pub impl TJsValue for HTMLDetailsElement with to_js(self : HTMLDetailsElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDetailsElement] HTMLDetailsElement::into(
  self : HTMLDetailsElement,
) -> T = "%identity"

///|
pub impl THTMLDetailsElement for HTMLDetailsElement

///|
pub impl THTMLElement for HTMLDetailsElement

///|
pub impl TElement for HTMLDetailsElement

///|
pub impl TNode for HTMLDetailsElement

///|
pub impl TEventTarget for HTMLDetailsElement

///|
extern "js" fn html_details_element_new_ffi() -> HTMLDetailsElement = "() => new HTMLDetailsElement()"

///|
pub fn HTMLDetailsElement::new() -> HTMLDetailsElement {
  html_details_element_new_ffi()
}

///|
pub trait THTMLDetailsElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  open(self : Self) -> Bool = _
  set_open(self : Self, open : Bool) -> Unit = _
}

///|
extern "js" fn html_details_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLDetailsElement with name(self : Self) -> String {
  html_details_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_details_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLDetailsElement with set_name(self : Self, name : String) -> Unit {
  html_details_element_set_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
extern "js" fn html_details_element_open_ffi(obj : JsValue) -> Bool = "(obj) => obj.open"

///|
impl THTMLDetailsElement with open(self : Self) -> Bool {
  html_details_element_open_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_details_element_set_open_ffi(
  obj : JsValue,
  open : JsValue,
) -> Unit = "(obj, open) => { obj.open = open; }"

///|
impl THTMLDetailsElement with set_open(self : Self, open : Bool) -> Unit {
  html_details_element_set_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(open),
  )
}
