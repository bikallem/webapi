///|
#external
pub type MediaQueryListEvent

///|
pub impl TJsValue for MediaQueryListEvent with to_js(self : MediaQueryListEvent) -> JsValue = "%identity"

///|
pub fn[T : TMediaQueryListEvent] MediaQueryListEvent::into(
  self : MediaQueryListEvent,
) -> T = "%identity"

///|
pub impl TMediaQueryListEvent for MediaQueryListEvent

///|
pub impl TEvent for MediaQueryListEvent

///|
extern "js" fn media_query_list_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> MediaQueryListEvent = "(type_, event_init_dict) => new MediaQueryListEvent(type_, event_init_dict)"

///|
pub fn MediaQueryListEvent::new(
  type_ : CSSOMString,
  event_init_dict? : MediaQueryListEventInit = MediaQueryListEventInit::empty(),
) -> MediaQueryListEvent {
  media_query_list_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TMediaQueryListEvent: TEvent {}
