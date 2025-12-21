///|
#external
pub type DocumentType

///|
pub impl TJsValue for DocumentType with to_js(self : DocumentType) -> JsValue = "%identity"

///|
pub fn[T : TDocumentType] DocumentType::into(self : DocumentType) -> T = "%identity"

///|
pub impl TDocumentType for DocumentType

///|
pub impl TNode for DocumentType

///|
pub impl TEventTarget for DocumentType

///|
pub trait TDocumentType: TNode {}
