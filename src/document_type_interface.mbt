// Do not edit. This file is generated.
// MoonBit type: DocumentType
// Specifications: dom.idl

/// [DocumentType](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType)
#external
pub type DocumentType

pub impl TJsValue for DocumentType with to_js(self: DocumentType) -> JsValue = "%identity"

pub impl FromJsAny for DocumentType with from_js_any(value : JsAny) -> DocumentType = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDocumentType] DocumentType::into(self : DocumentType) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDocumentType] DocumentType::unsafe_into(self : DocumentType) -> T = "%identity"

pub impl HasConstructor for DocumentType with constructor_name() { "DocumentType" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDocumentType + HasConstructor] DocumentType::try_into(self : DocumentType) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDocumentType for DocumentType

pub impl TNode for DocumentType

pub impl TEventTarget for DocumentType

pub(open) trait TDocumentTypeBeforeNodes : TJsValue {}

pub impl TDocumentTypeBeforeNodes for Node

pub impl TDocumentTypeBeforeNodes for String

pub(open) trait TDocumentTypeAfterNodes : TJsValue {}

pub impl TDocumentTypeAfterNodes for Node

pub impl TDocumentTypeAfterNodes for String

pub(open) trait TDocumentTypeReplaceWithNodes : TJsValue {}

pub impl TDocumentTypeReplaceWithNodes for Node

pub impl TDocumentTypeReplaceWithNodes for String

/// [DocumentType](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType) interface.
pub trait TDocumentType: TNode {
  name(self : Self) -> String = _
  public_id(self : Self) -> String = _
  system_id(self : Self) -> String = _
  before(self : Self, nodes : Array[&TDocumentTypeBeforeNodes]) -> Unit = _
  after(self : Self, nodes : Array[&TDocumentTypeAfterNodes]) -> Unit = _
  replace_with(self : Self, nodes : Array[&TDocumentTypeReplaceWithNodes]) -> Unit = _
  remove(self : Self) -> Unit = _
}

/// [DocumentType.name](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/name)
impl TDocumentType with name(self : Self) -> String {
  document_type_name_ffi(TJsValue::to_js(self))
}

/// [DocumentType.publicId](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/publicId)
impl TDocumentType with public_id(self : Self) -> String {
  document_type_public_id_ffi(TJsValue::to_js(self))
}

/// [DocumentType.systemId](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/systemId)
impl TDocumentType with system_id(self : Self) -> String {
  document_type_system_id_ffi(TJsValue::to_js(self))
}

/// [DocumentType.before](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/before)
impl TDocumentType with before(self : Self, 
nodes : Array[&TDocumentTypeBeforeNodes]) -> Unit {
  document_type_before_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TDocumentTypeBeforeNodes) -> JsValue { v.to_js() })))
}

/// [DocumentType.after](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/after)
impl TDocumentType with after(self : Self, 
nodes : Array[&TDocumentTypeAfterNodes]) -> Unit {
  document_type_after_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TDocumentTypeAfterNodes) -> JsValue { v.to_js() })))
}

/// [DocumentType.replaceWith](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/replaceWith)
impl TDocumentType with replace_with(self : Self, 
nodes : Array[&TDocumentTypeReplaceWithNodes]) -> Unit {
  document_type_replace_with_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TDocumentTypeReplaceWithNodes) -> JsValue { v.to_js() })))
}

/// [DocumentType.remove](https://developer.mozilla.org/en-US/docs/Web/API/DocumentType/remove)
impl TDocumentType with remove(self : Self) -> Unit {
  document_type_remove_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn document_type_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn document_type_name_ffi(obj: JsValue) -> String {
  document_type_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_type_public_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.publicId"

///|
#cfg(target="js")
fn document_type_public_id_ffi(obj: JsValue) -> String {
  document_type_public_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_type_system_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.systemId"

///|
#cfg(target="js")
fn document_type_system_id_ffi(obj: JsValue) -> String {
  document_type_system_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn document_type_before_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.before(...nodes)"

#cfg(target="js")
extern "js" fn document_type_after_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.after(...nodes)"

#cfg(target="js")
extern "js" fn document_type_replace_with_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.replaceWith(...nodes)"

#cfg(target="js")
extern "js" fn document_type_remove_ffi(obj: JsValue) -> Unit = "(obj) => obj.remove()"

#cfg(target="wasm-gc")
fn document_type_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DocumentType" "get_name"

///|
#cfg(target="wasm-gc")
fn document_type_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(document_type_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn document_type_public_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DocumentType" "get_publicId"

///|
#cfg(target="wasm-gc")
fn document_type_public_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(document_type_public_id_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn document_type_system_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DocumentType" "get_systemId"

///|
#cfg(target="wasm-gc")
fn document_type_system_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(document_type_system_id_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn document_type_before_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_DocumentType" "before"

#cfg(target="wasm-gc")
fn document_type_after_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_DocumentType" "after"

#cfg(target="wasm-gc")
fn document_type_replace_with_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_DocumentType" "replaceWith"

#cfg(target="wasm-gc")
fn document_type_remove_ffi(obj: JsValue) -> Unit = "webapi_DocumentType" "remove"