// Auto-generated MoonBit bindings for TrackEventInit dictionary
// Do not edit manually

#external
pub type TrackEventInit

pub impl TJsValue for TrackEventInit with to_js(self: TrackEventInit) -> JsValue = "%identity"


fn track_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, track : JsValue) -> TrackEventInit = "webapi_TrackEventInit" "new"


pub fn TrackEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  track? : JsValue? : JsValue = JsValue::null()) -> TrackEventInit {
    track_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(track)
    )
}


pub fn TrackEventInit::empty() -> TrackEventInit = "webapi_Dictionary" "empty"