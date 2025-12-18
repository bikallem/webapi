// Auto-generated MoonBit bindings for CSSBoxType enum
// Do not edit manually

///|
pub(all) enum CSSBoxType {
  Margin
  Border
  Padding
  Content
} derive(Eq,Show)

///|
pub fn CSSBoxType::from(value: String) -> CSSBoxType {
  match value {
    "margin" => Margin
    "border" => Border
    "padding" => Padding
    "content" => Content
    _ => Margin
  }
}

///|
pub fn CSSBoxType::to_js(self : CSSBoxType) -> String {
  match self {
    Margin => "margin"
    Border => "border"
    Padding => "padding"
    Content => "content"
  }
}
