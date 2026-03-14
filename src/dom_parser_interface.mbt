// Do not edit. This file is generated.
// MoonBit type: DOMParser
// Specifications: html.idl

/// [DOMParser](https://developer.mozilla.org/en-US/docs/Web/API/DOMParser)
#external
pub type DOMParser

pub impl TJsValue for DOMParser with to_js(self: DOMParser) -> JsValue = "%identity"

pub impl FromJsAny for DOMParser with from_js_any(value : JsAny) -> DOMParser = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMParser] DOMParser::into(self : DOMParser) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMParser] DOMParser::unsafe_into(self : DOMParser) -> T = "%identity"

pub impl HasConstructor for DOMParser with constructor_name() { "DOMParser" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMParser + HasConstructor] DOMParser::try_into(self : DOMParser) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMParser for DOMParser

pub fn DOMParser::new() -> DOMParser {
  dom_parser_new_ffi()
}

pub(open) trait TDOMParserParseFromStringString : TJsValue {}

pub impl TDOMParserParseFromStringString for TrustedHTML

pub impl TDOMParserParseFromStringString for String

/// [DOMParser](https://developer.mozilla.org/en-US/docs/Web/API/DOMParser) interface.
pub trait TDOMParser: TJsValue {
  parse_from_string(self : Self, string : &TDOMParserParseFromStringString, type_ : DOMParserSupportedType) -> Document = _
}

/// [DOMParser.parseFromString](https://developer.mozilla.org/en-US/docs/Web/API/DOMParser/parseFromString)
impl TDOMParser with parse_from_string(self : Self, 
string : &TDOMParserParseFromStringString, 
type_ : DOMParserSupportedType) -> Document {
  dom_parser_parse_from_string_ffi(TJsValue::to_js(self), string.to_js(), TJsValue::to_js(type_))
}

#cfg(target="js")
extern "js" fn dom_parser_new_ffi() -> DOMParser = "() => new DOMParser()"

#cfg(target="js")
extern "js" fn dom_parser_parse_from_string_ffi_js(obj: JsValue, string: JsValue, type_: JsValue) -> JsValue = "(obj, string, type_) => obj.parseFromString(string, type_)"

///|
#cfg(target="js")
fn dom_parser_parse_from_string_ffi(obj: JsValue, string: JsValue, type_: JsValue) -> Document {
  dom_parser_parse_from_string_ffi_js(obj, string, type_).unsafe_cast()
}

#cfg(target="wasm-gc")
fn dom_parser_new_ffi() -> DOMParser = "webapi_DOMParser" "new"

#cfg(target="wasm-gc")
fn dom_parser_parse_from_string_ffi(obj: JsValue, string: JsValue, type_: JsValue) -> Document = "webapi_DOMParser" "parseFromString"