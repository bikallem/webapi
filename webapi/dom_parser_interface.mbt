// Do not edit. This file is generated.
// MoonBit type: DOMParser
// Specifications: html.idl

///|
/// [DOMParser](https://developer.mozilla.org/en-US/docs/Web/API/DOMParser)
#external
pub type DOMParser

///|
pub impl TJsValue for DOMParser with to_js(self : DOMParser) -> JsValue = "%identity"

///|
pub impl FromJsAny for DOMParser with from_js_any(value : JsAny) -> DOMParser = "%identity"

///|
pub fn[T : TDOMParser] DOMParser::into(self : DOMParser) -> T = "%identity"

///|
pub impl TDOMParser for DOMParser

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
/// [DOMParser](https://developer.mozilla.org/en-US/docs/Web/API/DOMParser) interface.
pub trait TDOMParser: TJsValue {
  parse_from_string(
    self : Self,
    string : &TDOMParserParseFromStringString,
    type_ : DOMParserSupportedType,
  ) -> Document = _
}

///|
/// [DOMParser.parseFromString](https://developer.mozilla.org/en-US/docs/Web/API/DOMParser/parseFromString)
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
