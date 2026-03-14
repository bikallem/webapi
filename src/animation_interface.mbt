// Do not edit. This file is generated.
// MoonBit type: Animation
// Specifications: web-animations.idl

/// [Animation](https://developer.mozilla.org/en-US/docs/Web/API/Animation)
#external
pub type Animation

pub impl TJsValue for Animation with to_js(self: Animation) -> JsValue = "%identity"

pub impl FromJsAny for Animation with from_js_any(value : JsAny) -> Animation = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TAnimation] Animation::into(self : Animation) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TAnimation] Animation::unsafe_into(self : Animation) -> T = "%identity"

pub impl HasConstructor for Animation with constructor_name() { "Animation" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TAnimation + HasConstructor] Animation::try_into(self : Animation) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TAnimation for Animation

pub impl TEventTarget for Animation

pub fn Animation::new(effect? : &TAnimationEffect, 
timeline? : &TAnimationTimeline) -> Animation {
  animation_new_ffi(opt_to_js(effect), opt_to_js(timeline))
}

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
  set_onfinish(self : Self, onfinish : (Event) -> JsValue) -> Unit = _
  oncancel(self : Self) -> EventHandler = _
  set_oncancel(self : Self, oncancel : (Event) -> JsValue) -> Unit = _
  onremove(self : Self) -> EventHandler = _
  set_onremove(self : Self, onremove : (Event) -> JsValue) -> Unit = _
  cancel(self : Self) -> Unit = _
  finish(self : Self) -> Unit = _
  play(self : Self) -> Unit = _
  pause(self : Self) -> Unit = _
  update_playback_rate(self : Self, playback_rate : Double) -> Unit = _
  reverse(self : Self) -> Unit = _
  persist(self : Self) -> Unit = _
  commit_styles(self : Self) -> Unit = _
}

/// [Animation.id](https://developer.mozilla.org/en-US/docs/Web/API/Animation/id)
impl TAnimation with id(self : Self) -> String {
  animation_id_ffi(TJsValue::to_js(self))
}

/// [Animation.id](https://developer.mozilla.org/en-US/docs/Web/API/Animation/id)
impl TAnimation with set_id(self : Self, 
id : String) -> Unit {
  animation_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

/// [Animation.effect](https://developer.mozilla.org/en-US/docs/Web/API/Animation/effect)
impl TAnimation with effect(self : Self) -> AnimationEffect {
  animation_effect_ffi(TJsValue::to_js(self))
}

/// [Animation.effect](https://developer.mozilla.org/en-US/docs/Web/API/Animation/effect)
impl TAnimation with set_effect(self : Self, 
effect : &TAnimationEffect) -> Unit {
  animation_set_effect_ffi(TJsValue::to_js(self), TJsValue::to_js(effect))
}

/// [Animation.timeline](https://developer.mozilla.org/en-US/docs/Web/API/Animation/timeline)
impl TAnimation with timeline(self : Self) -> AnimationTimeline {
  animation_timeline_ffi(TJsValue::to_js(self))
}

/// [Animation.timeline](https://developer.mozilla.org/en-US/docs/Web/API/Animation/timeline)
impl TAnimation with set_timeline(self : Self, 
timeline : &TAnimationTimeline) -> Unit {
  animation_set_timeline_ffi(TJsValue::to_js(self), TJsValue::to_js(timeline))
}

/// [Animation.playbackRate](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playbackRate)
impl TAnimation with playback_rate(self : Self) -> Double {
  animation_playback_rate_ffi(TJsValue::to_js(self))
}

/// [Animation.playbackRate](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playbackRate)
impl TAnimation with set_playback_rate(self : Self, 
playback_rate : Double) -> Unit {
  animation_set_playback_rate_ffi(TJsValue::to_js(self), TJsValue::to_js(playback_rate))
}

/// [Animation.playState](https://developer.mozilla.org/en-US/docs/Web/API/Animation/playState)
impl TAnimation with play_state(self : Self) -> AnimationPlayState {
  animation_play_state_ffi(TJsValue::to_js(self))
}

/// [Animation.replaceState](https://developer.mozilla.org/en-US/docs/Web/API/Animation/replaceState)
impl TAnimation with replace_state(self : Self) -> AnimationReplaceState {
  animation_replace_state_ffi(TJsValue::to_js(self))
}

/// [Animation.pending](https://developer.mozilla.org/en-US/docs/Web/API/Animation/pending)
impl TAnimation with pending(self : Self) -> Bool {
  animation_pending_ffi(TJsValue::to_js(self))
}

/// [Animation.ready](https://developer.mozilla.org/en-US/docs/Web/API/Animation/ready)
impl TAnimation with ready(self : Self) -> JsPromise[Animation] {
  animation_ready_ffi(TJsValue::to_js(self))
}

/// [Animation.finished](https://developer.mozilla.org/en-US/docs/Web/API/Animation/finished)
impl TAnimation with finished(self : Self) -> JsPromise[Animation] {
  animation_finished_ffi(TJsValue::to_js(self))
}

/// [Animation.onfinish](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onfinish)
impl TAnimation with onfinish(self : Self) -> EventHandler {
  animation_onfinish_ffi(TJsValue::to_js(self))
}

/// [Animation.onfinish](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onfinish)
impl TAnimation with set_onfinish(self : Self, 
onfinish : (Event) -> JsValue) -> Unit {
  animation_set_onfinish_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onfinish)))
}

