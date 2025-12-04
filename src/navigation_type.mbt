// Auto-generated MoonBit bindings for NavigationType

// Do not edit manually

///|
pub enum NavigationType {
  Push
  Replace
  Reload
  Traverse
} derive(Eq)

///|
pub impl TJsValue for NavigationType with to_js(self) {
  match self {
    NavigationType::Push => TJsValue::to_js("push")
    NavigationType::Replace => TJsValue::to_js("replace")
    NavigationType::Reload => TJsValue::to_js("reload")
    NavigationType::Traverse => TJsValue::to_js("traverse")
  }
}

///|
pub fn NavigationType::from_js(value : JsValue) -> NavigationType? {
  let str : String = value.unsafe_cast()
  match str {
    "push" => Some(NavigationType::Push)
    "replace" => Some(NavigationType::Replace)
    "reload" => Some(NavigationType::Reload)
    "traverse" => Some(NavigationType::Traverse)
    _ => None
  }
}

///|
pub impl Show for NavigationType with output(self, logger) {
  match self {
    NavigationType::Push => logger.write_string("push")
    NavigationType::Replace => logger.write_string("replace")
    NavigationType::Reload => logger.write_string("reload")
    NavigationType::Traverse => logger.write_string("traverse")
  }
}
