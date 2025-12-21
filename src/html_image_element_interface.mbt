///|
#external
pub type HTMLImageElement

///|
pub impl TJsValue for HTMLImageElement with to_js(self : HTMLImageElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLImageElement] HTMLImageElement::into(
  self : HTMLImageElement,
) -> T = "%identity"

///|
pub impl THTMLImageElement for HTMLImageElement

///|
pub impl THTMLElement for HTMLImageElement

///|
pub impl TElement for HTMLImageElement

///|
pub impl TNode for HTMLImageElement

///|
pub impl TEventTarget for HTMLImageElement

///|
extern "js" fn html_image_element_ffi() -> HTMLImageElement = "() => new HTMLImageElement()"

///|
pub fn HTMLImageElement::new() -> HTMLImageElement {
  html_image_element_ffi()
}

///|
pub trait THTMLImageElement: THTMLElement {
  decode(self : Self) -> JsValue = _
}

///|
extern "js" fn html_image_element_decode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.decode(obj)"

///|
impl THTMLImageElement with decode(self : Self) -> JsValue {
  html_image_element_decode_ffi(TJsValue::to_js(self))
}
