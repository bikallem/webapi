///|
#external
pub type AudioTrack

///|
pub impl TJsValue for AudioTrack with to_js(self : AudioTrack) -> JsValue = "%identity"

///|
pub fn[T : TAudioTrack] AudioTrack::into(self : AudioTrack) -> T = "%identity"

///|
pub impl TAudioTrack for AudioTrack

///|
pub trait TAudioTrack: TJsValue {}
