// Do not edit. This file is generated.
// MoonBit type: DOMImplementation
// Specifications: dom.idl

/// [DOMImplementation](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation)
#external
pub type DOMImplementation

pub impl TJsValue for DOMImplementation with to_js(self: DOMImplementation) -> JsValue = "%identity"

pub impl FromJsAny for DOMImplementation with from_js_any(value : JsAny) -> DOMImplementation = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMImplementation] DOMImplementation::into(self : DOMImplementation) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMImplementation] DOMImplementation::unsafe_into(self : DOMImplementation) -> T = "%identity"

pub impl HasConstructor for DOMImplementation with constructor_name() { "DOMImplementation" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMImplementation + HasConstructor] DOMImplementation::try_into(self : DOMImplementation) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMImplementation for DOMImplementation

/// [DOMImplementation](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation) interface.
pub trait TDOMImplementation: TJsValue {
  create_document_type(self : Self, name : String, public_id : String, system_id : String) -> DocumentType = _
  create_document(self : Self, namespace_ : String, qualified_name : String, doctype? : &TDocumentType) -> XMLDocument = _
  create_html_document(self : Self, title? : String) -> Document = _
  has_feature(self : Self) -> Bool = _
}

/// [DOMImplementation.createDocumentType](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createDocumentType)
impl TDOMImplementation with create_document_type(self : Self, 
name : String, 
public_id : String, 
system_id : String) -> DocumentType {
  dom_implementation_create_document_type_ffi(TJsValue::to_js(self), TJsValue::to_js(name), TJsValue::to_js(public_id), TJsValue::to_js(system_id))
}

/// [DOMImplementation.createDocument](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createDocument)
impl TDOMImplementation with create_document(self : Self, 
namespace_ : String, 
qualified_name : String, 
doctype? : &TDocumentType) -> XMLDocument {
  dom_implementation_create_document_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_), TJsValue::to_js(qualified_name), opt_to_js(doctype))
}

/// [DOMImplementation.createHTMLDocument](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/createHTMLDocument)
impl TDOMImplementation with create_html_document(self : Self, 
title? : String) -> Document {
  dom_implementation_create_html_document_ffi(TJsValue::to_js(self), opt_to_js(title))
}

/// [DOMImplementation.hasFeature](https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation/hasFeature)
impl TDOMImplementation with has_feature(self : Self) -> Bool {
  dom_implementation_has_feature_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn dom_implementation_create_document_type_ffi_js(obj: JsValue, name: JsValue, public_id: JsValue, system_id: JsValue) -> JsValue = "(obj, name, public_id, system_id) => obj.createDocumentType(name, public_id, system_id)"

///|
#cfg(target="js")
fn dom_implementation_create_document_type_ffi(obj: JsValue, name: JsValue, public_id: JsValue, system_id: JsValue) -> DocumentType {
  dom_implementation_create_document_type_ffi_js(obj, name, public_id, system_id).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_implementation_create_document_ffi_js(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, doctype: JsValue) -> JsValue = "(obj, namespace_, qualified_name, doctype) => obj.createDocument(namespace_, qualified_name, doctype)"

///|
#cfg(target="js")
fn dom_implementation_create_document_ffi(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, doctype: JsValue) -> XMLDocument {
  dom_implementation_create_document_ffi_js(obj, namespace_, qualified_name, doctype).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_implementation_create_html_document_ffi_js(obj: JsValue, title: JsValue) -> JsValue = "(obj, title) => obj.createHTMLDocument(title)"

///|
#cfg(target="js")
fn dom_implementation_create_html_document_ffi(obj: JsValue, title: JsValue) -> Document {
  dom_implementation_create_html_document_ffi_js(obj, title).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_implementation_has_feature_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hasFeature()"

///|
#cfg(target="js")
fn dom_implementation_has_feature_ffi(obj: JsValue) -> Bool {
  dom_implementation_has_feature_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn dom_implementation_create_document_type_ffi(obj: JsValue, name: JsValue, public_id: JsValue, system_id: JsValue) -> DocumentType = "webapi_DOMImplementation" "createDocumentType"

#cfg(target="wasm-gc")
fn dom_implementation_create_document_ffi(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, doctype: JsValue) -> XMLDocument = "webapi_DOMImplementation" "createDocument"

#cfg(target="wasm-gc")
fn dom_implementation_create_html_document_ffi(obj: JsValue, title: JsValue) -> Document = "webapi_DOMImplementation" "createHTMLDocument"

#cfg(target="wasm-gc")
fn dom_implementation_has_feature_ffi(obj: JsValue) -> Bool = "webapi_DOMImplementation" "hasFeature"