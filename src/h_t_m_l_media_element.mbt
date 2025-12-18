// Auto-generated MoonBit bindings for HTMLMediaElement interface
// Do not edit manually

#external
pub type HTMLMediaElement

pub impl TJsValue for HTMLMediaElement with to_js(self: HTMLMediaElement) -> JsValue = "%identity"


pub fn[T: THTMLMediaElement] HTMLMediaElement::into(self : HTMLMediaElement) -> T = "%identity"
pub impl THTMLMediaElement for HTMLMediaElement

pub trait THTMLMediaElement: TJsValue + TTHTMLElement {
  error(self: Self) -> MediaError = _
  src(self: Self) -> String = _
  set_src(self: Self, value : String) -> Unit = _
  src_object(self: Self) -> MediaProvider = _
  set_src_object(self: Self, value : MediaProvider) -> Unit = _
  current_src(self: Self) -> String = _
  cross_origin(self: Self) -> String = _
  set_cross_origin(self: Self, value : String) -> Unit = _
  network_state(self: Self) -> UInt = _
  preload(self: Self) -> String = _
  set_preload(self: Self, value : String) -> Unit = _
  buffered(self: Self) -> TimeRanges = _
  load(self: Self) -> Unit = _
  can_play_type(self: Self, type_ : String) -> CanPlayTypeResult = _
  ready_state(self: Self) -> UInt = _
  seeking(self: Self) -> Bool = _
  current_time(self: Self) -> Double = _
  set_current_time(self: Self, value : Double) -> Unit = _
  fast_seek(self: Self, time : Double) -> Unit = _
  duration(self: Self) -> Double = _
  get_start_date(self: Self) -> JsValue = _
  paused(self: Self) -> Bool = _
  default_playback_rate(self: Self) -> Double = _
  set_default_playback_rate(self: Self, value : Double) -> Unit = _
  playback_rate(self: Self) -> Double = _
  set_playback_rate(self: Self, value : Double) -> Unit = _
  preserves_pitch(self: Self) -> Bool = _
  set_preserves_pitch(self: Self, value : Bool) -> Unit = _
  played(self: Self) -> TimeRanges = _
  seekable(self: Self) -> TimeRanges = _
  ended(self: Self) -> Bool = _
  autoplay(self: Self) -> Bool = _
  set_autoplay(self: Self, value : Bool) -> Unit = _
  loop_(self: Self) -> Bool = _
  set_loop_(self: Self, value : Bool) -> Unit = _
  play(self: Self) -> JsPromise[Unit] = _
  pause(self: Self) -> Unit = _
  controls(self: Self) -> Bool = _
  set_controls(self: Self, value : Bool) -> Unit = _
  volume(self: Self) -> Double = _
  set_volume(self: Self, value : Double) -> Unit = _
  muted(self: Self) -> Bool = _
  set_muted(self: Self, value : Bool) -> Unit = _
  default_muted(self: Self) -> Bool = _
  set_default_muted(self: Self, value : Bool) -> Unit = _
  audio_tracks(self: Self) -> AudioTrackList = _
  video_tracks(self: Self) -> VideoTrackList = _
  text_tracks(self: Self) -> TextTrackList = _
  add_text_track(self: Self, kind : TextTrackKind, label? : String, language? : String) -> TextTrack = _
}

///|
fn h_t_m_l_media_element_error_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "error"

