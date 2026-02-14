// Do not edit. This file is generated.
// MoonBit type: NavigationFocusReset
// Specifications: html.idl

///|
pub(all) enum NavigationFocusReset {
  AfterTransition
  Manual
} derive(Eq)

///|
pub impl Show for NavigationFocusReset with output(
  self : NavigationFocusReset,
  logger : &Logger,
) -> Unit {
  match self {
    NavigationFocusReset::AfterTransition =>
      logger.write_string("AfterTransition")
    NavigationFocusReset::Manual => logger.write_string("Manual")
  }
}

///|
pub impl TJsValue for NavigationFocusReset with to_js(
  self : NavigationFocusReset,
) -> JsValue {
  match self {
    NavigationFocusReset::AfterTransition => TJsValue::to_js("after-transition")
    NavigationFocusReset::Manual => TJsValue::to_js("manual")
  }
}

///|
pub fn NavigationFocusReset::from(value : String) -> NavigationFocusReset? {
  match value {
    "after-transition" => Some(NavigationFocusReset::AfterTransition)
    "manual" => Some(NavigationFocusReset::Manual)
    _ => None
  }
}

///|
fn NavigationFocusReset::from_unchecked(value : String) -> NavigationFocusReset {
  match value {
    "after-transition" => NavigationFocusReset::AfterTransition
    "manual" => NavigationFocusReset::Manual
    _ => abort("unknown NavigationFocusReset enum value")
  }
}

///|
pub fn NavigationFocusReset::value(self : NavigationFocusReset) -> String {
  let buf = StringBuilder::new()
  match self {
    NavigationFocusReset::AfterTransition =>
      buf.write_string("after-transition")
    NavigationFocusReset::Manual => buf.write_string("manual")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for NavigationFocusReset with from_js_any(value : JsAny) -> NavigationFocusReset {
  NavigationFocusReset::from_unchecked(value)
}
