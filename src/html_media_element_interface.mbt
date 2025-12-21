///|
#external
pub type HTMLMediaElement

///|
pub impl TJsValue for HTMLMediaElement with to_js(self : HTMLMediaElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMediaElement] HTMLMediaElement::into(
  self : HTMLMediaElement,
) -> T = "%identity"

///|
pub impl THTMLMediaElement for HTMLMediaElement

///|
pub impl THTMLElement for HTMLMediaElement

///|
pub impl TElement for HTMLMediaElement

///|
pub impl TNode for HTMLMediaElement

///|
pub impl TEventTarget for HTMLMediaElement

///|
pub trait THTMLMediaElement: THTMLElement {
  load(self : Self) -> Unit = _
  can_play_type(self : Self, type_ : String) -> CanPlayTypeResult = _
  fast_seek(self : Self, time : Double) -> Unit = _
  get_start_date(self : Self) -> JsValue = _
  play(self : Self) -> JsValue = _
  pause(self : Self) -> Unit = _
  add_text_track(
    self : Self,
    kind : TextTrackKind,
    label? : String,
    language? : String,
  ) -> TextTrack = _
}

///|
extern "js" fn html_media_element_load_ffi(obj : JsValue) -> Unit = "(obj) => obj.load(obj)"

///|
impl THTMLMediaElement with load(self : Self) -> Unit {
  html_media_element_load_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_media_element_can_play_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> CanPlayTypeResult = "(obj, type_) => obj.canPlayType(obj, type_)"

///|
impl THTMLMediaElement with can_play_type(self : Self, type_ : String) -> CanPlayTypeResult {
  html_media_element_can_play_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
extern "js" fn html_media_element_fast_seek_ffi(
  obj : JsValue,
  time : JsValue,
) -> Unit = "(obj, time) => obj.fastSeek(obj, time)"

///|
impl THTMLMediaElement with fast_seek(self : Self, time : Double) -> Unit {
  html_media_element_fast_seek_ffi(TJsValue::to_js(self), TJsValue::to_js(time))
}

///|
extern "js" fn html_media_element_get_start_date_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getStartDate(obj)"

///|
impl THTMLMediaElement with get_start_date(self : Self) -> JsValue {
  html_media_element_get_start_date_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_media_element_play_ffi(obj : JsValue) -> JsValue = "(obj) => obj.play(obj)"

///|
impl THTMLMediaElement with play(self : Self) -> JsValue {
  html_media_element_play_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_media_element_pause_ffi(obj : JsValue) -> Unit = "(obj) => obj.pause(obj)"

///|
impl THTMLMediaElement with pause(self : Self) -> Unit {
  html_media_element_pause_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_media_element_add_text_track_ffi(
  obj : JsValue,
  kind : JsValue,
  label : JsValue,
  language : JsValue,
) -> TextTrack = "(obj, kind, label, language) => obj.addTextTrack(obj, kind, label, language)"

///|
impl THTMLMediaElement with add_text_track(
  self : Self,
  kind : TextTrackKind,
  label? : String = "",
  language? : String = "",
) -> TextTrack {
  html_media_element_add_text_track_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(kind),
    TJsValue::to_js(label),
    TJsValue::to_js(language),
  )
}