///|
impl THTMLMediaElement with error(self : Self) -> MediaError {
  h_t_m_l_media_element_error_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLMediaElement" "src"

///|
impl THTMLMediaElement with src(self : Self) -> String {
  h_t_m_l_media_element_src_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMediaElement" "set_src"

///|
impl THTMLMediaElement with set_src(self : Self, value : String) -> Unit {
  h_t_m_l_media_element_set_src_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_src_object_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "srcObject"

///|
impl THTMLMediaElement with src_object(self : Self) -> MediaProvider {
  h_t_m_l_media_element_src_object_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_set_src_object_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLMediaElement" "set_srcObject"

///|
impl THTMLMediaElement with set_src_object(self : Self, value : MediaProvider) -> Unit {
  h_t_m_l_media_element_set_src_object_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn h_t_m_l_media_element_current_src_ffi(obj : JsValue) -> String = "webapi_HTMLMediaElement" "currentSrc"

///|
impl THTMLMediaElement with current_src(self : Self) -> String {
  h_t_m_l_media_element_current_src_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_cross_origin_ffi(obj : JsValue) -> String = "webapi_HTMLMediaElement" "crossOrigin"

///|
impl THTMLMediaElement with cross_origin(self : Self) -> String {
  h_t_m_l_media_element_cross_origin_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_cross_origin_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMediaElement" "set_crossOrigin"

///|
impl THTMLMediaElement with set_cross_origin(self : Self, value : String) -> Unit {
  h_t_m_l_media_element_set_cross_origin_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_network_state_ffi(obj : JsValue) -> UInt = "webapi_HTMLMediaElement" "networkState"

///|
impl THTMLMediaElement with network_state(self : Self) -> UInt {
  h_t_m_l_media_element_network_state_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_preload_ffi(obj : JsValue) -> String = "webapi_HTMLMediaElement" "preload"

///|
impl THTMLMediaElement with preload(self : Self) -> String {
  h_t_m_l_media_element_preload_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_preload_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLMediaElement" "set_preload"

///|
impl THTMLMediaElement with set_preload(self : Self, value : String) -> Unit {
  h_t_m_l_media_element_set_preload_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_buffered_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "buffered"

///|
impl THTMLMediaElement with buffered(self : Self) -> TimeRanges {
  h_t_m_l_media_element_buffered_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_ready_state_ffi(obj : JsValue) -> UInt = "webapi_HTMLMediaElement" "readyState"

///|
impl THTMLMediaElement with ready_state(self : Self) -> UInt {
  h_t_m_l_media_element_ready_state_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_seeking_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "seeking"

///|
impl THTMLMediaElement with seeking(self : Self) -> Bool {
  h_t_m_l_media_element_seeking_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_current_time_ffi(obj : JsValue) -> Double = "webapi_HTMLMediaElement" "currentTime"

///|
impl THTMLMediaElement with current_time(self : Self) -> Double {
  h_t_m_l_media_element_current_time_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_current_time_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMediaElement" "set_currentTime"

///|
impl THTMLMediaElement with set_current_time(self : Self, value : Double) -> Unit {
  h_t_m_l_media_element_set_current_time_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_duration_ffi(obj : JsValue) -> Double = "webapi_HTMLMediaElement" "duration"

///|
impl THTMLMediaElement with duration(self : Self) -> Double {
  h_t_m_l_media_element_duration_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_paused_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "paused"

///|
impl THTMLMediaElement with paused(self : Self) -> Bool {
  h_t_m_l_media_element_paused_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_default_playback_rate_ffi(obj : JsValue) -> Double = "webapi_HTMLMediaElement" "defaultPlaybackRate"

///|
impl THTMLMediaElement with default_playback_rate(self : Self) -> Double {
  h_t_m_l_media_element_default_playback_rate_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_default_playback_rate_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMediaElement" "set_defaultPlaybackRate"

///|
impl THTMLMediaElement with set_default_playback_rate(self : Self, value : Double) -> Unit {
  h_t_m_l_media_element_set_default_playback_rate_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_playback_rate_ffi(obj : JsValue) -> Double = "webapi_HTMLMediaElement" "playbackRate"

///|
impl THTMLMediaElement with playback_rate(self : Self) -> Double {
  h_t_m_l_media_element_playback_rate_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_playback_rate_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMediaElement" "set_playbackRate"

///|
impl THTMLMediaElement with set_playback_rate(self : Self, value : Double) -> Unit {
  h_t_m_l_media_element_set_playback_rate_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_preserves_pitch_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "preservesPitch"

///|
impl THTMLMediaElement with preserves_pitch(self : Self) -> Bool {
  h_t_m_l_media_element_preserves_pitch_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_preserves_pitch_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMediaElement" "set_preservesPitch"

///|
impl THTMLMediaElement with set_preserves_pitch(self : Self, value : Bool) -> Unit {
  h_t_m_l_media_element_set_preserves_pitch_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_played_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "played"

///|
impl THTMLMediaElement with played(self : Self) -> TimeRanges {
  h_t_m_l_media_element_played_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_seekable_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "seekable"

///|
impl THTMLMediaElement with seekable(self : Self) -> TimeRanges {
  h_t_m_l_media_element_seekable_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_ended_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "ended"

///|
impl THTMLMediaElement with ended(self : Self) -> Bool {
  h_t_m_l_media_element_ended_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_autoplay_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "autoplay"

///|
impl THTMLMediaElement with autoplay(self : Self) -> Bool {
  h_t_m_l_media_element_autoplay_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_autoplay_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMediaElement" "set_autoplay"

///|
impl THTMLMediaElement with set_autoplay(self : Self, value : Bool) -> Unit {
  h_t_m_l_media_element_set_autoplay_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_loop_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "loop"

///|
impl THTMLMediaElement with loop_(self : Self) -> Bool {
  h_t_m_l_media_element_loop_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_loop_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMediaElement" "set_loop"

///|
impl THTMLMediaElement with set_loop_(self : Self, value : Bool) -> Unit {
  h_t_m_l_media_element_set_loop_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_controls_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "controls"

///|
impl THTMLMediaElement with controls(self : Self) -> Bool {
  h_t_m_l_media_element_controls_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_controls_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMediaElement" "set_controls"

///|
impl THTMLMediaElement with set_controls(self : Self, value : Bool) -> Unit {
  h_t_m_l_media_element_set_controls_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_volume_ffi(obj : JsValue) -> Double = "webapi_HTMLMediaElement" "volume"

///|
impl THTMLMediaElement with volume(self : Self) -> Double {
  h_t_m_l_media_element_volume_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_volume_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMediaElement" "set_volume"

///|
impl THTMLMediaElement with set_volume(self : Self, value : Double) -> Unit {
  h_t_m_l_media_element_set_volume_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_muted_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "muted"

///|
impl THTMLMediaElement with muted(self : Self) -> Bool {
  h_t_m_l_media_element_muted_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_muted_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMediaElement" "set_muted"

///|
impl THTMLMediaElement with set_muted(self : Self, value : Bool) -> Unit {
  h_t_m_l_media_element_set_muted_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_default_muted_ffi(obj : JsValue) -> Bool = "webapi_HTMLMediaElement" "defaultMuted"

///|
impl THTMLMediaElement with default_muted(self : Self) -> Bool {
  h_t_m_l_media_element_default_muted_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_set_default_muted_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLMediaElement" "set_defaultMuted"

///|
impl THTMLMediaElement with set_default_muted(self : Self, value : Bool) -> Unit {
  h_t_m_l_media_element_set_default_muted_ffi(self.to_js(), value)
}

///|
fn h_t_m_l_media_element_audio_tracks_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "audioTracks"

///|
impl THTMLMediaElement with audio_tracks(self : Self) -> AudioTrackList {
  h_t_m_l_media_element_audio_tracks_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_video_tracks_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "videoTracks"

///|
impl THTMLMediaElement with video_tracks(self : Self) -> VideoTrackList {
  h_t_m_l_media_element_video_tracks_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_text_tracks_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "textTracks"

///|
impl THTMLMediaElement with text_tracks(self : Self) -> TextTrackList {
  h_t_m_l_media_element_text_tracks_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_load_ffi(obj : JsValue) -> Unit = "webapi_HTMLMediaElement" "load"

///|
impl THTMLMediaElement with load(self : Self) -> Unit {
  h_t_m_l_media_element_load_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_can_play_type_ffi(obj : JsValue, type_ : JsValue) -> JsValue = "webapi_HTMLMediaElement" "canPlayType"

///|
impl THTMLMediaElement with can_play_type(self : Self, type_ : String) -> CanPlayTypeResult {
  h_t_m_l_media_element_can_play_type_ffi(self.to_js(), TJsValue::to_js(type_)).unsafe_cast()
}

///|
fn h_t_m_l_media_element_fast_seek_ffi(obj : JsValue, time : JsValue) -> Unit = "webapi_HTMLMediaElement" "fastSeek"

///|
impl THTMLMediaElement with fast_seek(self : Self, time : Double) -> Unit {
  h_t_m_l_media_element_fast_seek_ffi(self.to_js(), TJsValue::to_js(time))
}

///|
fn h_t_m_l_media_element_get_start_date_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "getStartDate"

///|
impl THTMLMediaElement with get_start_date(self : Self) -> JsValue {
  h_t_m_l_media_element_get_start_date_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_play_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "play"

///|
impl THTMLMediaElement with play(self : Self) -> JsPromise[Unit] {
  h_t_m_l_media_element_play_ffi(self.to_js()).unsafe_cast()
}

///|
fn h_t_m_l_media_element_pause_ffi(obj : JsValue) -> Unit = "webapi_HTMLMediaElement" "pause"

///|
impl THTMLMediaElement with pause(self : Self) -> Unit {
  h_t_m_l_media_element_pause_ffi(self.to_js())
}

///|
fn h_t_m_l_media_element_add_text_track_ffi(obj : JsValue, kind : JsValue, label : JsValue, language : JsValue) -> JsValue = "webapi_HTMLMediaElement" "addTextTrack"

///|
impl THTMLMediaElement with add_text_track(self : Self, kind : TextTrackKind, label? : String, language? : String) -> TextTrack {
  h_t_m_l_media_element_add_text_track_ffi(self.to_js(), TJsValue::to_js(kind), TJsValue::to_js(label), TJsValue::to_js(language)).unsafe_cast()
}