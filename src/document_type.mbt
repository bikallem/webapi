// Auto-generated MoonBit bindings for DocumentType interface
// Do not edit manually

#external
pub type DocumentType

pub impl TJsValue for DocumentType with to_js(self: DocumentType) -> JsValue = "%identity"


pub fn[T: TDocumentType] DocumentType::into(self : DocumentType) -> T = "%identity"
pub impl TDocumentType for DocumentType

pub trait TDocumentType: TJsValue + TTNode {
  name(self: Self) -> String = _
  public_id(self: Self) -> String = _
  system_id(self: Self) -> String = _
}

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