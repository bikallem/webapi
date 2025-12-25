// Do not edit. This file is generated.
// MoonBit type: XMLDocument
// Specifications: dom.idl

///|
#external
pub type XMLDocument

///|
pub impl TJsValue for XMLDocument with to_js(self : XMLDocument) -> JsValue = "%identity"

///|
pub fn[T : TXMLDocument] XMLDocument::into(self : XMLDocument) -> T = "%identity"

///|
pub impl TXMLDocument for XMLDocument

///|
pub impl TDocument for XMLDocument

///|
pub impl TNode for XMLDocument

///|
pub impl TEventTarget for XMLDocument

///|
pub trait TXMLDocument: TDocument {}
