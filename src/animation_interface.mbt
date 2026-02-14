// Do not edit. This file is generated.
// MoonBit type: Animation
// Specifications: web-animations.idl

///|
/// [Animation](https://developer.mozilla.org/en-US/docs/Web/API/Animation)
#external
pub type Animation

///|
pub impl TJsValue for Animation with to_js(self : Animation) -> JsValue = "%identity"

///|
pub impl FromJsAny for Animation with from_js_any(value : JsAny) -> Animation = "%identity"

///|
pub fn[T : TAnimation] Animation::into(self : Animation) -> T = "%identity"

///|
pub impl TAnimation for Animation

///|
pub impl TEventTarget for Animation

///|
pub fn Animation::new(
  effect? : &TAnimationEffect,
  timeline? : &TAnimationTimeline,
) -> Animation {
  animation_new_ffi(opt_to_js(effect), opt_to_js(timeline))
}

///|
/// [Animation](https://developer.mozilla.org/en-US/docs/Web/API/Animation) interface.
pub trait TAnimation: TEventTarget {
  id(self : Self) -> String = _
  set_id(self : Self, id : String) -> Unit = _
  effect(self : Self) -> AnimationEffect = _
  set_effect(self : Self, effect : &TAnimationEffect) -> Unit = _
  timeline(self : Self) -> AnimationTimeline = _
  set_timeline(self : Self, timeline : &TAnimationTimeline) -> Unit = _
  playback_rate(self : Self) -> Double = _
  set_playback_rate(self : Self, playback_rate : Double) -> Unit = _
  play_state(self : Self) -> AnimationPlayState = _
  replace_state(self : Self) -> AnimationReplaceState = _
  pending(self : Self) -> Bool = _
  ready(self : Self) -> JsPromise[Animation] = _
  finished(self : Self) -> JsPromise[Animation] = _
  onfinish(self : Self) -> EventHandler = _
  set_onfinish(self : Self, onfinish : EventHandler) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : EventHandler) -> Unit = _
  onremove(self : Self) -> EventHandler = _
  set_onremove(self : Self, onremove : EventHandler) -> Unit = _
  cancel(self : Self) -> Unit = _
  finish(self : Self) -> Unit = _
  play(self : Self) -> Unit = _
  pause(self : Self) -> Unit = _
  update_playback_rate(self : Self, playback_rate : Double) -> Unit = _
  reverse(self : Self) -> Unit = _
  persist(self : Self) -> Unit = _
  commit_styles(self : Self) -> Unit = _
}

