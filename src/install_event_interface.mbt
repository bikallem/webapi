// Do not edit. This file is generated.
// MoonBit type: InstallEvent
// Specifications: service-workers.idl

/// [InstallEvent](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent)
#external
pub type InstallEvent

pub impl TJsValue for InstallEvent with to_js(self: InstallEvent) -> JsValue = "%identity"

pub impl FromJsAny for InstallEvent with from_js_any(value : JsAny) -> InstallEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TInstallEvent] InstallEvent::into(self : InstallEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TInstallEvent] InstallEvent::unsafe_into(self : InstallEvent) -> T = "%identity"

pub impl HasConstructor for InstallEvent with constructor_name() { "InstallEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TInstallEvent + HasConstructor] InstallEvent::try_into(self : InstallEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TInstallEvent for InstallEvent

pub impl TExtendableEvent for InstallEvent

pub impl TEvent for InstallEvent

pub fn InstallEvent::new(type_ : String, 
event_init_dict? : ExtendableEventInit) -> InstallEvent {
  install_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

pub(open) trait TInstallEventAddRoutesRules : TJsValue {}

pub impl TInstallEventAddRoutesRules for RouterRule

pub impl TInstallEventAddRoutesRules for Array[RouterRule]

/// [InstallEvent](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent) interface.
pub trait TInstallEvent: TExtendableEvent {
  add_routes(self : Self, rules : &TInstallEventAddRoutesRules) -> JsPromise[JsValue] = _
}

/// [InstallEvent.addRoutes](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent/addRoutes)
impl TInstallEvent with add_routes(self : Self, 
rules : &TInstallEventAddRoutesRules) -> JsPromise[JsValue] {
  install_event_add_routes_ffi(TJsValue::to_js(self), rules.to_js())
}

#cfg(target="js")
extern "js" fn install_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> InstallEvent = "(type_, event_init_dict) => new InstallEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn install_event_add_routes_ffi_js(obj: JsValue, rules: JsValue) -> JsValue = "(obj, rules) => obj.addRoutes(rules)"

///|
#cfg(target="js")
fn install_event_add_routes_ffi(obj: JsValue, rules: JsValue) -> JsPromise[JsValue] {
  install_event_add_routes_ffi_js(obj, rules).unsafe_cast()
}

#cfg(target="wasm-gc")
fn install_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> InstallEvent = "webapi_InstallEvent" "new"

#cfg(target="wasm-gc")
fn install_event_add_routes_ffi_wasm(obj: JsValue, rules: JsValue) -> JsValue = "webapi_InstallEvent" "addRoutes"

///|
#cfg(target="wasm-gc")
fn install_event_add_routes_ffi(obj: JsValue, rules: JsValue) -> JsPromise[JsValue] {
  install_event_add_routes_ffi_wasm(obj, rules).unsafe_cast()
}