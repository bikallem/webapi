///|
#external
pub type HTMLEmbedElement

///|
pub impl TJsValue for HTMLEmbedElement with to_js(self : HTMLEmbedElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLEmbedElement] HTMLEmbedElement::into(
  self : HTMLEmbedElement,
) -> T = "%identity"

///|
pub impl THTMLEmbedElement for HTMLEmbedElement

///|
pub impl THTMLElement for HTMLEmbedElement

///|
pub impl TElement for HTMLEmbedElement

///|
pub impl TNode for HTMLEmbedElement

///|
pub impl TEventTarget for HTMLEmbedElement

///|
extern "js" fn html_embed_element_ffi() -> HTMLEmbedElement = "() => new HTMLEmbedElement()"

///|
pub fn HTMLEmbedElement::new() -> HTMLEmbedElement {
  html_embed_element_ffi()
}

///|
pub trait THTMLEmbedElement: THTMLElement {
  get_svg_document(self : Self) -> JsValue = _
}

///|
extern "js" fn html_embed_element_get_svg_document_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getSVGDocument(obj)"

///|
impl THTMLEmbedElement with get_svg_document(self : Self) -> JsValue {
  html_embed_element_get_svg_document_ffi(TJsValue::to_js(self))
}
