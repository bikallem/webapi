// Do not edit. This file is generated.
// MoonBit type: PageTransitionEvent
// Specifications: html.idl

/// [PageTransitionEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent)
#external
pub type PageTransitionEvent

pub impl TJsValue for PageTransitionEvent with to_js(self: PageTransitionEvent) -> JsValue = "%identity"

pub impl FromJsAny for PageTransitionEvent with from_js_any(value : JsAny) -> PageTransitionEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPageTransitionEvent] PageTransitionEvent::into(self : PageTransitionEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPageTransitionEvent] PageTransitionEvent::unsafe_into(self : PageTransitionEvent) -> T = "%identity"

pub impl HasConstructor for PageTransitionEvent with constructor_name() { "PageTransitionEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPageTransitionEvent + HasConstructor] PageTransitionEvent::try_into(self : PageTransitionEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPageTransitionEvent for PageTransitionEvent

pub impl TEvent for PageTransitionEvent

pub fn PageTransitionEvent::new(type_ : String, 
event_init_dict? : PageTransitionEventInit) -> PageTransitionEvent {
  page_transition_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [PageTransitionEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent) interface.
pub trait TPageTransitionEvent: TEvent {
  persisted(self : Self) -> Bool = _
}

/// [PageTransitionEvent.persisted](https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent/persisted)
impl TPageTransitionEvent with persisted(self : Self) -> Bool {
  page_transition_event_persisted_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn page_transition_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageTransitionEvent = "(type_, event_init_dict) => new PageTransitionEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn page_transition_event_persisted_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.persisted"

///|
#cfg(target="js")
fn page_transition_event_persisted_ffi(obj: JsValue) -> Bool {
  page_transition_event_persisted_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn page_transition_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageTransitionEvent = "webapi_PageTransitionEvent" "new"

#cfg(target="wasm-gc")
fn page_transition_event_persisted_ffi(obj: JsValue) -> Bool = "webapi_PageTransitionEvent" "get_persisted"