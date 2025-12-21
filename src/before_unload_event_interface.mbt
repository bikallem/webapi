///|
#external
pub type BeforeUnloadEvent

///|
pub impl TJsValue for BeforeUnloadEvent with to_js(self : BeforeUnloadEvent) -> JsValue = "%identity"

///|
pub fn[T : TBeforeUnloadEvent] BeforeUnloadEvent::into(
  self : BeforeUnloadEvent,
) -> T = "%identity"

///|
pub impl TBeforeUnloadEvent for BeforeUnloadEvent

///|
pub impl TEvent for BeforeUnloadEvent

///|
pub trait TBeforeUnloadEvent: TEvent {}
