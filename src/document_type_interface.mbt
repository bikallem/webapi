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
pub(open) trait TDocumentTypeBeforeNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentTypeBeforeNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentTypeBeforeNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentTypeAfterNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentTypeAfterNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentTypeAfterNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TDocumentTypeReplaceWithNodesArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDocumentTypeReplaceWithNodesArg for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TDocumentTypeReplaceWithNodesArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub trait TDocumentType: TNode {
  before(self : Self, nodes : &TDocumentTypeBeforeNodesArg) -> Unit = _
  after(self : Self, nodes : &TDocumentTypeAfterNodesArg) -> Unit = _
  replace_with(self : Self, nodes : &TDocumentTypeReplaceWithNodesArg) -> Unit = _
  remove(self : Self) -> Unit = _
}

///|
extern "js" fn document_type_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.before(obj, nodes)"

///|
impl TDocumentType with before(
  self : Self,
  nodes : &TDocumentTypeBeforeNodesArg,
) -> Unit {
  document_type_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_type_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.after(obj, nodes)"

///|
impl TDocumentType with after(self : Self, nodes : &TDocumentTypeAfterNodesArg) -> Unit {
  document_type_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_type_replace_with_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceWith(obj, nodes)"

///|
impl TDocumentType with replace_with(
  self : Self,
  nodes : &TDocumentTypeReplaceWithNodesArg,
) -> Unit {
  document_type_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn document_type_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove(obj)"

///|
impl TDocumentType with remove(self : Self) -> Unit {
  document_type_remove_ffi(TJsValue::to_js(self))
}
