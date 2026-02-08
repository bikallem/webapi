///|
fn dom_implementation_create_document_type_ffi(
  obj : JsValue,
  name : JsValue,
  public_id : JsValue,
  system_id : JsValue,
) -> JsValue = "webapi_DOMImplementation" "createDocumentType"

///|
fn dom_implementation_create_document_ffi(
  obj : JsValue,
  namespace_ : JsValue,
  qualified_name : JsValue,
  doctype : JsValue,
) -> JsValue = "webapi_DOMImplementation" "createDocument"

///|
fn dom_implementation_create_html_document_ffi(
  obj : JsValue,
  title : JsValue,
) -> JsValue = "webapi_DOMImplementation" "createHTMLDocument"

///|
fn dom_implementation_has_feature_ffi(obj : JsValue) -> JsValue = "webapi_DOMImplementation" "hasFeature"
