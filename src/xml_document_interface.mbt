// Do not edit. This file is generated.
// MoonBit type: XMLDocument
// Specifications: dom.idl

/// [XMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/XMLDocument)
#external
pub type XMLDocument

pub impl TJsValue for XMLDocument with to_js(self: XMLDocument) -> JsValue = "%identity"

pub impl FromJsAny for XMLDocument with from_js_any(value : JsAny) -> XMLDocument = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TXMLDocument] XMLDocument::into(self : XMLDocument) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TXMLDocument] XMLDocument::unsafe_into(self : XMLDocument) -> T = "%identity"

pub impl HasConstructor for XMLDocument with constructor_name() { "XMLDocument" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TXMLDocument + HasConstructor] XMLDocument::try_into(self : XMLDocument) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TXMLDocument for XMLDocument

pub impl TDocument for XMLDocument

pub impl TNode for XMLDocument

pub impl TEventTarget for XMLDocument

/// [XMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/XMLDocument) interface.
pub trait TXMLDocument: TDocument {

}

