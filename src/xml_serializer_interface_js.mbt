///|
extern "js" fn xml_serializer_new_ffi() -> XMLSerializer = "() => new XMLSerializer()"

///|
extern "js" fn xml_serializer_serialize_to_string_ffi(
  obj : JsValue,
  root : JsValue,
) -> JsValue = "(obj, root) => obj.serializeToString(root)"
