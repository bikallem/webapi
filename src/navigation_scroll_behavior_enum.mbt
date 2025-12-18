// Auto-generated MoonBit bindings for NavigationScrollBehavior enum
// Do not edit manually

///|
pub(all) enum NavigationScrollBehavior {
  AfterTransition
  Manual
} derive(Eq,Show)

///|
pub fn NavigationScrollBehavior::from(value: String) -> NavigationScrollBehavior {
  match value {
    "after-transition" => AfterTransition
    "manual" => Manual
    _ => AfterTransition
  }
}

///|
pub fn NavigationScrollBehavior::to_js(self : NavigationScrollBehavior) -> String {
  match self {
    AfterTransition => "after-transition"
    Manual => "manual"
  }
}
