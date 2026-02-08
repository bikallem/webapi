// Do not edit. This file is generated.
// MoonBit type: DOMImplementation
// Specifications: dom.idl

///|
/// [DOMImplementation](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation)
#external
pub type DOMImplementation

///|
pub impl TJsValue for DOMImplementation with to_js(self : DOMImplementation) -> JsValue = "%identity"

///|
pub fn[T : TDOMImplementation] DOMImplementation::into(
  self : DOMImplementation,
) -> T = "%identity"

///|
pub impl TDOMImplementation for DOMImplementation

///|
/// [DOMImplementation](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation) interface.
pub trait TDOMImplementation: TJsValue {
  create_document_type(
    self : Self,
    name : String,
    public_id : String,
    system_id : String,
  ) -> DocumentType = _
  create_document(
    self : Self,
    namespace_ : String,
    qualified_name : String,
    doctype? : &TDocumentType,
  ) -> XMLDocument = _
  create_html_document(self : Self, title? : String) -> Document = _
  has_feature(self : Self) -> Bool = _
}

///|
/// [DOMImplementation.createDocumentType](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createDocumentType)
impl TDOMImplementation with create_document_type(
  self : Self,
  name : String,
  public_id : String,
  system_id : String,
) -> DocumentType {
  dom_implementation_create_document_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    TJsValue::to_js(public_id),
    TJsValue::to_js(system_id),
  ).unsafe_cast()
}

///|
/// [DOMImplementation.createDocument](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createDocument)
impl TDOMImplementation with create_document(
  self : Self,
  namespace_ : String,
  qualified_name : String,
  doctype? : &TDocumentType = JsValue::null(),
) -> XMLDocument {
  dom_implementation_create_document_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_),
    TJsValue::to_js(qualified_name),
    TJsValue::to_js(doctype),
  ).unsafe_cast()
}

///|
/// [DOMImplementation.createHTMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createHTMLDocument)
impl TDOMImplementation with create_html_document(self : Self, title? : String) -> Document {
  dom_implementation_create_html_document_ffi(
    TJsValue::to_js(self),
    opt_to_js(title),
  ).unsafe_cast()
}

///|
/// [DOMImplementation.hasFeature](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/hasFeature)
impl TDOMImplementation with has_feature(self : Self) -> Bool {
  dom_implementation_has_feature_ffi(TJsValue::to_js(self)).unsafe_cast()
}
