// Auto-generated MoonBit bindings for NavigationFocusReset enum
// Do not edit manually

///|
pub(all) enum NavigationFocusReset {
  AfterTransition
  Manual
} derive(Eq,Show)

///|
pub fn NavigationFocusReset::from(value: String) -> NavigationFocusReset {
  match value {
    "after-transition" => AfterTransition
    "manual" => Manual
    _ => AfterTransition
  }
}

///|
pub fn NavigationFocusReset::to_js(self : NavigationFocusReset) -> String {
  match self {
    AfterTransition => "after-transition"
    Manual => "manual"
  }
}
