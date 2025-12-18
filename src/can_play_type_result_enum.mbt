// Auto-generated MoonBit bindings for CanPlayTypeResult enum
// Do not edit manually

///|
pub(all) enum CanPlayTypeResult {
  
  Maybe
  Probably
} derive(Eq,Show)

///|
pub fn CanPlayTypeResult::from(value: String) -> CanPlayTypeResult {
  match value {
    "" => 
    "maybe" => Maybe
    "probably" => Probably
    _ => 
  }
}

///|
pub fn CanPlayTypeResult::to_js(self : CanPlayTypeResult) -> String {
  match self {
     => ""
    Maybe => "maybe"
    Probably => "probably"
  }
}
