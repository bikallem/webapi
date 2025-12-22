///|
#external
pub type HTMLHRElement

///|
pub impl TJsValue for HTMLHRElement with to_js(self : HTMLHRElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLHRElement] HTMLHRElement::into(self : HTMLHRElement) -> T = "%identity"

///|
pub impl THTMLHRElement for HTMLHRElement

///|
pub impl THTMLElement for HTMLHRElement

///|
pub impl TElement for HTMLHRElement

///|
pub impl TNode for HTMLHRElement

///|
pub impl TEventTarget for HTMLHRElement

///|
extern "js" fn htmlhr_element_new_ffi() -> HTMLHRElement = "() => new HTMLHRElement()"

///|
pub fn HTMLHRElement::new() -> HTMLHRElement {
  htmlhr_element_new_ffi()
}

///|
pub trait THTMLHRElement: THTMLElement {}
