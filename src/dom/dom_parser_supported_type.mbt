// Auto-generated MoonBit bindings for DOMParserSupportedType

// Do not edit manually

///|
pub enum DOMParserSupportedType {
  TextHtml
  TextXml
  ApplicationXml
  ApplicationXhtmlXml
  ImageSvgXml
} derive(Eq)

///|
pub impl TJsValue for DOMParserSupportedType with to_js(self) {
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
pub impl Show for DOMParserSupportedType with output(self, logger) {
  match self {
    DOMParserSupportedType::TextHtml => logger.write_string("text/html")
    DOMParserSupportedType::TextXml => logger.write_string("text/xml")
    DOMParserSupportedType::ApplicationXml =>
      logger.write_string("application/xml")
    DOMParserSupportedType::ApplicationXhtmlXml =>
      logger.write_string("application/xhtml+xml")
    DOMParserSupportedType::ImageSvgXml => logger.write_string("image/svg+xml")
  }
}
