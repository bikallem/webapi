// Do not edit. This file is generated.
// MoonBit type: HashChangeEvent
// Specifications: html.idl

///|
#external
pub type HashChangeEvent

///|
pub impl TJsValue for HashChangeEvent with to_js(self : HashChangeEvent) -> JsValue = "%identity"

///|
pub fn[T : THashChangeEvent] HashChangeEvent::into(self : HashChangeEvent) -> T = "%identity"

///|
pub impl THashChangeEvent for HashChangeEvent

///|
pub impl TEvent for HashChangeEvent

///|
extern "js" fn hash_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> HashChangeEvent = "(type_, event_init_dict) => new HashChangeEvent(type_, event_init_dict)"

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
pub trait THashChangeEvent: TEvent {
  old_url(self : Self) -> String = _
  new_url(self : Self) -> String = _
}

///|
extern "js" fn hash_change_event_old_url_ffi(obj : JsValue) -> String = "(obj) => obj.oldURL"

///|
impl THashChangeEvent with old_url(self : Self) -> String {
  hash_change_event_old_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn hash_change_event_new_url_ffi(obj : JsValue) -> String = "(obj) => obj.newURL"

///|
impl THashChangeEvent with new_url(self : Self) -> String {
  hash_change_event_new_url_ffi(TJsValue::to_js(self))
}
