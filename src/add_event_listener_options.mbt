// Auto-generated MoonBit bindings for AddEventListenerOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary AddEventListenerOptions : EventListenerOptions {
//   boolean passive;
//   boolean once = false;
//   AbortSignal signal;
// };

///|
#external
pub type AddEventListenerOptions

///|
pub impl TJsValue for AddEventListenerOptions with to_js(
  self : AddEventListenerOptions,
) -> JsValue = "%identity"

///|
fn add_event_listener_options_ffi(
  passive : JsValue,
  once : JsValue,
  signal : JsValue,
) -> AddEventListenerOptions = "webapi_AddEventListenerOptions" "new"

///|
pub fn AddEventListenerOptions::new(
  passive? : Bool,
  once? : Bool = false,
  signal? : AbortSignal,
) -> AddEventListenerOptions {
  let passive_js = opt_to_js(passive)
  let signal_js = opt_to_js(signal)
  add_event_listener_options_ffi(passive_js, TJsValue::to_js(once), signal_js)
}

///|
pub fn AddEventListenerOptions::empty() -> AddEventListenerOptions = "webapi_Dictionary" "empty"
