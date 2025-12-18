// Auto-generated MoonBit bindings for DOMParserSupportedType enum
// Do not edit manually

///|
pub(all) enum DOMParserSupportedType {
  Text/html
  Text/xml
  Application/xml
  Application/xhtml+xml
  Image/svg+xml
} derive(Eq,Show)

///|
pub fn DOMParserSupportedType::from(value: String) -> DOMParserSupportedType {
  match value {
    "text/html" => Text/html
    "text/xml" => Text/xml
    "application/xml" => Application/xml
    "application/xhtml+xml" => Application/xhtml+xml
    "image/svg+xml" => Image/svg+xml
    _ => Text/html
  }
}

///|
pub fn DOMParserSupportedType::to_js(self : DOMParserSupportedType) -> String {
  match self {
    Text/html => "text/html"
    Text/xml => "text/xml"
    Application/xml => "application/xml"
    Application/xhtml+xml => "application/xhtml+xml"
    Image/svg+xml => "image/svg+xml"
  }
}
