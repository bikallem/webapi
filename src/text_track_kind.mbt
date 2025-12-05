// Auto-generated MoonBit bindings for TextTrackKind

// Do not edit manually

///|
pub enum TextTrackKind {
  Subtitles
  Captions
  Descriptions
  Chapters
  Metadata
} derive(Eq)

///|
pub impl TJsValue for TextTrackKind with to_js(self) {
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
pub impl Show for TextTrackKind with output(self, logger) {
  match self {
    TextTrackKind::Subtitles => logger.write_string("subtitles")
    TextTrackKind::Captions => logger.write_string("captions")
    TextTrackKind::Descriptions => logger.write_string("descriptions")
    TextTrackKind::Chapters => logger.write_string("chapters")
    TextTrackKind::Metadata => logger.write_string("metadata")
  }
}
