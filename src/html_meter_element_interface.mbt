///|
#external
pub type HTMLMeterElement

///|
pub impl TJsValue for HTMLMeterElement with to_js(self : HTMLMeterElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMeterElement] HTMLMeterElement::into(
  self : HTMLMeterElement,
) -> T = "%identity"

///|
pub impl THTMLMeterElement for HTMLMeterElement

///|
pub impl THTMLElement for HTMLMeterElement

///|
pub impl TElement for HTMLMeterElement

///|
pub impl TNode for HTMLMeterElement

///|
pub impl TEventTarget for HTMLMeterElement

///|
extern "js" fn html_meter_element_new_ffi() -> HTMLMeterElement = "() => new HTMLMeterElement()"

///|
pub fn HTMLMeterElement::new() -> HTMLMeterElement {
  html_meter_element_new_ffi()
}

///|
pub trait THTMLMeterElement: THTMLElement {}
