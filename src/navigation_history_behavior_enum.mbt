// Do not edit. This file is generated.
// MoonBit type: NavigationHistoryBehavior
// Specifications: html.idl

///|
pub(all) enum NavigationHistoryBehavior {
  Auto
  Push
  Replace
} derive(Eq)

///|
pub impl Show for NavigationHistoryBehavior with output(
  self : NavigationHistoryBehavior,
  logger : &Logger,
) -> Unit {
  match self {
    NavigationHistoryBehavior::Auto => logger.write_string("Auto")
    NavigationHistoryBehavior::Push => logger.write_string("Push")
    NavigationHistoryBehavior::Replace => logger.write_string("Replace")
  }
}

///|
pub impl TJsValue for NavigationHistoryBehavior with to_js(
  self : NavigationHistoryBehavior,
) -> JsValue {
  match self {
    NavigationHistoryBehavior::Auto => TJsValue::to_js("auto")
    NavigationHistoryBehavior::Push => TJsValue::to_js("push")
    NavigationHistoryBehavior::Replace => TJsValue::to_js("replace")
  }
}

///|
pub fn NavigationHistoryBehavior::from(
  value : String,
) -> NavigationHistoryBehavior? {
  match value {
    "auto" => Some(NavigationHistoryBehavior::Auto)
    "push" => Some(NavigationHistoryBehavior::Push)
    "replace" => Some(NavigationHistoryBehavior::Replace)
    _ => None
  }
}

///|
fn NavigationHistoryBehavior::from_unchecked(
  value : String,
) -> NavigationHistoryBehavior {
  match value {
    "auto" => NavigationHistoryBehavior::Auto
    "push" => NavigationHistoryBehavior::Push
    "replace" => NavigationHistoryBehavior::Replace
    _ => abort("unknown enum value")
  }
}

///|
pub fn NavigationHistoryBehavior::value(
  self : NavigationHistoryBehavior,
) -> String {
  let buf = StringBuilder::new()
  match self {
    NavigationHistoryBehavior::Auto => buf.write_string("auto")
    NavigationHistoryBehavior::Push => buf.write_string("push")
    NavigationHistoryBehavior::Replace => buf.write_string("replace")
  }
  buf.to_string()
}
