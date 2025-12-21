///|
pub(all) enum TextTrackKind {
  Subtitles
  Captions
  Descriptions
  Chapters
  Metadata
} derive(Eq, Show)

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
