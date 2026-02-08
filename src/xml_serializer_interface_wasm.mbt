fn xml_serializer_new_ffi() -> XMLSerializer = "webapi_XMLSerializer" "new"

fn xml_serializer_serialize_to_string_ffi(obj: JsValue, root: JsValue) -> JsValue = "webapi_XMLSerializer" "serializeToString"