/// [Animation.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Animation/oncancel)
impl TAnimation with oncancel(self : Self) -> EventHandler {
  animation_oncancel_ffi(TJsValue::to_js(self))
}

/// [Animation.oncancel](https://developer.mozilla.org/en-US/docs/Web/API/Animation/oncancel)
impl TAnimation with set_oncancel(self : Self, 
oncancel : (Event) -> JsValue) -> Unit {
  animation_set_oncancel_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(oncancel)))
}

/// [Animation.onremove](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onremove)
impl TAnimation with onremove(self : Self) -> EventHandler {
  animation_onremove_ffi(TJsValue::to_js(self))
}

/// [Animation.onremove](https://developer.mozilla.org/en-US/docs/Web/API/Animation/onremove)
impl TAnimation with set_onremove(self : Self, 
onremove : (Event) -> JsValue) -> Unit {
  animation_set_onremove_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onremove)))
}

/// [Animation.cancel](https://developer.mozilla.org/en-US/docs/Web/API/Animation/cancel)
impl TAnimation with cancel(self : Self) -> Unit {
  animation_cancel_ffi(TJsValue::to_js(self))
}

/// [Animation.finish](https://developer.mozilla.org/en-US/docs/Web/API/Animation/finish)
impl TAnimation with finish(self : Self) -> Unit {
  animation_finish_ffi(TJsValue::to_js(self))
}

/// [Animation.play](https://developer.mozilla.org/en-US/docs/Web/API/Animation/play)
impl TAnimation with play(self : Self) -> Unit {
  animation_play_ffi(TJsValue::to_js(self))
}

/// [Animation.pause](https://developer.mozilla.org/en-US/docs/Web/API/Animation/pause)
impl TAnimation with pause(self : Self) -> Unit {
  animation_pause_ffi(TJsValue::to_js(self))
}

/// [Animation.updatePlaybackRate](https://developer.mozilla.org/en-US/docs/Web/API/Animation/updatePlaybackRate)
impl TAnimation with update_playback_rate(self : Self, 
playback_rate : Double) -> Unit {
  animation_update_playback_rate_ffi(TJsValue::to_js(self), TJsValue::to_js(playback_rate))
}

/// [Animation.reverse](https://developer.mozilla.org/en-US/docs/Web/API/Animation/reverse)
impl TAnimation with reverse(self : Self) -> Unit {
  animation_reverse_ffi(TJsValue::to_js(self))
}

/// [Animation.persist](https://developer.mozilla.org/en-US/docs/Web/API/Animation/persist)
impl TAnimation with persist(self : Self) -> Unit {
  animation_persist_ffi(TJsValue::to_js(self))
}

