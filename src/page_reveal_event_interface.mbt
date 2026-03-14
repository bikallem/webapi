// Do not edit. This file is generated.
// MoonBit type: PageRevealEvent
// Specifications: html.idl

/// [PageRevealEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEvent)
#external
pub type PageRevealEvent

pub impl TJsValue for PageRevealEvent with to_js(self: PageRevealEvent) -> JsValue = "%identity"

pub impl FromJsAny for PageRevealEvent with from_js_any(value : JsAny) -> PageRevealEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPageRevealEvent] PageRevealEvent::into(self : PageRevealEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPageRevealEvent] PageRevealEvent::unsafe_into(self : PageRevealEvent) -> T = "%identity"

pub impl HasConstructor for PageRevealEvent with constructor_name() { "PageRevealEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPageRevealEvent + HasConstructor] PageRevealEvent::try_into(self : PageRevealEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPageRevealEvent for PageRevealEvent

pub impl TEvent for PageRevealEvent

pub fn PageRevealEvent::new(type_ : String, 
event_init_dict? : PageRevealEventInit) -> PageRevealEvent {
  page_reveal_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [PageRevealEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEvent) interface.
pub trait TPageRevealEvent: TEvent {
  view_transition(self : Self) -> ViewTransition = _
}

/// [PageRevealEvent.viewTransition](https://developer.mozilla.org/en-US/docs/Web/API/PageRevealEvent/viewTransition)
impl TPageRevealEvent with view_transition(self : Self) -> ViewTransition {
  page_reveal_event_view_transition_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn page_reveal_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageRevealEvent = "(type_, event_init_dict) => new PageRevealEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn page_reveal_event_view_transition_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.viewTransition"

///|
#cfg(target="js")
fn page_reveal_event_view_transition_ffi(obj: JsValue) -> ViewTransition {
  page_reveal_event_view_transition_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn page_reveal_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageRevealEvent = "webapi_PageRevealEvent" "new"

#cfg(target="wasm-gc")
fn page_reveal_event_view_transition_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PageRevealEvent" "get_viewTransition"

///|
#cfg(target="wasm-gc")
fn page_reveal_event_view_transition_ffi(obj: JsValue) -> ViewTransition {
  page_reveal_event_view_transition_ffi_wasm(obj).unsafe_cast()
}