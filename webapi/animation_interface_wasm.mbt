///|
fn animation_new_ffi(effect : JsValue, timeline : JsValue) -> Animation = "webapi_Animation" "new"

///|
fn animation_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_id"

///|
fn animation_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(animation_id_ffi_wasm(obj))
}

///|
fn animation_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_Animation" "set_id"

///|
fn animation_effect_ffi(obj : JsValue) -> AnimationEffect = "webapi_Animation" "get_effect"

///|
fn animation_set_effect_ffi(obj : JsValue, effect : JsValue) -> Unit = "webapi_Animation" "set_effect"

///|
fn animation_timeline_ffi(obj : JsValue) -> AnimationTimeline = "webapi_Animation" "get_timeline"

///|
fn animation_set_timeline_ffi(obj : JsValue, timeline : JsValue) -> Unit = "webapi_Animation" "set_timeline"

///|
fn animation_playback_rate_ffi(obj : JsValue) -> Double = "webapi_Animation" "get_playbackRate"

///|
fn animation_set_playback_rate_ffi(
  obj : JsValue,
  playback_rate : JsValue,
) -> Unit = "webapi_Animation" "set_playbackRate"

///|
fn animation_play_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_playState"

///|
fn animation_play_state_ffi(obj : JsValue) -> AnimationPlayState {
  AnimationPlayState::from_unchecked(
    jsvalue_to_string(animation_play_state_ffi_wasm(obj)),
  )
}

///|
fn animation_replace_state_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_replaceState"

///|
fn animation_replace_state_ffi(obj : JsValue) -> AnimationReplaceState {
  AnimationReplaceState::from_unchecked(
    jsvalue_to_string(animation_replace_state_ffi_wasm(obj)),
  )
}

///|
fn animation_pending_ffi(obj : JsValue) -> Bool = "webapi_Animation" "get_pending"

///|
fn animation_ready_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_ready"

///|
fn animation_ready_ffi(obj : JsValue) -> JsPromise[Animation] {
  animation_ready_ffi_wasm(obj).unsafe_cast()
}

///|
fn animation_finished_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_finished"

///|
fn animation_finished_ffi(obj : JsValue) -> JsPromise[Animation] {
  animation_finished_ffi_wasm(obj).unsafe_cast()
}

///|
fn animation_onfinish_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_onfinish"

///|
fn animation_onfinish_ffi(obj : JsValue) -> EventHandler {
  animation_onfinish_ffi_wasm(obj).unsafe_cast()
}

///|
fn animation_set_onfinish_ffi(obj : JsValue, onfinish : JsValue) -> Unit = "webapi_Animation" "set_onfinish"

///|
fn animation_oncancel_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_oncancel"

///|
fn animation_oncancel_ffi(obj : JsValue) -> EventHandler {
  animation_oncancel_ffi_wasm(obj).unsafe_cast()
}

///|
fn animation_set_oncancel_ffi(obj : JsValue, oncancel : JsValue) -> Unit = "webapi_Animation" "set_oncancel"

///|
fn animation_onremove_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Animation" "get_onremove"

///|
fn animation_onremove_ffi(obj : JsValue) -> EventHandler {
  animation_onremove_ffi_wasm(obj).unsafe_cast()
}

///|
fn animation_set_onremove_ffi(obj : JsValue, onremove : JsValue) -> Unit = "webapi_Animation" "set_onremove"

///|
fn animation_cancel_ffi(obj : JsValue) -> Unit = "webapi_Animation" "cancel"

///|
fn animation_finish_ffi(obj : JsValue) -> Unit = "webapi_Animation" "finish"

///|
fn animation_play_ffi(obj : JsValue) -> Unit = "webapi_Animation" "play"

///|
fn animation_pause_ffi(obj : JsValue) -> Unit = "webapi_Animation" "pause"

///|
fn animation_update_playback_rate_ffi(
  obj : JsValue,
  playback_rate : JsValue,
) -> Unit = "webapi_Animation" "updatePlaybackRate"

///|
fn animation_reverse_ffi(obj : JsValue) -> Unit = "webapi_Animation" "reverse"

///|
fn animation_persist_ffi(obj : JsValue) -> Unit = "webapi_Animation" "persist"

///|
fn animation_commit_styles_ffi(obj : JsValue) -> Unit = "webapi_Animation" "commitStyles"
