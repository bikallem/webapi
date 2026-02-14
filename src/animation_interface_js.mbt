///|
extern "js" fn animation_new_ffi(
  effect : JsValue,
  timeline : JsValue,
) -> Animation = "(effect, timeline) => new Animation(effect, timeline)"

///|
extern "js" fn animation_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn animation_id_ffi(obj : JsValue) -> String {
  animation_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

///|
extern "js" fn animation_effect_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.effect"

///|
fn animation_effect_ffi(obj : JsValue) -> AnimationEffect {
  animation_effect_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_effect_ffi(
  obj : JsValue,
  effect : JsValue,
) -> Unit = "(obj, effect) => { obj.effect = effect; }"

///|
extern "js" fn animation_timeline_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.timeline"

///|
fn animation_timeline_ffi(obj : JsValue) -> AnimationTimeline {
  animation_timeline_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_timeline_ffi(
  obj : JsValue,
  timeline : JsValue,
) -> Unit = "(obj, timeline) => { obj.timeline = timeline; }"

///|
extern "js" fn animation_playback_rate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.playbackRate"

///|
fn animation_playback_rate_ffi(obj : JsValue) -> Double {
  animation_playback_rate_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_playback_rate_ffi(
  obj : JsValue,
  playback_rate : JsValue,
) -> Unit = "(obj, playbackRate) => { obj.playbackRate = playbackRate; }"

///|
extern "js" fn animation_play_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.playState"

///|
fn animation_play_state_ffi(obj : JsValue) -> AnimationPlayState {
  animation_play_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_replace_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.replaceState"

///|
fn animation_replace_state_ffi(obj : JsValue) -> AnimationReplaceState {
  animation_replace_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_pending_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pending"

///|
fn animation_pending_ffi(obj : JsValue) -> Bool {
  animation_pending_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_ready_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ready"

///|
fn animation_ready_ffi(obj : JsValue) -> JsPromise[Animation] {
  animation_ready_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_finished_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.finished"

///|
fn animation_finished_ffi(obj : JsValue) -> JsPromise[Animation] {
  animation_finished_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_onfinish_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onfinish"

///|
fn animation_onfinish_ffi(obj : JsValue) -> EventHandler {
  animation_onfinish_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_onfinish_ffi(
  obj : JsValue,
  onfinish : JsValue,
) -> Unit = "(obj, onfinish) => { obj.onfinish = onfinish; }"

///|
extern "js" fn animation_oncancel_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
fn animation_oncancel_ffi(obj : JsValue) -> EventHandler {
  animation_oncancel_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_oncancel_ffi(
  obj : JsValue,
  oncancel : JsValue,
) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

///|
extern "js" fn animation_onremove_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onremove"

///|
fn animation_onremove_ffi(obj : JsValue) -> EventHandler {
  animation_onremove_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn animation_set_onremove_ffi(
  obj : JsValue,
  onremove : JsValue,
) -> Unit = "(obj, onremove) => { obj.onremove = onremove; }"

///|
extern "js" fn animation_cancel_ffi(obj : JsValue) -> Unit = "(obj) => obj.cancel()"

///|
extern "js" fn animation_finish_ffi(obj : JsValue) -> Unit = "(obj) => obj.finish()"

///|
extern "js" fn animation_play_ffi(obj : JsValue) -> Unit = "(obj) => obj.play()"

///|
extern "js" fn animation_pause_ffi(obj : JsValue) -> Unit = "(obj) => obj.pause()"

///|
extern "js" fn animation_update_playback_rate_ffi(
  obj : JsValue,
  playback_rate : JsValue,
) -> Unit = "(obj, playback_rate) => obj.updatePlaybackRate(playback_rate)"

///|
extern "js" fn animation_reverse_ffi(obj : JsValue) -> Unit = "(obj) => obj.reverse()"

///|
extern "js" fn animation_persist_ffi(obj : JsValue) -> Unit = "(obj) => obj.persist()"

///|
extern "js" fn animation_commit_styles_ffi(obj : JsValue) -> Unit = "(obj) => obj.commitStyles()"
