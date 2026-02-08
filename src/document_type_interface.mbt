// Do not edit. This file is generated.
// MoonBit type: DocumentType
// Specifications: dom.idl

/// [DocumentType](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType)
#external
pub type DocumentType

pub impl TJsValue for DocumentType with to_js(self: DocumentType) -> JsValue = "%identity"

pub fn[T: TDocumentType] DocumentType::into(self : DocumentType) -> T = "%identity"

pub impl TDocumentType for DocumentType

pub impl TNode for DocumentType

pub impl TEventTarget for DocumentType

pub(open) trait TDocumentTypeBeforeNodes {
  to_js(self : Self) -> JsValue
}

pub impl TDocumentTypeBeforeNodes for Node with to_js(self : Node) -> JsValue = "%identity"

pub impl TDocumentTypeBeforeNodes for String with to_js(self : String) -> JsValue = "%identity"

pub(open) trait TDocumentTypeAfterNodes {
  to_js(self : Self) -> JsValue
}

pub impl TDocumentTypeAfterNodes for Node with to_js(self : Node) -> JsValue = "%identity"

pub impl TDocumentTypeAfterNodes for String with to_js(self : String) -> JsValue = "%identity"

pub(open) trait TDocumentTypeReplaceWithNodes {
  to_js(self : Self) -> JsValue
}

pub impl TDocumentTypeReplaceWithNodes for Node with to_js(self : Node) -> JsValue = "%identity"

pub impl TDocumentTypeReplaceWithNodes for String with to_js(self : String) -> JsValue = "%identity"

/// [DocumentType](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType) interface.
pub trait TDocumentType: TNode {
  name(self : Self) -> String = _
  public_id(self : Self) -> String = _
  system_id(self : Self) -> String = _
  before(self : Self, nodes : &TDocumentTypeBeforeNodes) -> Unit = _
  after(self : Self, nodes : &TDocumentTypeAfterNodes) -> Unit = _
  replace_with(self : Self, nodes : &TDocumentTypeReplaceWithNodes) -> Unit = _
  remove(self : Self) -> Unit = _
}

/// [DocumentType.name](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/name)
impl TDocumentType with name(self : Self) -> String {
  document_type_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DocumentType.publicId](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/publicId)
impl TDocumentType with public_id(self : Self) -> String {
  document_type_public_id_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DocumentType.systemId](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/systemId)
impl TDocumentType with system_id(self : Self) -> String {
  document_type_system_id_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [DocumentType.before](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/before)
impl TDocumentType with before(self : Self, 
nodes : &TDocumentTypeBeforeNodes) -> Unit {
  document_type_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

/// [DocumentType.after](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/after)
impl TDocumentType with after(self : Self, 
nodes : &TDocumentTypeAfterNodes) -> Unit {
  document_type_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

/// [DocumentType.replaceWith](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/replaceWith)
impl TDocumentType with replace_with(self : Self, 
nodes : &TDocumentTypeReplaceWithNodes) -> Unit {
  document_type_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

/// [DocumentType.remove](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/remove)
impl TDocumentType with remove(self : Self) -> Unit {
  document_type_remove_ffi(TJsValue::to_js(self))
}