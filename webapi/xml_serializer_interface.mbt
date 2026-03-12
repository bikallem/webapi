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
