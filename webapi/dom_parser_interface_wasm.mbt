///|
fn dom_parser_new_ffi() -> DOMParser = "webapi_DOMParser" "new"

///|
fn dom_parser_parse_from_string_ffi(
  obj : JsValue,
  string : JsValue,
  type_ : JsValue,
) -> Document = "webapi_DOMParser" "parseFromString"
