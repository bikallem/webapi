///|
#external
pub type TextTrackCue

///|
pub impl TJsValue for TextTrackCue with to_js(self : TextTrackCue) -> JsValue = "%identity"

///|
pub fn[T : TTextTrackCue] TextTrackCue::into(self : TextTrackCue) -> T = "%identity"

///|
pub impl TTextTrackCue for TextTrackCue

///|
pub impl TEventTarget for TextTrackCue

///|
pub trait TTextTrackCue: TEventTarget {}
