// Do not edit. This file is generated.
// MoonBit type: HTMLMediaElement
// Specifications: html.idl

/// [HTMLMediaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement)
#external
pub type HTMLMediaElement

pub impl TJsValue for HTMLMediaElement with to_js(self: HTMLMediaElement) -> JsValue = "%identity"

pub fn[T: THTMLMediaElement] HTMLMediaElement::into(self : HTMLMediaElement) -> T = "%identity"

pub impl THTMLMediaElement for HTMLMediaElement

pub impl THTMLElement for HTMLMediaElement

pub impl TElement for HTMLMediaElement

pub impl TNode for HTMLMediaElement

pub impl TEventTarget for HTMLMediaElement

pub const HTML_MEDIA_ELEMENT_NETWORK_EMPTY: UInt = 0

pub const HTML_MEDIA_ELEMENT_NETWORK_IDLE: UInt = 1

pub const HTML_MEDIA_ELEMENT_NETWORK_LOADING: UInt = 2

pub const HTML_MEDIA_ELEMENT_NETWORK_NO_SOURCE: UInt = 3

pub const HTML_MEDIA_ELEMENT_HAVE_NOTHING: UInt = 0

pub const HTML_MEDIA_ELEMENT_HAVE_METADATA: UInt = 1

pub const HTML_MEDIA_ELEMENT_HAVE_CURRENT_DATA: UInt = 2

pub const HTML_MEDIA_ELEMENT_HAVE_FUTURE_DATA: UInt = 3

pub const HTML_MEDIA_ELEMENT_HAVE_ENOUGH_DATA: UInt = 4

/// [HTMLMediaElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement) interface.
pub trait THTMLMediaElement: THTMLElement {
  error(self : Self) -> MediaError = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  src_object(self : Self) -> MediaProvider = _
  set_src_object(self : Self, src_object : MediaProvider) -> Unit = _
  current_src(self : Self) -> String = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  network_state(self : Self) -> UInt = _
  preload(self : Self) -> String = _
  set_preload(self : Self, preload : String) -> Unit = _
  buffered(self : Self) -> TimeRanges = _
  load(self : Self) -> Unit = _
  can_play_type(self : Self, type_ : String) -> CanPlayTypeResult = _
  ready_state(self : Self) -> UInt = _
  seeking(self : Self) -> Bool = _
  current_time(self : Self) -> Double = _
  set_current_time(self : Self, current_time : Double) -> Unit = _
  fast_seek(self : Self, time : Double) -> Unit = _
  duration(self : Self) -> Double = _
  get_start_date(self : Self) -> JsValue = _
  paused(self : Self) -> Bool = _
  default_playback_rate(self : Self) -> Double = _
  set_default_playback_rate(self : Self, default_playback_rate : Double) -> Unit = _
  playback_rate(self : Self) -> Double = _
  set_playback_rate(self : Self, playback_rate : Double) -> Unit = _
  preserves_pitch(self : Self) -> Bool = _
  set_preserves_pitch(self : Self, preserves_pitch : Bool) -> Unit = _
  played(self : Self) -> TimeRanges = _
  seekable(self : Self) -> TimeRanges = _
  ended(self : Self) -> Bool = _
  autoplay(self : Self) -> Bool = _
  set_autoplay(self : Self, autoplay : Bool) -> Unit = _
  loop_(self : Self) -> Bool = _
  set_loop_(self : Self, loop_ : Bool) -> Unit = _
  play(self : Self) -> @js_async.Promise[Unit] = _
  pause(self : Self) -> Unit = _
  controls(self : Self) -> Bool = _
  set_controls(self : Self, controls : Bool) -> Unit = _
  volume(self : Self) -> Double = _
  set_volume(self : Self, volume : Double) -> Unit = _
  muted(self : Self) -> Bool = _
  set_muted(self : Self, muted : Bool) -> Unit = _
  default_muted(self : Self) -> Bool = _
  set_default_muted(self : Self, default_muted : Bool) -> Unit = _
  audio_tracks(self : Self) -> AudioTrackList = _
  video_tracks(self : Self) -> VideoTrackList = _
  text_tracks(self : Self) -> TextTrackList = _
  add_text_track(self : Self, kind : TextTrackKind, label? : String, language? : String) -> TextTrack = _
}

/// [HTMLMediaElement.error](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/error)
impl THTMLMediaElement with error(self : Self) -> MediaError {
  html_media_element_error_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/src)
