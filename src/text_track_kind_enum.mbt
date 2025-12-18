// Auto-generated MoonBit bindings for TextTrackKind enum
// Do not edit manually

///|
pub(all) enum TextTrackKind {
  Subtitles
  Captions
  Descriptions
  Chapters
  Metadata
} derive(Eq,Show)

///|
pub fn TextTrackKind::from(value: String) -> TextTrackKind {
  match value {
    "subtitles" => Subtitles
    "captions" => Captions
    "descriptions" => Descriptions
    "chapters" => Chapters
    "metadata" => Metadata
    _ => Subtitles
  }
}

///|
pub fn TextTrackKind::to_js(self : TextTrackKind) -> String {
  match self {
    Subtitles => "subtitles"
    Captions => "captions"
    Descriptions => "descriptions"
    Chapters => "chapters"
    Metadata => "metadata"
  }
}
