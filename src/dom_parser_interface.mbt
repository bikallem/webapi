///|
#external
pub type DOMParser

///|
pub impl TJsValue for DOMParser with to_js(self : DOMParser) -> JsValue = "%identity"

///|
pub fn[T : TDOMParser] DOMParser::into(self : DOMParser) -> T = "%identity"

///|
pub impl TDOMParser for DOMParser

///|
extern "js" fn dom_parser_new_ffi() -> DOMParser = "() => new DOMParser()"

///|
pub fn DOMParser::new() -> DOMParser {
  dom_parser_new_ffi()
}

///|
pub(open) trait TDOMParserParseFromStringString {
  to_js(self : Self) -> JsValue
}

///|
pub impl TDOMParserParseFromStringString for TrustedHTML with to_js(
  self : TrustedHTML,
) -> JsValue = "%identity"

///|
pub impl TDOMParserParseFromStringString for String with to_js(self : String) -> JsValue = "%identity"

///|
pub trait TDOMParser: TJsValue {
  parse_from_string(
    self : Self,
    string : &TDOMParserParseFromStringString,
    type_ : DOMParserSupportedType,
  ) -> Document = _
}

///|
extern "js" fn dom_parser_parse_from_string_ffi(
  obj : JsValue,
  string : JsValue,
  type_ : JsValue,
) -> Document = "(obj, string, type_) => obj.parseFromString(obj, string, type_)"

///|
impl TDOMParser with parse_from_string(
  self : Self,
  string : &TDOMParserParseFromStringString,
  type_ : DOMParserSupportedType,
) -> Document {
  dom_parser_parse_from_string_ffi(
    TJsValue::to_js(self),
    string.to_js(),
    TJsValue::to_js(type_),
  )
}
