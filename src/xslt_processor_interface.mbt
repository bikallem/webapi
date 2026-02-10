// Do not edit. This file is generated.
// MoonBit type: XSLTProcessor
// Specifications: dom.idl

///|
/// [XSLTProcessor](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor)
#external
pub type XSLTProcessor

///|
pub impl TJsValue for XSLTProcessor with to_js(self : XSLTProcessor) -> JsValue = "%identity"

///|
pub fn[T : TXSLTProcessor] XSLTProcessor::into(self : XSLTProcessor) -> T = "%identity"

///|
pub impl TXSLTProcessor for XSLTProcessor

///|
pub fn XSLTProcessor::new() -> XSLTProcessor {
  xslt_processor_new_ffi()
}

///|
/// [XSLTProcessor](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor) interface.
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
/// [XSLTProcessor.importStylesheet](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/importStylesheet)
impl TXSLTProcessor with import_stylesheet(self : Self, style : &TNode) -> Unit {
  xslt_processor_import_stylesheet_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(style),
  )
}

///|
/// [XSLTProcessor.transformToFragment](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/transformToFragment)
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
/// [XSLTProcessor.transformToDocument](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/transformToDocument)
impl TXSLTProcessor with transform_to_document(self : Self, source : &TNode) -> Document {
  xslt_processor_transform_to_document_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(source),
  )
}

///|
/// [XSLTProcessor.setParameter](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/setParameter)
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
/// [XSLTProcessor.getParameter](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/getParameter)
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
/// [XSLTProcessor.removeParameter](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/removeParameter)
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
/// [XSLTProcessor.clearParameters](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/clearParameters)
impl TXSLTProcessor with clear_parameters(self : Self) -> Unit {
  xslt_processor_clear_parameters_ffi(TJsValue::to_js(self))
}

///|
/// [XSLTProcessor.reset](https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor/reset)
impl TXSLTProcessor with reset(self : Self) -> Unit {
  xslt_processor_reset_ffi(TJsValue::to_js(self))
}
