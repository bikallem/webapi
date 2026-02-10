extern "js" fn html_media_element_error_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.error"

///|
fn html_media_element_error_ffi(obj: JsValue) -> MediaError {
  html_media_element_error_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.src"

///|
fn html_media_element_src_ffi(obj: JsValue) -> String {
  html_media_element_src_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_src_ffi(obj: JsValue, src: JsValue) -> Unit = "(obj, src) => { obj.src = src; }"

extern "js" fn html_media_element_src_object_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.srcObject"

///|
fn html_media_element_src_object_ffi(obj: JsValue) -> MediaProvider {
  html_media_element_src_object_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_src_object_ffi(obj: JsValue, src_object: JsValue) -> Unit = "(obj, srcObject) => { obj.srcObject = srcObject; }"

extern "js" fn html_media_element_current_src_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentSrc"

///|
fn html_media_element_current_src_ffi(obj: JsValue) -> String {
  html_media_element_current_src_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_cross_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
fn html_media_element_cross_origin_ffi(obj: JsValue) -> String {
  html_media_element_cross_origin_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

extern "js" fn html_media_element_network_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.networkState"

///|
fn html_media_element_network_state_ffi(obj: JsValue) -> UInt {
  html_media_element_network_state_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_preload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preload"

///|
fn html_media_element_preload_ffi(obj: JsValue) -> String {
  html_media_element_preload_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_preload_ffi(obj: JsValue, preload: JsValue) -> Unit = "(obj, preload) => { obj.preload = preload; }"

extern "js" fn html_media_element_buffered_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.buffered"

///|
fn html_media_element_buffered_ffi(obj: JsValue) -> TimeRanges {
  html_media_element_buffered_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_load_ffi(obj: JsValue) -> Unit = "(obj) => obj.load()"

extern "js" fn html_media_element_can_play_type_ffi_js(obj: JsValue, type_: JsValue) -> JsValue = "(obj, type_) => obj.canPlayType(type_)"

///|
fn html_media_element_can_play_type_ffi(obj: JsValue, type_: JsValue) -> CanPlayTypeResult {
  html_media_element_can_play_type_ffi_js(obj, type_).unsafe_cast()
}

extern "js" fn html_media_element_ready_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn html_media_element_ready_state_ffi(obj: JsValue) -> UInt {
  html_media_element_ready_state_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_seeking_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.seeking"

///|
fn html_media_element_seeking_ffi(obj: JsValue) -> Bool {
  html_media_element_seeking_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_current_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.currentTime"

///|
fn html_media_element_current_time_ffi(obj: JsValue) -> Double {
  html_media_element_current_time_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_current_time_ffi(obj: JsValue, current_time: JsValue) -> Unit = "(obj, currentTime) => { obj.currentTime = currentTime; }"

extern "js" fn html_media_element_fast_seek_ffi(obj: JsValue, time: JsValue) -> Unit = "(obj, time) => obj.fastSeek(time)"

extern "js" fn html_media_element_duration_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.duration"

///|
fn html_media_element_duration_ffi(obj: JsValue) -> Double {
  html_media_element_duration_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_get_start_date_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getStartDate()"

///|
fn html_media_element_get_start_date_ffi(obj: JsValue) -> JsValue {
  html_media_element_get_start_date_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_paused_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.paused"

///|
fn html_media_element_paused_ffi(obj: JsValue) -> Bool {
  html_media_element_paused_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_default_playback_rate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultPlaybackRate"

///|
fn html_media_element_default_playback_rate_ffi(obj: JsValue) -> Double {
  html_media_element_default_playback_rate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_default_playback_rate_ffi(obj: JsValue, default_playback_rate: JsValue) -> Unit = "(obj, defaultPlaybackRate) => { obj.defaultPlaybackRate = defaultPlaybackRate; }"

extern "js" fn html_media_element_playback_rate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.playbackRate"

///|
fn html_media_element_playback_rate_ffi(obj: JsValue) -> Double {
  html_media_element_playback_rate_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_playback_rate_ffi(obj: JsValue, playback_rate: JsValue) -> Unit = "(obj, playbackRate) => { obj.playbackRate = playbackRate; }"

extern "js" fn html_media_element_preserves_pitch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preservesPitch"

///|
fn html_media_element_preserves_pitch_ffi(obj: JsValue) -> Bool {
  html_media_element_preserves_pitch_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_preserves_pitch_ffi(obj: JsValue, preserves_pitch: JsValue) -> Unit = "(obj, preservesPitch) => { obj.preservesPitch = preservesPitch; }"

extern "js" fn html_media_element_played_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.played"

///|
fn html_media_element_played_ffi(obj: JsValue) -> TimeRanges {
  html_media_element_played_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_seekable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.seekable"

///|
fn html_media_element_seekable_ffi(obj: JsValue) -> TimeRanges {
  html_media_element_seekable_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_ended_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ended"

///|
fn html_media_element_ended_ffi(obj: JsValue) -> Bool {
  html_media_element_ended_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_autoplay_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.autoplay"

///|
fn html_media_element_autoplay_ffi(obj: JsValue) -> Bool {
  html_media_element_autoplay_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_autoplay_ffi(obj: JsValue, autoplay: JsValue) -> Unit = "(obj, autoplay) => { obj.autoplay = autoplay; }"

extern "js" fn html_media_element_loop_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.loop"

///|
fn html_media_element_loop_ffi(obj: JsValue) -> Bool {
  html_media_element_loop_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_loop_ffi(obj: JsValue, loop_: JsValue) -> Unit = "(obj, loop) => { obj.loop = loop; }"

extern "js" fn html_media_element_play_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.play()"

///|
fn html_media_element_play_ffi(obj: JsValue) -> @js_async.Promise[Unit] {
  html_media_element_play_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_pause_ffi(obj: JsValue) -> Unit = "(obj) => obj.pause()"

extern "js" fn html_media_element_controls_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.controls"

///|
fn html_media_element_controls_ffi(obj: JsValue) -> Bool {
  html_media_element_controls_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_controls_ffi(obj: JsValue, controls: JsValue) -> Unit = "(obj, controls) => { obj.controls = controls; }"

extern "js" fn html_media_element_volume_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.volume"

///|
fn html_media_element_volume_ffi(obj: JsValue) -> Double {
  html_media_element_volume_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_volume_ffi(obj: JsValue, volume: JsValue) -> Unit = "(obj, volume) => { obj.volume = volume; }"

extern "js" fn html_media_element_muted_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.muted"

///|
fn html_media_element_muted_ffi(obj: JsValue) -> Bool {
  html_media_element_muted_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_muted_ffi(obj: JsValue, muted: JsValue) -> Unit = "(obj, muted) => { obj.muted = muted; }"

extern "js" fn html_media_element_default_muted_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.defaultMuted"

///|
fn html_media_element_default_muted_ffi(obj: JsValue) -> Bool {
  html_media_element_default_muted_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_set_default_muted_ffi(obj: JsValue, default_muted: JsValue) -> Unit = "(obj, defaultMuted) => { obj.defaultMuted = defaultMuted; }"

extern "js" fn html_media_element_audio_tracks_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.audioTracks"

///|
fn html_media_element_audio_tracks_ffi(obj: JsValue) -> AudioTrackList {
  html_media_element_audio_tracks_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_video_tracks_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.videoTracks"

///|
fn html_media_element_video_tracks_ffi(obj: JsValue) -> VideoTrackList {
  html_media_element_video_tracks_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_text_tracks_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.textTracks"

///|
fn html_media_element_text_tracks_ffi(obj: JsValue) -> TextTrackList {
  html_media_element_text_tracks_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_media_element_add_text_track_ffi_js(obj: JsValue, kind: JsValue, label: JsValue, language: JsValue) -> JsValue = "(obj, kind, label, language) => obj.addTextTrack(kind, label, language)"

///|
fn html_media_element_add_text_track_ffi(obj: JsValue, kind: JsValue, label: JsValue, language: JsValue) -> TextTrack {
  html_media_element_add_text_track_ffi_js(obj, kind, label, language).unsafe_cast()
}