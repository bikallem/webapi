///|
fn xslt_processor_new_ffi() -> XSLTProcessor = "webapi_XSLTProcessor" "new"

///|
fn xslt_processor_import_stylesheet_ffi(obj : JsValue, style : JsValue) -> Unit = "webapi_XSLTProcessor" "importStylesheet"

///|
fn xslt_processor_transform_to_fragment_ffi(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> DocumentFragment = "webapi_XSLTProcessor" "transformToFragment"

///|
fn xslt_processor_transform_to_document_ffi(
  obj : JsValue,
  source : JsValue,
) -> Document = "webapi_XSLTProcessor" "transformToDocument"

///|
fn xslt_processor_set_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
  value : JsValue,
) -> Unit = "webapi_XSLTProcessor" "setParameter"

///|
fn xslt_processor_get_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_XSLTProcessor" "getParameter"

///|
fn xslt_processor_remove_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> Unit = "webapi_XSLTProcessor" "removeParameter"

///|
fn xslt_processor_clear_parameters_ffi(obj : JsValue) -> Unit = "webapi_XSLTProcessor" "clearParameters"

///|
fn xslt_processor_reset_ffi(obj : JsValue) -> Unit = "webapi_XSLTProcessor" "reset"
