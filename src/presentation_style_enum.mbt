// Do not edit. This file is generated.
// MoonBit type: PresentationStyle
// Specifications: clipboard-apis.idl

pub(all) enum PresentationStyle {
  Unspecified
  Inline
  Attachment
} derive(Eq,Show)

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