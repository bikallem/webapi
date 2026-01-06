// Do not edit. This file is generated.
// MoonBit type: XSLTProcessor
// Specifications: dom.idl

///|
#external
pub type XSLTProcessor

///|
pub impl TJsValue for XSLTProcessor with to_js(self : XSLTProcessor) -> JsValue = "%identity"

///|
pub fn[T : TXSLTProcessor] XSLTProcessor::into(self : XSLTProcessor) -> T = "%identity"

///|
pub impl TXSLTProcessor for XSLTProcessor

///|
extern "js" fn xslt_processor_new_ffi() -> XSLTProcessor = "() => new XSLTProcessor()"

///|
pub fn XSLTProcessor::new() -> XSLTProcessor {
  xslt_processor_new_ffi()
}

///|
pub trait TXSLTProcessor: TJsValue {
  import_stylesheet(self : Self, style : &TNode) -> Unit = _
  transform_to_fragment(self : Self, source : &TNode, output : &TDocument) -> DocumentFragment = _
  transform_to_document(self : Self, source : &TNode) -> Document = _
  set_parameter(
    self : Self,
    namespace_uri : String,
    local_name : String,
    value : JsValue,
  ) -> Unit = _
  get_parameter(self : Self, namespace_uri : String, local_name : String) -> JsValue = _
  remove_parameter(self : Self, namespace_uri : String, local_name : String) -> Unit = _
  clear_parameters(self : Self) -> Unit = _
  reset(self : Self) -> Unit = _
}

///|
extern "js" fn xslt_processor_import_stylesheet_ffi(
  obj : JsValue,
  style : JsValue,
) -> Unit = "(obj, style) => obj.importStylesheet(style)"

///|
impl TXSLTProcessor with import_stylesheet(self : Self, style : &TNode) -> Unit {
  xslt_processor_import_stylesheet_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(style),
  )
}

///|
extern "js" fn xslt_processor_transform_to_fragment_ffi(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> DocumentFragment = "(obj, source, output) => obj.transformToFragment(source, output)"

///|
impl TXSLTProcessor with transform_to_fragment(
  self : Self,
  source : &TNode,
  output : &TDocument,
) -> DocumentFragment {
  xslt_processor_transform_to_fragment_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(source),
    TJsValue::to_js(output),
  )
}

///|
extern "js" fn xslt_processor_transform_to_document_ffi(
  obj : JsValue,
  source : JsValue,
) -> Document = "(obj, source) => obj.transformToDocument(source)"

///|
impl TXSLTProcessor with transform_to_document(self : Self, source : &TNode) -> Document {
  xslt_processor_transform_to_document_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(source),
  )
}

///|
extern "js" fn xslt_processor_set_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, namespace_uri, local_name, value) => obj.setParameter(namespace_uri, local_name, value)"

///|
impl TXSLTProcessor with set_parameter(
  self : Self,
  namespace_uri : String,
  local_name : String,
  value : JsValue,
) -> Unit {
  xslt_processor_set_parameter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_uri),
    TJsValue::to_js(local_name),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn xslt_processor_get_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_uri, local_name) => obj.getParameter(namespace_uri, local_name)"

///|
impl TXSLTProcessor with get_parameter(
  self : Self,
  namespace_uri : String,
  local_name : String,
) -> JsValue {
  xslt_processor_get_parameter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_uri),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn xslt_processor_remove_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> Unit = "(obj, namespace_uri, local_name) => obj.removeParameter(namespace_uri, local_name)"

///|
impl TXSLTProcessor with remove_parameter(
  self : Self,
  namespace_uri : String,
  local_name : String,
) -> Unit {
  xslt_processor_remove_parameter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(namespace_uri),
    TJsValue::to_js(local_name),
  )
}

///|
extern "js" fn xslt_processor_clear_parameters_ffi(obj : JsValue) -> Unit = "(obj) => obj.clearParameters()"

///|
impl TXSLTProcessor with clear_parameters(self : Self) -> Unit {
  xslt_processor_clear_parameters_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn xslt_processor_reset_ffi(obj : JsValue) -> Unit = "(obj) => obj.reset()"

///|
impl TXSLTProcessor with reset(self : Self) -> Unit {
  xslt_processor_reset_ffi(TJsValue::to_js(self))
}
