///|
extern "js" fn dom_implementation_create_document_type_ffi_js(
  obj : JsValue,
  name : JsValue,
  public_id : JsValue,
  system_id : JsValue,
) -> JsValue = "(obj, name, public_id, system_id) => obj.createDocumentType(name, public_id, system_id)"

///|
fn dom_implementation_create_document_type_ffi(
  obj : JsValue,
  name : JsValue,
  public_id : JsValue,
  system_id : JsValue,
) -> DocumentType {
  dom_implementation_create_document_type_ffi_js(
    obj, name, public_id, system_id,
  ).unsafe_cast()
}

///|
extern "js" fn dom_implementation_create_document_ffi_js(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  doctype : JsValue,
) -> JsValue = "(obj, namespace_, qualified_name, doctype) => obj.createDocument(namespace_, qualified_name, doctype)"

///|
fn dom_implementation_create_document_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  doctype : JsValue,
) -> XMLDocument {
  dom_implementation_create_document_ffi_js(
    obj, namespace_, qualified_name, doctype,
  ).unsafe_cast()
}

///|
extern "js" fn dom_implementation_create_html_document_ffi_js(
  obj : JsValue,
  title : JsValue,
) -> JsValue = "(obj, title) => obj.createHTMLDocument(title)"

///|
fn dom_implementation_create_html_document_ffi(
  obj : JsValue,
  title : JsValue,
) -> Document {
  dom_implementation_create_html_document_ffi_js(obj, title).unsafe_cast()
}

///|
extern "js" fn dom_implementation_has_feature_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hasFeature()"

///|
fn dom_implementation_has_feature_ffi(obj : JsValue) -> Bool {
  dom_implementation_has_feature_ffi_js(obj).unsafe_cast()
}
