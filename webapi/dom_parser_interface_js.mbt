///|
extern "js" fn dom_parser_new_ffi() -> DOMParser = "() => new DOMParser()"

///|
extern "js" fn dom_parser_parse_from_string_ffi_js(
  obj : JsValue,
  string : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, string, type_) => obj.parseFromString(string, type_)"

///|
fn dom_parser_parse_from_string_ffi(
  obj : JsValue,
  string : JsValue,
  type_ : JsValue,
) -> Document {
  dom_parser_parse_from_string_ffi_js(obj, string, type_).unsafe_cast()
}
