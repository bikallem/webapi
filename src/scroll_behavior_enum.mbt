// Auto-generated MoonBit bindings for ScrollBehavior enum
// Do not edit manually

///|
pub(all) enum ScrollBehavior {
  Auto
  Instant
  Smooth
} derive(Eq,Show)

///|
pub fn ScrollBehavior::from(value: String) -> ScrollBehavior {
  match value {
    "auto" => Auto
    "instant" => Instant
    "smooth" => Smooth
    _ => Auto
  }
}

///|
pub fn ScrollBehavior::to_js(self : ScrollBehavior) -> String {
  match self {
    Auto => "auto"
    Instant => "instant"
    Smooth => "smooth"
  }
}
