// Auto-generated MoonBit bindings for NavigationHistoryBehavior enum
// Do not edit manually

///|
pub(all) enum NavigationHistoryBehavior {
  Auto
  Push
  Replace
} derive(Eq,Show)

///|
pub fn NavigationHistoryBehavior::from(value: String) -> NavigationHistoryBehavior {
  match value {
    "auto" => Auto
    "push" => Push
    "replace" => Replace
    _ => Auto
  }
}

///|
pub fn NavigationHistoryBehavior::to_js(self : NavigationHistoryBehavior) -> String {
  match self {
    Auto => "auto"
    Push => "push"
    Replace => "replace"
  }
}
