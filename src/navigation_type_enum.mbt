// Do not edit. This file is generated.
// MoonBit type: NavigationType
// Specifications: html.idl

pub(all) enum NavigationType {
  Push
  Replace
  Reload
  Traverse
} derive(Eq)

pub impl Show for NavigationType with output(self : NavigationType, logger : &Logger) -> Unit {
  match self {
    NavigationType::Push => logger.write_string("Push")
    NavigationType::Replace => logger.write_string("Replace")
    NavigationType::Reload => logger.write_string("Reload")
    NavigationType::Traverse => logger.write_string("Traverse")
  }
}

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

fn NavigationType::from_unchecked(value: String) -> NavigationType {
  match value {
    "push" => NavigationType::Push
    "replace" => NavigationType::Replace
    "reload" => NavigationType::Reload
    "traverse" => NavigationType::Traverse
    _ => NavigationType::Push
  }
}

pub fn NavigationType::value(self: NavigationType) -> String {
  match self {
    NavigationType::Push => "push"
    NavigationType::Replace => "replace"
    NavigationType::Reload => "reload"
    NavigationType::Traverse => "traverse"
  }
}

pub impl FromJsAny for NavigationType with from_js_any(value : JsAny) -> NavigationType {
  NavigationType::from_unchecked(value)
}