// Do not edit. This file is generated.
// MoonBit type: XMLHttpRequestResponseType
// Specifications: xhr.idl

///|
pub(all) enum XMLHttpRequestResponseType {
  Empty
  Arraybuffer
  Blob
  Document
  Json
  Text
} derive(Eq, Show)

///|
pub impl TJsValue for XMLHttpRequestResponseType with to_js(
  self : XMLHttpRequestResponseType,
) -> JsValue {
  match self {
    XMLHttpRequestResponseType::Empty => TJsValue::to_js("")
    XMLHttpRequestResponseType::Arraybuffer => TJsValue::to_js("arraybuffer")
    XMLHttpRequestResponseType::Blob => TJsValue::to_js("blob")
    XMLHttpRequestResponseType::Document => TJsValue::to_js("document")
    XMLHttpRequestResponseType::Json => TJsValue::to_js("json")
    XMLHttpRequestResponseType::Text => TJsValue::to_js("text")
  }
}

///|
pub fn XMLHttpRequestResponseType::from(
  value : String,
) -> XMLHttpRequestResponseType? {
  match value {
    "" => Some(XMLHttpRequestResponseType::Empty)
    "arraybuffer" => Some(XMLHttpRequestResponseType::Arraybuffer)
    "blob" => Some(XMLHttpRequestResponseType::Blob)
    "document" => Some(XMLHttpRequestResponseType::Document)
    "json" => Some(XMLHttpRequestResponseType::Json)
    "text" => Some(XMLHttpRequestResponseType::Text)
    _ => None
  }
}
