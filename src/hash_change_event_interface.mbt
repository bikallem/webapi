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
pub trait THashChangeEvent: TEvent {}
