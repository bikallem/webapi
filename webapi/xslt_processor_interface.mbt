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
pub impl FromJsAny for XSLTProcessor with from_js_any(value : JsAny) -> XSLTProcessor = "%identity"

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

///|
#cfg(target="js")
extern "js" fn xslt_processor_new_ffi() -> XSLTProcessor = "() => new XSLTProcessor()"

///|
#cfg(target="js")
extern "js" fn xslt_processor_import_stylesheet_ffi(
  obj : JsValue,
  style : JsValue,
) -> Unit = "(obj, style) => obj.importStylesheet(style)"

///|
#cfg(target="js")
extern "js" fn xslt_processor_transform_to_fragment_ffi_js(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> JsValue = "(obj, source, output) => obj.transformToFragment(source, output)"

///|
#cfg(target="js")
fn xslt_processor_transform_to_fragment_ffi(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> DocumentFragment {
  xslt_processor_transform_to_fragment_ffi_js(obj, source, output).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn xslt_processor_transform_to_document_ffi_js(
  obj : JsValue,
  source : JsValue,
) -> JsValue = "(obj, source) => obj.transformToDocument(source)"

///|
#cfg(target="js")
fn xslt_processor_transform_to_document_ffi(
  obj : JsValue,
  source : JsValue,
) -> Document {
  xslt_processor_transform_to_document_ffi_js(obj, source).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn xslt_processor_set_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
  value : JsValue,
) -> Unit = "(obj, namespace_uri, local_name, value) => obj.setParameter(namespace_uri, local_name, value)"

///|
#cfg(target="js")
extern "js" fn xslt_processor_get_parameter_ffi_js(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue = "(obj, namespace_uri, local_name) => obj.getParameter(namespace_uri, local_name)"

///|
#cfg(target="js")
fn xslt_processor_get_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue {
  xslt_processor_get_parameter_ffi_js(obj, namespace_uri, local_name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn xslt_processor_remove_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> Unit = "(obj, namespace_uri, local_name) => obj.removeParameter(namespace_uri, local_name)"

///|
#cfg(target="js")
extern "js" fn xslt_processor_clear_parameters_ffi(obj : JsValue) -> Unit = "(obj) => obj.clearParameters()"

///|
#cfg(target="js")
extern "js" fn xslt_processor_reset_ffi(obj : JsValue) -> Unit = "(obj) => obj.reset()"

///|
#cfg(target="wasm-gc")
fn xslt_processor_new_ffi() -> XSLTProcessor = "webapi_XSLTProcessor" "new"

///|
#cfg(target="wasm-gc")
fn xslt_processor_import_stylesheet_ffi(obj : JsValue, style : JsValue) -> Unit = "webapi_XSLTProcessor" "importStylesheet"

///|
#cfg(target="wasm-gc")
fn xslt_processor_transform_to_fragment_ffi(
  obj : JsValue,
  source : JsValue,
  output : JsValue,
) -> DocumentFragment = "webapi_XSLTProcessor" "transformToFragment"

///|
#cfg(target="wasm-gc")
fn xslt_processor_transform_to_document_ffi(
  obj : JsValue,
  source : JsValue,
) -> Document = "webapi_XSLTProcessor" "transformToDocument"

///|
#cfg(target="wasm-gc")
fn xslt_processor_set_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
  value : JsValue,
) -> Unit = "webapi_XSLTProcessor" "setParameter"

///|
#cfg(target="wasm-gc")
fn xslt_processor_get_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> JsValue = "webapi_XSLTProcessor" "getParameter"

///|
#cfg(target="wasm-gc")
fn xslt_processor_remove_parameter_ffi(
  obj : JsValue,
  namespace_uri : JsValue,
  local_name : JsValue,
) -> Unit = "webapi_XSLTProcessor" "removeParameter"

///|
#cfg(target="wasm-gc")
fn xslt_processor_clear_parameters_ffi(obj : JsValue) -> Unit = "webapi_XSLTProcessor" "clearParameters"

///|
#cfg(target="wasm-gc")
fn xslt_processor_reset_ffi(obj : JsValue) -> Unit = "webapi_XSLTProcessor" "reset"