///|
/// [Animation.id](https://developer.mozilla.org/en-US/docs/Web/API/Animation/id)
impl TAnimation with id(self : Self) -> String {
  animation_id_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.id](https://developer.mozilla.org/en-US/docs/Web/API/Animation/id)
impl TAnimation with set_id(self : Self, id : String) -> Unit {
  animation_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
/// [Animation.effect](https://developer.mozilla.org/en-US/docs/Web/API/Animation/effect)
impl TAnimation with effect(self : Self) -> AnimationEffect {
  animation_effect_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.effect](https://developer.mozilla.org/en-US/docs/Web/API/Animation/effect)
impl TAnimation with set_effect(self : Self, effect : &TAnimationEffect) -> Unit {
  animation_set_effect_ffi(TJsValue::to_js(self), TJsValue::to_js(effect))
}

///|
/// [Animation.timeline](https://developer.mozilla.org/en-US/docs/Web/API/Animation/timeline)
impl TAnimation with timeline(self : Self) -> AnimationTimeline {
  animation_timeline_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.timeline](https://developer.mozilla.org/en-US/docs/Web/API/Animation/timeline)
impl TAnimation with set_timeline(self : Self, timeline : &TAnimationTimeline) -> Unit {
  animation_set_timeline_ffi(TJsValue::to_js(self), TJsValue::to_js(timeline))
}

///|
/// [Animation.playbackRate](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playbackRate)
impl TAnimation with playback_rate(self : Self) -> Double {
  animation_playback_rate_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.playbackRate](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playbackRate)
impl TAnimation with set_playback_rate(self : Self, playback_rate : Double) -> Unit {
  animation_set_playback_rate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(playback_rate),
  )
}

///|
/// [Animation.playState](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playState)
impl TAnimation with play_state(self : Self) -> AnimationPlayState {
  animation_play_state_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.replaceState](https://developer.mozilla.org/en-US/docs/Web/API/Animation/replaceState)
impl TAnimation with replace_state(self : Self) -> AnimationReplaceState {
  animation_replace_state_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.pending](https://developer.mozilla.org/en-US/docs/Web/API/Animation/pending)
impl TAnimation with pending(self : Self) -> Bool {
  animation_pending_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.ready](https://developer.mozilla.org/en-US/docs/Web/API/Animation/ready)
impl TAnimation with ready(self : Self) -> JsPromise[Animation] {
  animation_ready_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.finished](https://developer.mozilla.org/en-US/docs/Web/API/Animation/finished)
impl TAnimation with finished(self : Self) -> JsPromise[Animation] {
  animation_finished_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.onfinish](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onfinish)
impl TAnimation with onfinish(self : Self) -> EventHandler {
  animation_onfinish_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.onfinish](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onfinish)
impl TAnimation with set_onfinish(self : Self, onfinish : EventHandler) -> Unit {
  animation_set_onfinish_ffi(TJsValue::to_js(self), TJsValue::to_js(onfinish))
}

///|
/// [Animation.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Animation/oncancel)
impl TAnimation with oncancel(self : Self) -> EventHandler {
  animation_oncancel_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Animation/oncancel)
impl TAnimation with set_oncancel(self : Self, oncancel : EventHandler) -> Unit {
  animation_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(oncancel))
}

///|
/// [Animation.onremove](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onremove)
impl TAnimation with onremove(self : Self) -> EventHandler {
  animation_onremove_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.onremove](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onremove)
impl TAnimation with set_onremove(self : Self, onremove : EventHandler) -> Unit {
  animation_set_onremove_ffi(TJsValue::to_js(self), TJsValue::to_js(onremove))
}

///|
/// [Animation.cancel](https://developer.mozilla.org/en-US/docs/Web/API/Animation/cancel)
impl TAnimation with cancel(self : Self) -> Unit {
  animation_cancel_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.finish](https://developer.mozilla.org/en-US/docs/Web/API/Animation/finish)
impl TAnimation with finish(self : Self) -> Unit {
  animation_finish_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.play](https://developer.mozilla.org/en-US/docs/Web/API/Animation/play)
impl TAnimation with play(self : Self) -> Unit {
  animation_play_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.pause](https://developer.mozilla.org/en-US/docs/Web/API/Animation/pause)
impl TAnimation with pause(self : Self) -> Unit {
  animation_pause_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.updatePlaybackRate](https://developer.mozilla.org/en-US/docs/Web/API/Animation/updatePlaybackRate)
impl TAnimation with update_playback_rate(self : Self, playback_rate : Double) -> Unit {
  animation_update_playback_rate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(playback_rate),
  )
}

///|
/// [Animation.reverse](https://developer.mozilla.org/en-US/docs/Web/API/Animation/reverse)
impl TAnimation with reverse(self : Self) -> Unit {
  animation_reverse_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.persist](https://developer.mozilla.org/en-US/docs/Web/API/Animation/persist)
impl TAnimation with persist(self : Self) -> Unit {
  animation_persist_ffi(TJsValue::to_js(self))
}

///|
/// [Animation.commitStyles](https://developer.mozilla.org/en-US/docs/Web/API/Animation/commitStyles)
impl TAnimation with commit_styles(self : Self) -> Unit {
  animation_commit_styles_ffi(TJsValue::to_js(self))
}
