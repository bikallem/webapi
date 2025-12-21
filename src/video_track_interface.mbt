///|
#external
pub type VideoTrack

///|
pub impl TJsValue for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub fn[T : TVideoTrack] VideoTrack::into(self : VideoTrack) -> T = "%identity"

///|
pub impl TVideoTrack for VideoTrack

///|
pub trait TVideoTrack: TJsValue {}
