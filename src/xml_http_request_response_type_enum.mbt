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
} derive(Eq)

///|
pub impl Show for XMLHttpRequestResponseType with output(
  self : XMLHttpRequestResponseType,
  logger : &Logger,
) -> Unit {
  match self {
    XMLHttpRequestResponseType::Empty => logger.write_string("Empty")
    XMLHttpRequestResponseType::Arraybuffer =>
      logger.write_string("Arraybuffer")
    XMLHttpRequestResponseType::Blob => logger.write_string("Blob")
    XMLHttpRequestResponseType::Document => logger.write_string("Document")
    XMLHttpRequestResponseType::Json => logger.write_string("Json")
    XMLHttpRequestResponseType::Text => logger.write_string("Text")
  }
}

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

///|
fn XMLHttpRequestResponseType::from_unchecked(
  value : String,
) -> XMLHttpRequestResponseType {
  match value {
    "" => XMLHttpRequestResponseType::Empty
    "arraybuffer" => XMLHttpRequestResponseType::Arraybuffer
    "blob" => XMLHttpRequestResponseType::Blob
    "document" => XMLHttpRequestResponseType::Document
    "json" => XMLHttpRequestResponseType::Json
    "text" => XMLHttpRequestResponseType::Text
    _ => abort("unknown XMLHttpRequestResponseType enum value")
  }
}

///|
pub fn XMLHttpRequestResponseType::value(
  self : XMLHttpRequestResponseType,
) -> String {
  match self {
    XMLHttpRequestResponseType::Empty => ""
    XMLHttpRequestResponseType::Arraybuffer => "arraybuffer"
    XMLHttpRequestResponseType::Blob => "blob"
    XMLHttpRequestResponseType::Document => "document"
    XMLHttpRequestResponseType::Json => "json"
    XMLHttpRequestResponseType::Text => "text"
  }
}

///|
pub impl FromJsAny for XMLHttpRequestResponseType with from_js_any(
  value : JsAny,
) -> XMLHttpRequestResponseType {
  XMLHttpRequestResponseType::from_unchecked(value)
}
