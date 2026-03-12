fn dom_implementation_create_document_type_ffi(obj: JsValue, name: JsValue, public_id: JsValue, system_id: JsValue) -> DocumentType = "webapi_DOMImplementation" "createDocumentType"

fn dom_implementation_create_document_ffi(obj: JsValue, namespace_: JsValue, qualified_name: JsValue, doctype: JsValue) -> XMLDocument = "webapi_DOMImplementation" "createDocument"

fn dom_implementation_create_html_document_ffi(obj: JsValue, title: JsValue) -> Document = "webapi_DOMImplementation" "createHTMLDocument"

fn dom_implementation_has_feature_ffi(obj: JsValue) -> Bool = "webapi_DOMImplementation" "hasFeature"