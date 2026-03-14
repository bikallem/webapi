// Do not edit. This file is generated.
// MoonBit type: ShadowRootMode
// Specifications: dom.idl

pub(all) enum ShadowRootMode {
  Open
  Closed
} derive(Eq)

pub impl Show for ShadowRootMode with output(self : ShadowRootMode, logger : &Logger) -> Unit {
  match self {
    ShadowRootMode::Open => logger.write_string("Open")
    ShadowRootMode::Closed => logger.write_string("Closed")
  }
}

pub impl TJsValue for ShadowRootMode with to_js(self: ShadowRootMode) -> JsValue {
  match self {
    ShadowRootMode::Open => TJsValue::to_js("open")
    ShadowRootMode::Closed => TJsValue::to_js("closed")
  }
}

pub fn ShadowRootMode::from(value: String) -> ShadowRootMode? {
  match value {
    "open" => Some(ShadowRootMode::Open)
    "closed" => Some(ShadowRootMode::Closed)
    _ => None
  }
}

fn ShadowRootMode::from_unchecked(value: String) -> ShadowRootMode {
  match value {
    "open" => ShadowRootMode::Open
    "closed" => ShadowRootMode::Closed
    _ => ShadowRootMode::Open
  }
}

pub fn ShadowRootMode::value(self: ShadowRootMode) -> String {
  match self {
    ShadowRootMode::Open => "open"
    ShadowRootMode::Closed => "closed"
  }
}

pub impl FromJsAny for ShadowRootMode with from_js_any(value : JsAny) -> ShadowRootMode {
  ShadowRootMode::from_unchecked(value)
}