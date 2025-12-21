///|
#external
pub type HTMLIFrameElement

///|
pub impl TJsValue for HTMLIFrameElement with to_js(self : HTMLIFrameElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLIFrameElement] HTMLIFrameElement::into(
  self : HTMLIFrameElement,
) -> T = "%identity"

///|
pub impl THTMLIFrameElement for HTMLIFrameElement

///|
pub impl THTMLElement for HTMLIFrameElement

///|
pub impl TElement for HTMLIFrameElement

///|
pub impl TNode for HTMLIFrameElement

///|
pub impl TEventTarget for HTMLIFrameElement

///|
extern "js" fn htmli_frame_element_ffi() -> HTMLIFrameElement = "() => new HTMLIFrameElement()"

///|
pub fn HTMLIFrameElement::new() -> HTMLIFrameElement {
  htmli_frame_element_ffi()
}

///|
pub trait THTMLIFrameElement: THTMLElement {
  get_svg_document(self : Self) -> JsValue = _
}

///|
extern "js" fn htmli_frame_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument(obj)"

///|
impl THTMLIFrameElement with get_svg_document(self : Self) -> JsValue {
  htmli_frame_element_get_svg_document_ffi(TJsValue::to_js(self))
}