impl THTMLMediaElement with src(self : Self) -> String {
  html_media_element_src_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/src)
impl THTMLMediaElement with set_src(self : Self, 
src : String) -> Unit {
  html_media_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

/// [HTMLMediaElement.srcObject](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/srcObject)
impl THTMLMediaElement with src_object(self : Self) -> MediaProvider {
  html_media_element_src_object_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.srcObject](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/srcObject)
impl THTMLMediaElement with set_src_object(self : Self, 
src_object : MediaProvider) -> Unit {
  html_media_element_set_src_object_ffi(TJsValue::to_js(self), TJsValue::to_js(src_object))
}

/// [HTMLMediaElement.currentSrc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/currentSrc)
impl THTMLMediaElement with current_src(self : Self) -> String {
  html_media_element_current_src_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/crossOrigin)
impl THTMLMediaElement with cross_origin(self : Self) -> String {
  html_media_element_cross_origin_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/crossOrigin)
impl THTMLMediaElement with set_cross_origin(self : Self, 
cross_origin : String) -> Unit {
  html_media_element_set_cross_origin_ffi(TJsValue::to_js(self), TJsValue::to_js(cross_origin))
}

/// [HTMLMediaElement.networkState](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/networkState)
impl THTMLMediaElement with network_state(self : Self) -> UInt {
  html_media_element_network_state_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.preload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/preload)
impl THTMLMediaElement with preload(self : Self) -> String {
  html_media_element_preload_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.preload](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/preload)
impl THTMLMediaElement with set_preload(self : Self, 
preload : String) -> Unit {
  html_media_element_set_preload_ffi(TJsValue::to_js(self), TJsValue::to_js(preload))
}

/// [HTMLMediaElement.buffered](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/buffered)
impl THTMLMediaElement with buffered(self : Self) -> TimeRanges {
  html_media_element_buffered_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.load](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/load)
impl THTMLMediaElement with load(self : Self) -> Unit {
  html_media_element_load_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.canPlayType](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/canPlayType)
impl THTMLMediaElement with can_play_type(self : Self, 
type_ : String) -> CanPlayTypeResult {
  html_media_element_can_play_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLMediaElement.readyState](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/readyState)
impl THTMLMediaElement with ready_state(self : Self) -> UInt {
  html_media_element_ready_state_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.seeking](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/seeking)
impl THTMLMediaElement with seeking(self : Self) -> Bool {
  html_media_element_seeking_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.currentTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/currentTime)
impl THTMLMediaElement with current_time(self : Self) -> Double {
  html_media_element_current_time_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.currentTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/currentTime)
impl THTMLMediaElement with set_current_time(self : Self, 
current_time : Double) -> Unit {
  html_media_element_set_current_time_ffi(TJsValue::to_js(self), TJsValue::to_js(current_time))
}

/// [HTMLMediaElement.fastSeek](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/fastSeek)
impl THTMLMediaElement with fast_seek(self : Self, 
time : Double) -> Unit {
  html_media_element_fast_seek_ffi(TJsValue::to_js(self), TJsValue::to_js(time))
}

/// [HTMLMediaElement.duration](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/duration)
impl THTMLMediaElement with duration(self : Self) -> Double {
  html_media_element_duration_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.getStartDate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/getStartDate)
impl THTMLMediaElement with get_start_date(self : Self) -> JsValue {
  html_media_element_get_start_date_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.paused](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/paused)
impl THTMLMediaElement with paused(self : Self) -> Bool {
  html_media_element_paused_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.defaultPlaybackRate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/defaultPlaybackRate)
impl THTMLMediaElement with default_playback_rate(self : Self) -> Double {
  html_media_element_default_playback_rate_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.defaultPlaybackRate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/defaultPlaybackRate)
impl THTMLMediaElement with set_default_playback_rate(self : Self, 
default_playback_rate : Double) -> Unit {
  html_media_element_set_default_playback_rate_ffi(TJsValue::to_js(self), TJsValue::to_js(default_playback_rate))
}

/// [HTMLMediaElement.playbackRate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/playbackRate)
impl THTMLMediaElement with playback_rate(self : Self) -> Double {
  html_media_element_playback_rate_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.playbackRate](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/playbackRate)
impl THTMLMediaElement with set_playback_rate(self : Self, 
playback_rate : Double) -> Unit {
  html_media_element_set_playback_rate_ffi(TJsValue::to_js(self), TJsValue::to_js(playback_rate))
}

/// [HTMLMediaElement.preservesPitch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/preservesPitch)
impl THTMLMediaElement with preserves_pitch(self : Self) -> Bool {
  html_media_element_preserves_pitch_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.preservesPitch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/preservesPitch)
impl THTMLMediaElement with set_preserves_pitch(self : Self, 
preserves_pitch : Bool) -> Unit {
  html_media_element_set_preserves_pitch_ffi(TJsValue::to_js(self), TJsValue::to_js(preserves_pitch))
}

/// [HTMLMediaElement.played](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/played)
impl THTMLMediaElement with played(self : Self) -> TimeRanges {
  html_media_element_played_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.seekable](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/seekable)
impl THTMLMediaElement with seekable(self : Self) -> TimeRanges {
  html_media_element_seekable_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.ended](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/ended)
impl THTMLMediaElement with ended(self : Self) -> Bool {
  html_media_element_ended_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.autoplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/autoplay)
impl THTMLMediaElement with autoplay(self : Self) -> Bool {
  html_media_element_autoplay_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.autoplay](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/autoplay)
impl THTMLMediaElement with set_autoplay(self : Self, 
autoplay : Bool) -> Unit {
  html_media_element_set_autoplay_ffi(TJsValue::to_js(self), TJsValue::to_js(autoplay))
}

/// [HTMLMediaElement.loop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/loop)
impl THTMLMediaElement with loop_(self : Self) -> Bool {
  html_media_element_loop_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.loop](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/loop)
impl THTMLMediaElement with set_loop_(self : Self, 
loop_ : Bool) -> Unit {
  html_media_element_set_loop_ffi(TJsValue::to_js(self), TJsValue::to_js(loop_))
}

/// [HTMLMediaElement.play](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/play)
impl THTMLMediaElement with play(self : Self) -> @js_async.Promise[Unit] {
  html_media_element_play_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.pause](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/pause)
impl THTMLMediaElement with pause(self : Self) -> Unit {
  html_media_element_pause_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.controls](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/controls)
impl THTMLMediaElement with controls(self : Self) -> Bool {
  html_media_element_controls_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.controls](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/controls)
impl THTMLMediaElement with set_controls(self : Self, 
controls : Bool) -> Unit {
  html_media_element_set_controls_ffi(TJsValue::to_js(self), TJsValue::to_js(controls))
}

/// [HTMLMediaElement.volume](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/volume)
impl THTMLMediaElement with volume(self : Self) -> Double {
  html_media_element_volume_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.volume](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/volume)
impl THTMLMediaElement with set_volume(self : Self, 
volume : Double) -> Unit {
  html_media_element_set_volume_ffi(TJsValue::to_js(self), TJsValue::to_js(volume))
}

/// [HTMLMediaElement.muted](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/muted)
impl THTMLMediaElement with muted(self : Self) -> Bool {
  html_media_element_muted_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.muted](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/muted)
impl THTMLMediaElement with set_muted(self : Self, 
muted : Bool) -> Unit {
  html_media_element_set_muted_ffi(TJsValue::to_js(self), TJsValue::to_js(muted))
}

/// [HTMLMediaElement.defaultMuted](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/defaultMuted)
impl THTMLMediaElement with default_muted(self : Self) -> Bool {
  html_media_element_default_muted_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.defaultMuted](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/defaultMuted)
impl THTMLMediaElement with set_default_muted(self : Self, 
default_muted : Bool) -> Unit {
  html_media_element_set_default_muted_ffi(TJsValue::to_js(self), TJsValue::to_js(default_muted))
}

/// [HTMLMediaElement.audioTracks](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/audioTracks)
impl THTMLMediaElement with audio_tracks(self : Self) -> AudioTrackList {
  html_media_element_audio_tracks_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.videoTracks](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/videoTracks)
impl THTMLMediaElement with video_tracks(self : Self) -> VideoTrackList {
  html_media_element_video_tracks_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.textTracks](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/textTracks)
impl THTMLMediaElement with text_tracks(self : Self) -> TextTrackList {
  html_media_element_text_tracks_ffi(TJsValue::to_js(self))
}

/// [HTMLMediaElement.addTextTrack](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/addTextTrack)
impl THTMLMediaElement with add_text_track(self : Self, 
kind : TextTrackKind, 
label? : String = "", 
language? : String = "") -> TextTrack {
  html_media_element_add_text_track_ffi(TJsValue::to_js(self), TJsValue::to_js(kind), TJsValue::to_js(label), TJsValue::to_js(language))
}