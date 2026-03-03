// Do not edit. This file is generated.
// MoonBit type: InstallEvent
// Specifications: service-workers.idl

///|
/// [InstallEvent](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent)
#external
pub type InstallEvent

///|
pub impl TJsValue for InstallEvent with to_js(self : InstallEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for InstallEvent with from_js_any(value : JsAny) -> InstallEvent = "%identity"

///|
pub fn[T : TInstallEvent] InstallEvent::into(self : InstallEvent) -> T = "%identity"

///|
pub impl TInstallEvent for InstallEvent

///|
pub impl TExtendableEvent for InstallEvent

///|
pub impl TEvent for InstallEvent

///|
pub fn InstallEvent::new(
  type_ : String,
  event_init_dict? : ExtendableEventInit = ExtendableEventInit::empty(),
) -> InstallEvent {
  install_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub(open) trait TInstallEventAddRoutesRules: TJsValue {}

///|
pub impl TInstallEventAddRoutesRules for RouterRule

///|
pub impl TInstallEventAddRoutesRules for Array[RouterRule]

///|
/// [InstallEvent](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent) interface.
pub trait TInstallEvent: TExtendableEvent {
  add_routes(self : Self, rules : &TInstallEventAddRoutesRules) -> JsPromise[
    JsValue,
  ] = _
}

///|
/// [InstallEvent.addRoutes](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent/addRoutes)
impl TInstallEvent with add_routes(
  self : Self,
  rules : &TInstallEventAddRoutesRules,
) -> JsPromise[JsValue] {
  install_event_add_routes_ffi(TJsValue::to_js(self), rules.to_js())
}
