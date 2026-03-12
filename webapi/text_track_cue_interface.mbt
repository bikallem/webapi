// Do not edit. This file is generated.
// MoonBit type: TextTrackCue
// Specifications: html.idl

///|
/// [TextTrackCue](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue)
#external
pub type TextTrackCue

///|
pub impl TJsValue for TextTrackCue with to_js(self : TextTrackCue) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextTrackCue with from_js_any(value : JsAny) -> TextTrackCue = "%identity"

///|
pub fn[T : TTextTrackCue] TextTrackCue::into(self : TextTrackCue) -> T = "%identity"

///|
pub impl TTextTrackCue for TextTrackCue

///|
pub impl TEventTarget for TextTrackCue

///|
/// [TextTrackCue](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue) interface.
pub trait TTextTrackCue: TEventTarget {
  track(self : Self) -> TextTrack = _
  id(self : Self) -> String = _
  set_id(self : Self, id : String) -> Unit = _
  start_time(self : Self) -> Double = _
  set_start_time(self : Self, start_time : Double) -> Unit = _
  end_time(self : Self) -> Double = _
  set_end_time(self : Self, end_time : Double) -> Unit = _
  pause_on_exit(self : Self) -> Bool = _
  set_pause_on_exit(self : Self, pause_on_exit : Bool) -> Unit = _
  onenter(self : Self) -> EventHandler = _
  set_onenter(self : Self, onenter : (Event) -> JsValue) -> Unit = _
  onexit(self : Self) -> EventHandler = _
  set_onexit(self : Self, onexit : (Event) -> JsValue) -> Unit = _
}

///|
/// [TextTrackCue.track](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/track)
impl TTextTrackCue with track(self : Self) -> TextTrack {
  text_track_cue_track_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.id](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/id)
impl TTextTrackCue with id(self : Self) -> String {
  text_track_cue_id_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.id](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/id)
impl TTextTrackCue with set_id(self : Self, id : String) -> Unit {
  text_track_cue_set_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
}

///|
/// [TextTrackCue.startTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/startTime)
impl TTextTrackCue with start_time(self : Self) -> Double {
  text_track_cue_start_time_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.startTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/startTime)
impl TTextTrackCue with set_start_time(self : Self, start_time : Double) -> Unit {
  text_track_cue_set_start_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start_time),
  )
}

///|
/// [TextTrackCue.endTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/endTime)
impl TTextTrackCue with end_time(self : Self) -> Double {
  text_track_cue_end_time_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.endTime](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/endTime)
impl TTextTrackCue with set_end_time(self : Self, end_time : Double) -> Unit {
  text_track_cue_set_end_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(end_time),
  )
}

///|
/// [TextTrackCue.pauseOnExit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/pauseOnExit)
impl TTextTrackCue with pause_on_exit(self : Self) -> Bool {
  text_track_cue_pause_on_exit_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.pauseOnExit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/pauseOnExit)
impl TTextTrackCue with set_pause_on_exit(self : Self, pause_on_exit : Bool) -> Unit {
  text_track_cue_set_pause_on_exit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(pause_on_exit),
  )
}

///|
/// [TextTrackCue.onenter](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onenter)
impl TTextTrackCue with onenter(self : Self) -> EventHandler {
  text_track_cue_onenter_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.onenter](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onenter)
impl TTextTrackCue with set_onenter(self : Self, onenter : (Event) -> JsValue) -> Unit {
  text_track_cue_set_onenter_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onenter)),
  )
}

///|
/// [TextTrackCue.onexit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onexit)
impl TTextTrackCue with onexit(self : Self) -> EventHandler {
  text_track_cue_onexit_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCue.onexit](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCue/onexit)
impl TTextTrackCue with set_onexit(self : Self, onexit : (Event) -> JsValue) -> Unit {
  text_track_cue_set_onexit_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onexit)),
  )
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_track_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.track"

