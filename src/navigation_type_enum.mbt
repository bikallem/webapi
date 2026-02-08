// Do not edit. This file is generated.
// MoonBit type: NavigationType
// Specifications: html.idl

pub(all) enum NavigationType {
  Push
  Replace
  Reload
  Traverse
} derive(Eq,Show)

pub impl TJsValue for NavigationType with to_js(self: NavigationType) -> JsValue {
  match self {
    NavigationType::Push => TJsValue::to_js("push")
    NavigationType::Replace => TJsValue::to_js("replace")
    NavigationType::Reload => TJsValue::to_js("reload")
    NavigationType::Traverse => TJsValue::to_js("traverse")
  }
}

pub fn NavigationType::from(value: String) -> NavigationType? {
  match value {
    "push" => Some(NavigationType::Push)
    "replace" => Some(NavigationType::Replace)
    "reload" => Some(NavigationType::Reload)
    "traverse" => Some(NavigationType::Traverse)
    _ => None
  }
}