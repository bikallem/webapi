// Do not edit. This file is generated.
// MoonBit type: NavigationScrollBehavior
// Specifications: html.idl

///|
pub(all) enum NavigationScrollBehavior {
  AfterTransition
  Manual
} derive(Eq)

///|
pub impl Show for NavigationScrollBehavior with output(
  self : NavigationScrollBehavior,
  logger : &Logger,
) -> Unit {
  match self {
    NavigationScrollBehavior::AfterTransition =>
      logger.write_string("AfterTransition")
    NavigationScrollBehavior::Manual => logger.write_string("Manual")
  }
}

///|
pub impl TJsValue for NavigationScrollBehavior with to_js(
  self : NavigationScrollBehavior,
) -> JsValue {
  match self {
    NavigationScrollBehavior::AfterTransition =>
      TJsValue::to_js("after-transition")
    NavigationScrollBehavior::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn NavigationScrollBehavior::from(
  value : String,
) -> NavigationScrollBehavior? {
  match value {
    "after-transition" => Some(NavigationScrollBehavior::AfterTransition)
    "manual" => Some(NavigationScrollBehavior::Manual)
    _ => None
  }
}

///|
fn NavigationScrollBehavior::from_unchecked(
  value : String,
) -> NavigationScrollBehavior {
  match value {
    "after-transition" => NavigationScrollBehavior::AfterTransition
    "manual" => NavigationScrollBehavior::Manual
    _ => abort("unknown NavigationScrollBehavior enum value")
  }
}

///|
pub fn NavigationScrollBehavior::value(
  self : NavigationScrollBehavior,
) -> String {
  let buf = StringBuilder::new()
  match self {
    NavigationScrollBehavior::AfterTransition =>
      buf.write_string("after-transition")
    NavigationScrollBehavior::Manual => buf.write_string("manual")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for NavigationScrollBehavior with from_js_any(value : JsAny) -> NavigationScrollBehavior {
  NavigationScrollBehavior::from_unchecked(value)
}
