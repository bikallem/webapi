///|
extern "js" fn xslt_processor_new_ffi() -> XSLTProcessor = "() => new XSLTProcessor()"

///|
extern "js" fn xslt_processor_import_stylesheet_ffi(
  obj : JsValue,
  style : JsValue,
) -> Unit = "(obj, style) => obj.importStylesheet(style)"

///|
extern "js" fn xslt_processor_transform_to_fragment_ffi_js(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> JsValue = "(obj, source, output) => obj.transformToFragment(source, output)"

///|
fn xslt_processor_transform_to_fragment_ffi(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> DocumentFragment {
  xslt_processor_transform_to_fragment_ffi_js(obj, source, output).unsafe_cast()
}

///|
extern "js" fn xslt_processor_transform_to_document_ffi_js(
  obj : JsValue,
  source : JsValue,
) -> JsValue = "(obj, source) => obj.transformToDocument(source)"

///|
fn xslt_processor_transform_to_document_ffi(
  obj : JsValue,
  source : JsValue,
) -> Document {
  xslt_processor_transform_to_document_ffi_js(obj, source).unsafe_cast()
}

///|
extern "js" fn xslt_processor_set_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, namespace_uri, local_name, value) => obj.setParameter(namespace_uri, local_name, value)"

///|
extern "js" fn xslt_processor_get_parameter_ffi_js(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_uri, local_name) => obj.getParameter(namespace_uri, local_name)"

///|
fn xslt_processor_get_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue {
  xslt_processor_get_parameter_ffi_js(obj, namespace_uri, local_name).unsafe_cast()
}

///|
extern "js" fn xslt_processor_remove_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> Unit = "(obj, namespace_uri, local_name) => obj.removeParameter(namespace_uri, local_name)"

///|
extern "js" fn xslt_processor_clear_parameters_ffi(obj : JsValue) -> Unit = "(obj) => obj.clearParameters()"

///|
extern "js" fn xslt_processor_reset_ffi(obj : JsValue) -> Unit = "(obj) => obj.reset()"
