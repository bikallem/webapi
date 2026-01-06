// Do not edit. This file is generated.
// MoonBit type: XMLSerializer
// Specifications: html.idl

///|
#external
pub type XMLSerializer

///|
pub impl TJsValue for XMLSerializer with to_js(self : XMLSerializer) -> JsValue = "%identity"

///|
pub fn[T : TXMLSerializer] XMLSerializer::into(self : XMLSerializer) -> T = "%identity"

///|
pub impl TXMLSerializer for XMLSerializer

///|
extern "js" fn xml_serializer_new_ffi() -> XMLSerializer = "() => new XMLSerializer()"

///|
pub fn XMLSerializer::new() -> XMLSerializer {
  xml_serializer_new_ffi()
}

///|
pub trait TXMLSerializer: TJsValue {
  serialize_to_string(self : Self, root : &TNode) -> String = _
}

///|
extern "js" fn xml_serializer_serialize_to_string_ffi(
  obj : JsValue,
  root : JsValue,
) -> String = "(obj, root) => obj.serializeToString(root)"

///|
impl TXMLSerializer with serialize_to_string(self : Self, root : &TNode) -> String {
  xml_serializer_serialize_to_string_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(root),
  )
}
