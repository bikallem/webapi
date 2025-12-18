// Auto-generated MoonBit bindings for DocumentType

// Do not edit manually

///|
#external
pub type DocumentType

///|
pub trait TDocumentType: TJsValue + TNode {
  name(self : Self) -> String = _
  public_id(self : Self) -> String = _
  system_id(self : Self) -> String = _
  before(self : Self, nodes : &TBeforeNodesArg) -> Unit = _
  after(self : Self, nodes : &TAfterNodesArg) -> Unit = _
  replace_with(self : Self, nodes : &TReplaceWithNodesArg) -> Unit = _
  remove(self : Self) -> Unit = _
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
fn document_type_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentType" "before"

///|
impl TDocumentType with before(self : Self, nodes : &TBeforeNodesArg) -> Unit {
  document_type_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_type_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentType" "after"

///|
impl TDocumentType with after(self : Self, nodes : &TAfterNodesArg) -> Unit {
  document_type_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_type_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_DocumentType" "replaceWith"

///|
impl TDocumentType with replace_with(self : Self, nodes : &TReplaceWithNodesArg) -> Unit {
  document_type_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn document_type_remove_ffi(obj : JsValue) -> Unit = "webapi_DocumentType" "remove"

///|
impl TDocumentType with remove(self : Self) -> Unit {
  document_type_remove_ffi(TJsValue::to_js(self))
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