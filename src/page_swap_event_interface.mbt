// Do not edit. This file is generated.
// MoonBit type: PageSwapEvent
// Specifications: html.idl

/// [PageSwapEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent)
#external
pub type PageSwapEvent

pub impl TJsValue for PageSwapEvent with to_js(self: PageSwapEvent) -> JsValue = "%identity"

pub impl FromJsAny for PageSwapEvent with from_js_any(value : JsAny) -> PageSwapEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPageSwapEvent] PageSwapEvent::into(self : PageSwapEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPageSwapEvent] PageSwapEvent::unsafe_into(self : PageSwapEvent) -> T = "%identity"

pub impl HasConstructor for PageSwapEvent with constructor_name() { "PageSwapEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPageSwapEvent + HasConstructor] PageSwapEvent::try_into(self : PageSwapEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPageSwapEvent for PageSwapEvent

pub impl TEvent for PageSwapEvent

pub fn PageSwapEvent::new(type_ : String, 
event_init_dict? : PageSwapEventInit) -> PageSwapEvent {
  page_swap_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [PageSwapEvent](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent) interface.
pub trait TPageSwapEvent: TEvent {
  activation(self : Self) -> NavigationActivation = _
  view_transition(self : Self) -> ViewTransition = _
}

/// [PageSwapEvent.activation](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent/activation)
impl TPageSwapEvent with activation(self : Self) -> NavigationActivation {
  page_swap_event_activation_ffi(TJsValue::to_js(self))
}

/// [PageSwapEvent.viewTransition](https://developer.mozilla.org/en-US/docs/Web/API/PageSwapEvent/viewTransition)
impl TPageSwapEvent with view_transition(self : Self) -> ViewTransition {
  page_swap_event_view_transition_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn page_swap_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageSwapEvent = "(type_, event_init_dict) => new PageSwapEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn page_swap_event_activation_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.activation"

///|
#cfg(target="js")
fn page_swap_event_activation_ffi(obj: JsValue) -> NavigationActivation {
  page_swap_event_activation_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn page_swap_event_view_transition_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.viewTransition"

///|
#cfg(target="js")
fn page_swap_event_view_transition_ffi(obj: JsValue) -> ViewTransition {
  page_swap_event_view_transition_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn page_swap_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> PageSwapEvent = "webapi_PageSwapEvent" "new"

#cfg(target="wasm-gc")
fn page_swap_event_activation_ffi(obj: JsValue) -> NavigationActivation = "webapi_PageSwapEvent" "get_activation"

#cfg(target="wasm-gc")
fn page_swap_event_view_transition_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PageSwapEvent" "get_viewTransition"

///|
#cfg(target="wasm-gc")
fn page_swap_event_view_transition_ffi(obj: JsValue) -> ViewTransition {
  page_swap_event_view_transition_ffi_wasm(obj).unsafe_cast()
}