///|
#cfg(target="js")
fn text_track_cue_track_ffi(obj : JsValue) -> TextTrack {
  text_track_cue_track_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn text_track_cue_id_ffi(obj : JsValue) -> String {
  text_track_cue_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "(obj, id) => { obj.id = id; }"

///|
#cfg(target="js")
extern "js" fn text_track_cue_start_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.startTime"

///|
#cfg(target="js")
fn text_track_cue_start_time_ffi(obj : JsValue) -> Double {
  text_track_cue_start_time_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_set_start_time_ffi(
  obj : JsValue,
  start_time : JsValue,
) -> Unit = "(obj, startTime) => { obj.startTime = startTime; }"

///|
#cfg(target="js")
extern "js" fn text_track_cue_end_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.endTime"

///|
#cfg(target="js")
fn text_track_cue_end_time_ffi(obj : JsValue) -> Double {
  text_track_cue_end_time_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_set_end_time_ffi(
  obj : JsValue,
  end_time : JsValue,
) -> Unit = "(obj, endTime) => { obj.endTime = endTime; }"

///|
#cfg(target="js")
extern "js" fn text_track_cue_pause_on_exit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pauseOnExit"

///|
#cfg(target="js")
fn text_track_cue_pause_on_exit_ffi(obj : JsValue) -> Bool {
  text_track_cue_pause_on_exit_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_set_pause_on_exit_ffi(
  obj : JsValue,
  pause_on_exit : JsValue,
) -> Unit = "(obj, pauseOnExit) => { obj.pauseOnExit = pauseOnExit; }"

///|
#cfg(target="js")
extern "js" fn text_track_cue_onenter_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onenter"

///|
#cfg(target="js")
fn text_track_cue_onenter_ffi(obj : JsValue) -> EventHandler {
  text_track_cue_onenter_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_set_onenter_ffi(
  obj : JsValue,
  onenter : JsValue,
) -> Unit = "(obj, onenter) => { obj.onenter = onenter; }"

///|
#cfg(target="js")
extern "js" fn text_track_cue_onexit_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onexit"

///|
#cfg(target="js")
fn text_track_cue_onexit_ffi(obj : JsValue) -> EventHandler {
  text_track_cue_onexit_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn text_track_cue_set_onexit_ffi(
  obj : JsValue,
  onexit : JsValue,
) -> Unit = "(obj, onexit) => { obj.onexit = onexit; }"

///|
#cfg(target="wasm-gc")
fn text_track_cue_track_ffi(obj : JsValue) -> TextTrack = "webapi_TextTrackCue" "get_track"

///|
#cfg(target="wasm-gc")
fn text_track_cue_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_id"

///|
#cfg(target="wasm-gc")
fn text_track_cue_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(text_track_cue_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn text_track_cue_set_id_ffi(obj : JsValue, id : JsValue) -> Unit = "webapi_TextTrackCue" "set_id"

///|
#cfg(target="wasm-gc")
fn text_track_cue_start_time_ffi(obj : JsValue) -> Double = "webapi_TextTrackCue" "get_startTime"

///|
#cfg(target="wasm-gc")
fn text_track_cue_set_start_time_ffi(
  obj : JsValue,
  start_time : JsValue,
) -> Unit = "webapi_TextTrackCue" "set_startTime"

///|
#cfg(target="wasm-gc")
fn text_track_cue_end_time_ffi(obj : JsValue) -> Double = "webapi_TextTrackCue" "get_endTime"

///|
#cfg(target="wasm-gc")
fn text_track_cue_set_end_time_ffi(obj : JsValue, end_time : JsValue) -> Unit = "webapi_TextTrackCue" "set_endTime"

///|
#cfg(target="wasm-gc")
fn text_track_cue_pause_on_exit_ffi(obj : JsValue) -> Bool = "webapi_TextTrackCue" "get_pauseOnExit"

///|
#cfg(target="wasm-gc")
fn text_track_cue_set_pause_on_exit_ffi(
  obj : JsValue,
  pause_on_exit : JsValue,
) -> Unit = "webapi_TextTrackCue" "set_pauseOnExit"

///|
#cfg(target="wasm-gc")
fn text_track_cue_onenter_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_onenter"

///|
#cfg(target="wasm-gc")
fn text_track_cue_onenter_ffi(obj : JsValue) -> EventHandler {
  text_track_cue_onenter_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn text_track_cue_set_onenter_ffi(obj : JsValue, onenter : JsValue) -> Unit = "webapi_TextTrackCue" "set_onenter"

///|
#cfg(target="wasm-gc")
fn text_track_cue_onexit_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TextTrackCue" "get_onexit"

///|
#cfg(target="wasm-gc")
fn text_track_cue_onexit_ffi(obj : JsValue) -> EventHandler {
  text_track_cue_onexit_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn text_track_cue_set_onexit_ffi(obj : JsValue, onexit : JsValue) -> Unit = "webapi_TextTrackCue" "set_onexit"
