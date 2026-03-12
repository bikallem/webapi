// Do not edit. This file is generated.
// MoonBit type: XMLDocument
// Specifications: dom.idl

/// [XMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/XMLDocument)
#external
pub type XMLDocument

pub impl TJsValue for XMLDocument with to_js(self: XMLDocument) -> JsValue = "%identity"

pub impl FromJsAny for XMLDocument with from_js_any(value : JsAny) -> XMLDocument = "%identity"

pub fn[T: TXMLDocument] XMLDocument::into(self : XMLDocument) -> T = "%identity"

pub impl TXMLDocument for XMLDocument

pub impl TDocument for XMLDocument

pub impl TNode for XMLDocument

pub impl TEventTarget for XMLDocument

/// [XMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/XMLDocument) interface.
pub trait TXMLDocument: TDocument {

}

