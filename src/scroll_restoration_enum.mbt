// Auto-generated MoonBit bindings for ScrollRestoration enum
// Do not edit manually

///|
pub(all) enum ScrollRestoration {
  Auto
  Manual
} derive(Eq,Show)

///|
pub fn ScrollRestoration::from(value: String) -> ScrollRestoration {
  match value {
    "auto" => Auto
    "manual" => Manual
    _ => Auto
  }
}

///|
pub fn ScrollRestoration::to_js(self : ScrollRestoration) -> String {
  match self {
    Auto => "auto"
    Manual => "manual"
  }
}
