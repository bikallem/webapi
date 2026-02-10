// Do not edit. This file is generated.
// MoonBit type: DOMParserSupportedType
// Specifications: html.idl

pub(all) enum DOMParserSupportedType {
  TextHtml
  TextXml
  ApplicationXml
  ApplicationXhtmlXml
  ImageSvgXml
} derive(Eq,Show)

pub impl TJsValue for DOMParserSupportedType with to_js(self: DOMParserSupportedType) -> JsValue {
  match self {
    DOMParserSupportedType::TextHtml => TJsValue::to_js("text/html")
    DOMParserSupportedType::TextXml => TJsValue::to_js("text/xml")
    DOMParserSupportedType::ApplicationXml => TJsValue::to_js("application/xml")
    DOMParserSupportedType::ApplicationXhtmlXml => TJsValue::to_js("application/xhtml+xml")
    DOMParserSupportedType::ImageSvgXml => TJsValue::to_js("image/svg+xml")
  }
}

pub fn DOMParserSupportedType::from(value: String) -> DOMParserSupportedType? {
  match value {
    "text/html" => Some(DOMParserSupportedType::TextHtml)
    "text/xml" => Some(DOMParserSupportedType::TextXml)
    "application/xml" => Some(DOMParserSupportedType::ApplicationXml)
    "application/xhtml+xml" => Some(DOMParserSupportedType::ApplicationXhtmlXml)
    "image/svg+xml" => Some(DOMParserSupportedType::ImageSvgXml)
    _ => None
  }
}