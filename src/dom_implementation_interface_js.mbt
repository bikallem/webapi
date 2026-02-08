extern "js" fn dom_implementation_create_document_type_ffi(obj: JsValue, name: JsValue, public_id: JsValue, system_id: JsValue) -> JsValue = "(obj, name, public_id, system_id) => obj.createDocumentType(name, public_id, system_id)"

extern "js" fn dom_implementation_create_document_ffi(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, doctype: JsValue) -> JsValue = "(obj, namespace_, qualified_name, doctype) => obj.createDocument(namespace_, qualified_name, doctype)"

extern "js" fn dom_implementation_create_html_document_ffi(obj: JsValue, title: JsValue) -> JsValue = "(obj, title) => obj.createHTMLDocument(title)"

extern "js" fn dom_implementation_has_feature_ffi(obj: JsValue) -> JsValue = "(obj) => obj.hasFeature()"