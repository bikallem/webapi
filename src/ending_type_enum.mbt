// Auto-generated MoonBit bindings for EndingType enum
// Do not edit manually

///|
pub(all) enum EndingType {
  Transparent
  Native
} derive(Eq,Show)

///|
pub fn EndingType::from(value: String) -> EndingType {
  match value {
    "transparent" => Transparent
    "native" => Native
    _ => Transparent
  }
}

///|
pub fn EndingType::to_js(self : EndingType) -> String {
  match self {
    Transparent => "transparent"
    Native => "native"
  }
}
