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
extern "js" fn dom_implementation_create_document_type_ffi(
  obj : JsValue,
  name : JsValue,
  public_id : JsValue,
  system_id : JsValue,
) -> DocumentType = "(obj, name, public_id, system_id) => obj.createDocumentType(name, public_id, system_id)"

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
  )
}

///|
extern "js" fn dom_implementation_create_document_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  doctype : JsValue,
) -> XMLDocument = "(obj, namespace_, qualified_name, doctype) => obj.createDocument(namespace_, qualified_name, doctype)"

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
  )
}

///|
extern "js" fn dom_implementation_create_html_document_ffi(
  obj : JsValue,
  title : JsValue,
) -> Document = "(obj, title) => obj.createHTMLDocument(title)"

///|
/// [DOMImplementation.createHTMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createHTMLDocument)
impl TDOMImplementation with create_html_document(self : Self, title? : String) -> Document {
  dom_implementation_create_html_document_ffi(
    TJsValue::to_js(self),
    opt_to_js(title),
  )
}

///|
extern "js" fn dom_implementation_has_feature_ffi(obj : JsValue) -> Bool = "(obj) => obj.hasFeature()"

///|
/// [DOMImplementation.hasFeature](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/hasFeature)
impl TDOMImplementation with has_feature(self : Self) -> Bool {
  dom_implementation_has_feature_ffi(TJsValue::to_js(self))
}
