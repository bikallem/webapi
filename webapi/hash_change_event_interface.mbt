// Do not edit. This file is generated.
// MoonBit type: HashChangeEvent
// Specifications: html.idl

///|
/// [HashChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent)
#external
pub type HashChangeEvent

///|
pub impl TJsValue for HashChangeEvent with to_js(self : HashChangeEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for HashChangeEvent with from_js_any(value : JsAny) -> HashChangeEvent = "%identity"

///|
pub fn[T : THashChangeEvent] HashChangeEvent::into(self : HashChangeEvent) -> T = "%identity"

///|
pub impl THashChangeEvent for HashChangeEvent

///|
pub impl TEvent for HashChangeEvent

///|
pub fn HashChangeEvent::new(
  type_ : String,
  event_init_dict? : HashChangeEventInit = HashChangeEventInit::empty(),
) -> HashChangeEvent {
  hash_change_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [HashChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent) interface.
pub trait THashChangeEvent: TEvent {
  old_url(self : Self) -> String = _
  new_url(self : Self) -> String = _
}

///|
/// [HashChangeEvent.oldURL](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent/oldURL)
impl THashChangeEvent with old_url(self : Self) -> String {
  hash_change_event_old_url_ffi(TJsValue::to_js(self))
}

///|
/// [HashChangeEvent.newURL](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent/newURL)
impl THashChangeEvent with new_url(self : Self) -> String {
  hash_change_event_new_url_ffi(TJsValue::to_js(self))
}
