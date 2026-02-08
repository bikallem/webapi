///|
extern "js" fn html_media_element_error_ffi(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
extern "js" fn html_media_element_src_ffi(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
extern "js" fn html_media_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
extern "js" fn html_media_element_src_object_ffi(obj : JsValue) -> JsValue = "(obj) => obj.srcObject"

///|
extern "js" fn html_media_element_set_src_object_ffi(
  obj : JsValue,
  src_object : JsValue,
) -> Unit = "(obj, srcObject) => { obj.srcObject = srcObject; }"

///|
extern "js" fn html_media_element_current_src_ffi(obj : JsValue) -> JsValue = "(obj) => obj.currentSrc"

///|
extern "js" fn html_media_element_cross_origin_ffi(obj : JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
extern "js" fn html_media_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
extern "js" fn html_media_element_network_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.networkState"

///|
extern "js" fn html_media_element_preload_ffi(obj : JsValue) -> JsValue = "(obj) => obj.preload"

///|
extern "js" fn html_media_element_set_preload_ffi(
  obj : JsValue,
  preload : JsValue,
) -> Unit = "(obj, preload) => { obj.preload = preload; }"

///|
extern "js" fn html_media_element_buffered_ffi(obj : JsValue) -> JsValue = "(obj) => obj.buffered"

///|
extern "js" fn html_media_element_load_ffi(obj : JsValue) -> Unit = "(obj) => obj.load()"

///|
extern "js" fn html_media_element_can_play_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.canPlayType(type_)"

///|
extern "js" fn html_media_element_ready_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
extern "js" fn html_media_element_seeking_ffi(obj : JsValue) -> JsValue = "(obj) => obj.seeking"

///|
extern "js" fn html_media_element_current_time_ffi(obj : JsValue) -> JsValue = "(obj) => obj.currentTime"

///|
extern "js" fn html_media_element_set_current_time_ffi(
  obj : JsValue,
  current_time : JsValue,
) -> Unit = "(obj, currentTime) => { obj.currentTime = currentTime; }"

///|
extern "js" fn html_media_element_fast_seek_ffi(
  obj : JsValue,
  time : JsValue,
) -> Unit = "(obj, time) => obj.fastSeek(time)"

///|
extern "js" fn html_media_element_duration_ffi(obj : JsValue) -> JsValue = "(obj) => obj.duration"

///|
extern "js" fn html_media_element_get_start_date_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getStartDate()"

///|
extern "js" fn html_media_element_paused_ffi(obj : JsValue) -> JsValue = "(obj) => obj.paused"

///|
extern "js" fn html_media_element_default_playback_rate_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.defaultPlaybackRate"

///|
extern "js" fn html_media_element_set_default_playback_rate_ffi(
  obj : JsValue,
  default_playback_rate : JsValue,
) -> Unit = "(obj, defaultPlaybackRate) => { obj.defaultPlaybackRate = defaultPlaybackRate; }"

///|
extern "js" fn html_media_element_playback_rate_ffi(obj : JsValue) -> JsValue = "(obj) => obj.playbackRate"

///|
extern "js" fn html_media_element_set_playback_rate_ffi(
  obj : JsValue,
  playback_rate : JsValue,
) -> Unit = "(obj, playbackRate) => { obj.playbackRate = playbackRate; }"

///|
extern "js" fn html_media_element_preserves_pitch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.preservesPitch"

///|
extern "js" fn html_media_element_set_preserves_pitch_ffi(
  obj : JsValue,
  preserves_pitch : JsValue,
) -> Unit = "(obj, preservesPitch) => { obj.preservesPitch = preservesPitch; }"

///|
extern "js" fn html_media_element_played_ffi(obj : JsValue) -> JsValue = "(obj) => obj.played"

///|
extern "js" fn html_media_element_seekable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.seekable"

///|
extern "js" fn html_media_element_ended_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ended"

///|
extern "js" fn html_media_element_autoplay_ffi(obj : JsValue) -> JsValue = "(obj) => obj.autoplay"

///|
extern "js" fn html_media_element_set_autoplay_ffi(
  obj : JsValue,
  autoplay : JsValue,
) -> Unit = "(obj, autoplay) => { obj.autoplay = autoplay; }"

///|
extern "js" fn html_media_element_loop_ffi(obj : JsValue) -> JsValue = "(obj) => obj.loop"

///|
extern "js" fn html_media_element_set_loop_ffi(
  obj : JsValue,
  loop_ : JsValue,
) -> Unit = "(obj, loop) => { obj.loop = loop; }"

///|
extern "js" fn html_media_element_play_ffi(obj : JsValue) -> JsValue = "(obj) => obj.play()"

///|
extern "js" fn html_media_element_pause_ffi(obj : JsValue) -> Unit = "(obj) => obj.pause()"

///|
extern "js" fn html_media_element_controls_ffi(obj : JsValue) -> JsValue = "(obj) => obj.controls"

///|
extern "js" fn html_media_element_set_controls_ffi(
  obj : JsValue,
  controls : JsValue,
) -> Unit = "(obj, controls) => { obj.controls = controls; }"

///|
extern "js" fn html_media_element_volume_ffi(obj : JsValue) -> JsValue = "(obj) => obj.volume"

///|
extern "js" fn html_media_element_set_volume_ffi(
  obj : JsValue,
  volume : JsValue,
) -> Unit = "(obj, volume) => { obj.volume = volume; }"

///|
extern "js" fn html_media_element_muted_ffi(obj : JsValue) -> JsValue = "(obj) => obj.muted"

///|
extern "js" fn html_media_element_set_muted_ffi(
  obj : JsValue,
  muted : JsValue,
) -> Unit = "(obj, muted) => { obj.muted = muted; }"

///|
extern "js" fn html_media_element_default_muted_ffi(obj : JsValue) -> JsValue = "(obj) => obj.defaultMuted"

///|
extern "js" fn html_media_element_set_default_muted_ffi(
  obj : JsValue,
  default_muted : JsValue,
) -> Unit = "(obj, defaultMuted) => { obj.defaultMuted = defaultMuted; }"

///|
extern "js" fn html_media_element_audio_tracks_ffi(obj : JsValue) -> JsValue = "(obj) => obj.audioTracks"

///|
extern "js" fn html_media_element_video_tracks_ffi(obj : JsValue) -> JsValue = "(obj) => obj.videoTracks"

///|
extern "js" fn html_media_element_text_tracks_ffi(obj : JsValue) -> JsValue = "(obj) => obj.textTracks"

///|
extern "js" fn html_media_element_add_text_track_ffi(
  obj : JsValue,
  kind : JsValue,
  label : JsValue,
  language : JsValue,
) -> JsValue = "(obj, kind, label, language) => obj.addTextTrack(kind, label, language)"
