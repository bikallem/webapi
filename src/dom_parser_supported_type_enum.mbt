// Do not edit. This file is generated.
// MoonBit type: DOMParserSupportedType
// Specifications: html.idl

///|
pub(all) enum DOMParserSupportedType {
  TextHtml
  TextXml
  ApplicationXml
  ApplicationXhtmlXml
  ImageSvgXml
} derive(Eq)

///|
pub impl Show for DOMParserSupportedType with output(
  self : DOMParserSupportedType,
  logger : &Logger,
) -> Unit {
  match self {
    DOMParserSupportedType::TextHtml => logger.write_string("TextHtml")
    DOMParserSupportedType::TextXml => logger.write_string("TextXml")
    DOMParserSupportedType::ApplicationXml =>
      logger.write_string("ApplicationXml")
    DOMParserSupportedType::ApplicationXhtmlXml =>
      logger.write_string("ApplicationXhtmlXml")
    DOMParserSupportedType::ImageSvgXml => logger.write_string("ImageSvgXml")
  }
}

///|
pub impl TJsValue for DOMParserSupportedType with to_js(
  self : DOMParserSupportedType,
) -> JsValue {
  match self {
    DOMParserSupportedType::TextHtml => TJsValue::to_js("text/html")
    DOMParserSupportedType::TextXml => TJsValue::to_js("text/xml")
    DOMParserSupportedType::ApplicationXml => TJsValue::to_js("application/xml")
    DOMParserSupportedType::ApplicationXhtmlXml =>
      TJsValue::to_js("application/xhtml+xml")
    DOMParserSupportedType::ImageSvgXml => TJsValue::to_js("image/svg+xml")
  }
}

///|
pub fn DOMParserSupportedType::from(value : String) -> DOMParserSupportedType? {
  match value {
    "text/html" => Some(DOMParserSupportedType::TextHtml)
    "text/xml" => Some(DOMParserSupportedType::TextXml)
    "application/xml" => Some(DOMParserSupportedType::ApplicationXml)
    "application/xhtml+xml" => Some(DOMParserSupportedType::ApplicationXhtmlXml)
    "image/svg+xml" => Some(DOMParserSupportedType::ImageSvgXml)
    _ => None
  }
}

///|
fn DOMParserSupportedType::from_unchecked(
  value : String,
) -> DOMParserSupportedType {
  match value {
    "text/html" => DOMParserSupportedType::TextHtml
    "text/xml" => DOMParserSupportedType::TextXml
    "application/xml" => DOMParserSupportedType::ApplicationXml
    "application/xhtml+xml" => DOMParserSupportedType::ApplicationXhtmlXml
    "image/svg+xml" => DOMParserSupportedType::ImageSvgXml
    _ => abort("unknown DOMParserSupportedType enum value")
  }
}

///|
pub fn DOMParserSupportedType::value(self : DOMParserSupportedType) -> String {
  let buf = StringBuilder::new()
  match self {
    DOMParserSupportedType::TextHtml => buf.write_string("text/html")
    DOMParserSupportedType::TextXml => buf.write_string("text/xml")
    DOMParserSupportedType::ApplicationXml =>
      buf.write_string("application/xml")
    DOMParserSupportedType::ApplicationXhtmlXml =>
      buf.write_string("application/xhtml+xml")
    DOMParserSupportedType::ImageSvgXml => buf.write_string("image/svg+xml")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for DOMParserSupportedType with from_js_any(value : JsAny) -> DOMParserSupportedType {
  DOMParserSupportedType::from_unchecked(value)
}
