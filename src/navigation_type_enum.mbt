// Auto-generated MoonBit bindings for NavigationType enum
// Do not edit manually

///|
pub(all) enum NavigationType {
  Push
  Replace
  Reload
  Traverse
} derive(Eq,Show)

///|
pub fn NavigationType::from(value: String) -> NavigationType {
  match value {
    "push" => Push
    "replace" => Replace
    "reload" => Reload
    "traverse" => Traverse
    _ => Push
  }
}

///|
pub fn NavigationType::to_js(self : NavigationType) -> String {
  match self {
    Push => "push"
    Replace => "replace"
    Reload => "reload"
    Traverse => "traverse"
  }
}
