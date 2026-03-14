// Do not edit. This file is generated.
// MoonBit type: PresentationStyle
// Specifications: clipboard-apis.idl

pub(all) enum PresentationStyle {
  Unspecified
  Inline
  Attachment
} derive(Eq)

pub impl Show for PresentationStyle with output(self : PresentationStyle, logger : &Logger) -> Unit {
  match self {
    PresentationStyle::Unspecified => logger.write_string("Unspecified")
    PresentationStyle::Inline => logger.write_string("Inline")
    PresentationStyle::Attachment => logger.write_string("Attachment")
  }
}

pub impl TJsValue for PresentationStyle with to_js(self: PresentationStyle) -> JsValue {
  match self {
    PresentationStyle::Unspecified => TJsValue::to_js("unspecified")
    PresentationStyle::Inline => TJsValue::to_js("inline")
    PresentationStyle::Attachment => TJsValue::to_js("attachment")
  }
}

pub fn PresentationStyle::from(value: String) -> PresentationStyle? {
  match value {
    "unspecified" => Some(PresentationStyle::Unspecified)
    "inline" => Some(PresentationStyle::Inline)
    "attachment" => Some(PresentationStyle::Attachment)
    _ => None
  }
}

fn PresentationStyle::from_unchecked(value: String) -> PresentationStyle {
  match value {
    "unspecified" => PresentationStyle::Unspecified
    "inline" => PresentationStyle::Inline
    "attachment" => PresentationStyle::Attachment
    _ => PresentationStyle::Unspecified
  }
}

pub fn PresentationStyle::value(self: PresentationStyle) -> String {
  match self {
    PresentationStyle::Unspecified => "unspecified"
    PresentationStyle::Inline => "inline"
    PresentationStyle::Attachment => "attachment"
  }
}

pub impl FromJsAny for PresentationStyle with from_js_any(value : JsAny) -> PresentationStyle {
  PresentationStyle::from_unchecked(value)
}