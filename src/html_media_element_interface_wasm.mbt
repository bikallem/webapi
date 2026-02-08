///|
fn html_media_element_error_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_error"

///|
fn html_media_element_src_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_src"

///|
fn html_media_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLMediaElement" "set_src"

///|
fn html_media_element_src_object_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_srcObject"

///|
fn html_media_element_set_src_object_ffi(
  obj : JsValue,
  src_object : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_srcObject"

///|
fn html_media_element_current_src_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_currentSrc"

///|
fn html_media_element_cross_origin_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_crossOrigin"

///|
fn html_media_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_crossOrigin"

///|
fn html_media_element_network_state_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_networkState"

///|
fn html_media_element_preload_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_preload"

///|
fn html_media_element_set_preload_ffi(obj : JsValue, preload : JsValue) -> Unit = "webapi_HTMLMediaElement" "set_preload"

///|
fn html_media_element_buffered_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_buffered"

///|
fn html_media_element_load_ffi(obj : JsValue) -> Unit = "webapi_HTMLMediaElement" "load"

///|
fn html_media_element_can_play_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "webapi_HTMLMediaElement" "canPlayType"

///|
fn html_media_element_ready_state_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_readyState"

///|
fn html_media_element_seeking_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_seeking"

///|
fn html_media_element_current_time_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_currentTime"

///|
fn html_media_element_set_current_time_ffi(
  obj : JsValue,
  current_time : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_currentTime"

///|
fn html_media_element_fast_seek_ffi(obj : JsValue, time : JsValue) -> Unit = "webapi_HTMLMediaElement" "fastSeek"

///|
fn html_media_element_duration_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_duration"

///|
fn html_media_element_get_start_date_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "getStartDate"

///|
fn html_media_element_paused_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_paused"

///|
fn html_media_element_default_playback_rate_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_defaultPlaybackRate"

///|
fn html_media_element_set_default_playback_rate_ffi(
  obj : JsValue,
  default_playback_rate : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_defaultPlaybackRate"

///|
fn html_media_element_playback_rate_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_playbackRate"

///|
fn html_media_element_set_playback_rate_ffi(
  obj : JsValue,
  playback_rate : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_playbackRate"

///|
fn html_media_element_preserves_pitch_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_preservesPitch"

///|
fn html_media_element_set_preserves_pitch_ffi(
  obj : JsValue,
  preserves_pitch : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_preservesPitch"

///|
fn html_media_element_played_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_played"

///|
fn html_media_element_seekable_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_seekable"

///|
fn html_media_element_ended_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_ended"

///|
fn html_media_element_autoplay_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_autoplay"

///|
fn html_media_element_set_autoplay_ffi(
  obj : JsValue,
  autoplay : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_autoplay"

///|
fn html_media_element_loop_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_loop"

///|
fn html_media_element_set_loop_ffi(obj : JsValue, loop_ : JsValue) -> Unit = "webapi_HTMLMediaElement" "set_loop"

///|
fn html_media_element_play_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "play"

///|
fn html_media_element_pause_ffi(obj : JsValue) -> Unit = "webapi_HTMLMediaElement" "pause"

///|
fn html_media_element_controls_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_controls"

///|
fn html_media_element_set_controls_ffi(
  obj : JsValue,
  controls : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_controls"

///|
fn html_media_element_volume_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_volume"

///|
fn html_media_element_set_volume_ffi(obj : JsValue, volume : JsValue) -> Unit = "webapi_HTMLMediaElement" "set_volume"

///|
fn html_media_element_muted_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_muted"

///|
fn html_media_element_set_muted_ffi(obj : JsValue, muted : JsValue) -> Unit = "webapi_HTMLMediaElement" "set_muted"

///|
fn html_media_element_default_muted_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_defaultMuted"

///|
fn html_media_element_set_default_muted_ffi(
  obj : JsValue,
  default_muted : JsValue,
) -> Unit = "webapi_HTMLMediaElement" "set_defaultMuted"

///|
fn html_media_element_audio_tracks_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_audioTracks"

///|
fn html_media_element_video_tracks_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_videoTracks"

///|
fn html_media_element_text_tracks_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMediaElement" "get_textTracks"

///|
fn html_media_element_add_text_track_ffi(
  obj : JsValue,
  kind : JsValue,
  label : JsValue,
  language : JsValue,
) -> JsValue = "webapi_HTMLMediaElement" "addTextTrack"
