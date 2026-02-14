// Do not edit. This file is generated.
// MoonBit type: TextTrackKind
// Specifications: html.idl

///|
pub(all) enum TextTrackKind {
  Subtitles
  Captions
  Descriptions
  Chapters
  Metadata
} derive(Eq)

///|
pub impl Show for TextTrackKind with output(
  self : TextTrackKind,
  logger : &Logger,
) -> Unit {
  match self {
    TextTrackKind::Subtitles => logger.write_string("Subtitles")
    TextTrackKind::Captions => logger.write_string("Captions")
    TextTrackKind::Descriptions => logger.write_string("Descriptions")
    TextTrackKind::Chapters => logger.write_string("Chapters")
    TextTrackKind::Metadata => logger.write_string("Metadata")
  }
}

///|
pub impl TJsValue for TextTrackKind with to_js(self : TextTrackKind) -> JsValue {
  match self {
    TextTrackKind::Subtitles => TJsValue::to_js("subtitles")
    TextTrackKind::Captions => TJsValue::to_js("captions")
    TextTrackKind::Descriptions => TJsValue::to_js("descriptions")
    TextTrackKind::Chapters => TJsValue::to_js("chapters")
    TextTrackKind::Metadata => TJsValue::to_js("metadata")
  }
}

///|
pub fn TextTrackKind::from(value : String) -> TextTrackKind? {
  match value {
    "subtitles" => Some(TextTrackKind::Subtitles)
    "captions" => Some(TextTrackKind::Captions)
    "descriptions" => Some(TextTrackKind::Descriptions)
    "chapters" => Some(TextTrackKind::Chapters)
    "metadata" => Some(TextTrackKind::Metadata)
    _ => None
  }
}

///|
fn TextTrackKind::from_unchecked(value : String) -> TextTrackKind {
  match value {
    "subtitles" => TextTrackKind::Subtitles
    "captions" => TextTrackKind::Captions
    "descriptions" => TextTrackKind::Descriptions
    "chapters" => TextTrackKind::Chapters
    "metadata" => TextTrackKind::Metadata
    _ => abort("unknown enum value")
  }
}

///|
pub fn TextTrackKind::value(self : TextTrackKind) -> String {
  let buf = StringBuilder::new()
  match self {
    TextTrackKind::Subtitles => buf.write_string("subtitles")
    TextTrackKind::Captions => buf.write_string("captions")
    TextTrackKind::Descriptions => buf.write_string("descriptions")
    TextTrackKind::Chapters => buf.write_string("chapters")
    TextTrackKind::Metadata => buf.write_string("metadata")
  }
  buf.to_string()
}

///|
pub impl FromJsAny for TextTrackKind with from_js_any(value : JsAny) -> TextTrackKind {
  TextTrackKind::from_unchecked(value)
}
