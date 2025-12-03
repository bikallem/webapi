// Auto-generated MoonBit bindings for DocumentType

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface DocumentType : Node {
//   readonly attribute DOMString name;
//   readonly attribute DOMString publicId;
//   readonly attribute DOMString systemId;
// };

///|
#external
pub type DocumentType

///|
pub trait TDocumentType: TJsValue + TNode {
  name(self : Self) -> String = _
  public_id(self : Self) -> String = _
  system_id(self : Self) -> String = _
}

///|
pub impl TEventTarget for DocumentType

///|
pub impl TNode for DocumentType

///|
pub impl TDocumentType for DocumentType

///|
pub impl TJsValue for DocumentType with to_js(self : DocumentType) -> JsValue = "%identity"

///|
fn document_type_name_ffi(obj : JsValue) -> String = "webapi_DocumentType" "name"

///|
impl TDocumentType with name(self : Self) -> String {
  document_type_name_ffi(self.to_js())
}

///|
fn document_type_public_id_ffi(obj : JsValue) -> String = "webapi_DocumentType" "publicId"

///|
impl TDocumentType with public_id(self : Self) -> String {
  document_type_public_id_ffi(self.to_js())
}

///|
fn document_type_system_id_ffi(obj : JsValue) -> String = "webapi_DocumentType" "systemId"

///|
impl TDocumentType with system_id(self : Self) -> String {
  document_type_system_id_ffi(self.to_js())
}
