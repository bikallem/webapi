// Do not edit. This file is generated.
// MoonBit type: XMLSerializer
// Specifications: html.idl

///|
/// [XMLSerializer](https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer)
#external
pub type XMLSerializer

///|
pub impl TJsValue for XMLSerializer with to_js(self : XMLSerializer) -> JsValue = "%identity"

///|
pub impl FromJsAny for XMLSerializer with from_js_any(value : JsAny) -> XMLSerializer = "%identity"

///|
pub fn[T : TXMLSerializer] XMLSerializer::into(self : XMLSerializer) -> T = "%identity"

///|
pub impl TXMLSerializer for XMLSerializer

///|
pub fn XMLSerializer::new() -> XMLSerializer {
  xml_serializer_new_ffi()
}

///|
/// [XMLSerializer](https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer) interface.
pub trait TXMLSerializer: TJsValue {
  serialize_to_string(self : Self, root : &TNode) -> String = _
}

///|
/// [XMLSerializer.serializeToString](https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer/serializeToString)
impl TXMLSerializer with serialize_to_string(self : Self, root : &TNode) -> String {
  xml_serializer_serialize_to_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
  )
}

///|
#cfg(target="js")
extern "js" fn xml_serializer_new_ffi() -> XMLSerializer = "() => new XMLSerializer()"

///|
#cfg(target="js")
extern "js" fn xml_serializer_serialize_to_string_ffi_js(
  obj : JsValue,
  root : JsValue,
) -> JsValue = "(obj, root) => obj.serializeToString(root)"

///|
#cfg(target="js")
fn xml_serializer_serialize_to_string_ffi(
  obj : JsValue,
  root : JsValue,
) -> String {
  xml_serializer_serialize_to_string_ffi_js(obj, root).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn xml_serializer_new_ffi() -> XMLSerializer = "webapi_XMLSerializer" "new"

///|
#cfg(target="wasm-gc")
fn xml_serializer_serialize_to_string_ffi_wasm(
  obj : JsValue,
  root : JsValue,
) -> JsValue = "webapi_XMLSerializer" "serializeToString"

///|
#cfg(target="wasm-gc")
fn xml_serializer_serialize_to_string_ffi(
  obj : JsValue,
  root : JsValue,
) -> String {
  jsvalue_to_string(xml_serializer_serialize_to_string_ffi_wasm(obj, root))
}