/// [Animation.commitStyles](https://developer.mozilla.org/en-US/docs/Web/API/Animation/commitStyles)
impl TAnimation with commit_styles(self : Self) -> Unit {
  animation_commit_styles_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn animation_new_ffi(effect: JsValue, timeline: JsValue) -> Animation = "(effect, timeline) => new Animation(effect, timeline)"

#cfg(target="js")
extern "js" fn animation_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn animation_id_ffi(obj: JsValue) -> String {
  animation_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_id_ffi(obj: JsValue, id: JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

#cfg(target="js")
extern "js" fn animation_effect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.effect"

///|
#cfg(target="js")
fn animation_effect_ffi(obj: JsValue) -> AnimationEffect {
  animation_effect_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_effect_ffi(obj: JsValue, effect: JsValue) -> Unit = "(obj, effect) => { obj.effect = effect; }"

#cfg(target="js")
extern "js" fn animation_timeline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.timeline"

///|
#cfg(target="js")
fn animation_timeline_ffi(obj: JsValue) -> AnimationTimeline {
  animation_timeline_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_timeline_ffi(obj: JsValue, timeline: JsValue) -> Unit = "(obj, timeline) => { obj.timeline = timeline; }"

#cfg(target="js")
extern "js" fn animation_playback_rate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.playbackRate"

///|
#cfg(target="js")
fn animation_playback_rate_ffi(obj: JsValue) -> Double {
  animation_playback_rate_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_playback_rate_ffi(obj: JsValue, playback_rate: JsValue) -> Unit = "(obj, playbackRate) => { obj.playbackRate = playbackRate; }"

#cfg(target="js")
extern "js" fn animation_play_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.playState"

///|
#cfg(target="js")
fn animation_play_state_ffi(obj: JsValue) -> AnimationPlayState {
  AnimationPlayState::from_unchecked(animation_play_state_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn animation_replace_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.replaceState"

///|
#cfg(target="js")
fn animation_replace_state_ffi(obj: JsValue) -> AnimationReplaceState {
  AnimationReplaceState::from_unchecked(animation_replace_state_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn animation_pending_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.pending"

///|
#cfg(target="js")
fn animation_pending_ffi(obj: JsValue) -> Bool {
  animation_pending_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_ready_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ready"

///|
#cfg(target="js")
fn animation_ready_ffi(obj: JsValue) -> JsPromise[Animation] {
  animation_ready_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_finished_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.finished"

///|
#cfg(target="js")
fn animation_finished_ffi(obj: JsValue) -> JsPromise[Animation] {
  animation_finished_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_onfinish_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onfinish"

///|
#cfg(target="js")
fn animation_onfinish_ffi(obj: JsValue) -> EventHandler {
  animation_onfinish_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_onfinish_ffi(obj: JsValue, onfinish: JsValue) -> Unit = "(obj, onfinish) => { obj.onfinish = onfinish; }"

#cfg(target="js")
extern "js" fn animation_oncancel_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oncancel"

///|
#cfg(target="js")
fn animation_oncancel_ffi(obj: JsValue) -> EventHandler {
  animation_oncancel_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_oncancel_ffi(obj: JsValue, oncancel: JsValue) -> Unit = "(obj, oncancel) => { obj.oncancel = oncancel; }"

#cfg(target="js")
extern "js" fn animation_onremove_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onremove"

///|
#cfg(target="js")
fn animation_onremove_ffi(obj: JsValue) -> EventHandler {
  animation_onremove_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn animation_set_onremove_ffi(obj: JsValue, onremove: JsValue) -> Unit = "(obj, onremove) => { obj.onremove = onremove; }"

#cfg(target="js")
extern "js" fn animation_cancel_ffi(obj: JsValue) -> Unit = "(obj) => obj.cancel()"

#cfg(target="js")
extern "js" fn animation_finish_ffi(obj: JsValue) -> Unit = "(obj) => obj.finish()"

#cfg(target="js")
extern "js" fn animation_play_ffi(obj: JsValue) -> Unit = "(obj) => obj.play()"

#cfg(target="js")
extern "js" fn animation_pause_ffi(obj: JsValue) -> Unit = "(obj) => obj.pause()"

#cfg(target="js")
extern "js" fn animation_update_playback_rate_ffi(obj: JsValue, playback_rate: JsValue) -> Unit = "(obj, playback_rate) => obj.updatePlaybackRate(playback_rate)"

#cfg(target="js")
extern "js" fn animation_reverse_ffi(obj: JsValue) -> Unit = "(obj) => obj.reverse()"

#cfg(target="js")
extern "js" fn animation_persist_ffi(obj: JsValue) -> Unit = "(obj) => obj.persist()"

#cfg(target="js")
extern "js" fn animation_commit_styles_ffi(obj: JsValue) -> Unit = "(obj) => obj.commitStyles()"

#cfg(target="wasm-gc")
fn animation_new_ffi(effect: JsValue, timeline: JsValue) -> Animation = "webapi_Animation" "new"

#cfg(target="wasm-gc")
fn animation_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_id"

///|
#cfg(target="wasm-gc")
fn animation_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(animation_id_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn animation_set_id_ffi(obj: JsValue, id: JsValue) -> Unit = "webapi_Animation" "set_id"

#cfg(target="wasm-gc")
fn animation_effect_ffi(obj: JsValue) -> AnimationEffect = "webapi_Animation" "get_effect"

#cfg(target="wasm-gc")
fn animation_set_effect_ffi(obj: JsValue, effect: JsValue) -> Unit = "webapi_Animation" "set_effect"

#cfg(target="wasm-gc")
fn animation_timeline_ffi(obj: JsValue) -> AnimationTimeline = "webapi_Animation" "get_timeline"

#cfg(target="wasm-gc")
fn animation_set_timeline_ffi(obj: JsValue, timeline: JsValue) -> Unit = "webapi_Animation" "set_timeline"

#cfg(target="wasm-gc")
fn animation_playback_rate_ffi(obj: JsValue) -> Double = "webapi_Animation" "get_playbackRate"

#cfg(target="wasm-gc")
fn animation_set_playback_rate_ffi(obj: JsValue, playback_rate: JsValue) -> Unit = "webapi_Animation" "set_playbackRate"

#cfg(target="wasm-gc")
fn animation_play_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_playState"

///|
#cfg(target="wasm-gc")
fn animation_play_state_ffi(obj: JsValue) -> AnimationPlayState {
  AnimationPlayState::from_unchecked(jsvalue_to_string(animation_play_state_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn animation_replace_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_replaceState"

///|
#cfg(target="wasm-gc")
fn animation_replace_state_ffi(obj: JsValue) -> AnimationReplaceState {
  AnimationReplaceState::from_unchecked(jsvalue_to_string(animation_replace_state_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn animation_pending_ffi(obj: JsValue) -> Bool = "webapi_Animation" "get_pending"

#cfg(target="wasm-gc")
fn animation_ready_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_ready"

///|
#cfg(target="wasm-gc")
fn animation_ready_ffi(obj: JsValue) -> JsPromise[Animation] {
  animation_ready_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn animation_finished_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_finished"

///|
#cfg(target="wasm-gc")
fn animation_finished_ffi(obj: JsValue) -> JsPromise[Animation] {
  animation_finished_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn animation_onfinish_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_onfinish"

///|
#cfg(target="wasm-gc")
fn animation_onfinish_ffi(obj: JsValue) -> EventHandler {
  animation_onfinish_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn animation_set_onfinish_ffi(obj: JsValue, onfinish: JsValue) -> Unit = "webapi_Animation" "set_onfinish"

#cfg(target="wasm-gc")
fn animation_oncancel_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_oncancel"

///|
#cfg(target="wasm-gc")
fn animation_oncancel_ffi(obj: JsValue) -> EventHandler {
  animation_oncancel_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn animation_set_oncancel_ffi(obj: JsValue, oncancel: JsValue) -> Unit = "webapi_Animation" "set_oncancel"

#cfg(target="wasm-gc")
fn animation_onremove_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Animation" "get_onremove"

///|
#cfg(target="wasm-gc")
fn animation_onremove_ffi(obj: JsValue) -> EventHandler {
  animation_onremove_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn animation_set_onremove_ffi(obj: JsValue, onremove: JsValue) -> Unit = "webapi_Animation" "set_onremove"

#cfg(target="wasm-gc")
fn animation_cancel_ffi(obj: JsValue) -> Unit = "webapi_Animation" "cancel"

#cfg(target="wasm-gc")
fn animation_finish_ffi(obj: JsValue) -> Unit = "webapi_Animation" "finish"

#cfg(target="wasm-gc")
fn animation_play_ffi(obj: JsValue) -> Unit = "webapi_Animation" "play"

#cfg(target="wasm-gc")
fn animation_pause_ffi(obj: JsValue) -> Unit = "webapi_Animation" "pause"

#cfg(target="wasm-gc")
fn animation_update_playback_rate_ffi(obj: JsValue, playback_rate: JsValue) -> Unit = "webapi_Animation" "updatePlaybackRate"

#cfg(target="wasm-gc")
fn animation_reverse_ffi(obj: JsValue) -> Unit = "webapi_Animation" "reverse"

#cfg(target="wasm-gc")
fn animation_persist_ffi(obj: JsValue) -> Unit = "webapi_Animation" "persist"

#cfg(target="wasm-gc")
fn animation_commit_styles_ffi(obj: JsValue) -> Unit = "webapi_Animation" "commitStyles"