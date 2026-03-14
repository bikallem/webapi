// Do not edit. This file is generated.
// MoonBit type: NavigationCurrentEntryChangeEventInit
// Specifications: dom.idl, html.idl

/// [NavigationCurrentEntryChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEventInit)
#external
pub type NavigationCurrentEntryChangeEventInit

pub impl TJsValue for NavigationCurrentEntryChangeEventInit with to_js(self: NavigationCurrentEntryChangeEventInit) -> JsValue = "%identity"

pub impl FromJsAny for NavigationCurrentEntryChangeEventInit with from_js_any(value : JsAny) -> NavigationCurrentEntryChangeEventInit = "%identity"

pub fn NavigationCurrentEntryChangeEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
navigation_type? : NavigationType, 
from : &TNavigationHistoryEntry) -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(navigation_type), TJsValue::to_js(from))
}

pub fn NavigationCurrentEntryChangeEventInit::empty() -> NavigationCurrentEntryChangeEventInit { navigation_current_entry_change_event_init_empty_ffi() }

pub fn NavigationCurrentEntryChangeEventInit::bubbles(self : NavigationCurrentEntryChangeEventInit) -> Bool? {
  navigation_current_entry_change_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NavigationCurrentEntryChangeEventInit::cancelable(self : NavigationCurrentEntryChangeEventInit) -> Bool? {
  navigation_current_entry_change_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NavigationCurrentEntryChangeEventInit::composed(self : NavigationCurrentEntryChangeEventInit) -> Bool? {
  navigation_current_entry_change_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn NavigationCurrentEntryChangeEventInit::navigation_type(self : NavigationCurrentEntryChangeEventInit) -> NavigationType? {
  navigation_current_entry_change_event_init_get_navigation_type_ffi(TJsValue::to_js(self)).to_option()
}

pub fn NavigationCurrentEntryChangeEventInit::from(self : NavigationCurrentEntryChangeEventInit) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_init_get_from_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, navigation_type: JsValue, from: JsValue) -> NavigationCurrentEntryChangeEventInit = 
#|(bubbles, cancelable, composed, navigationType, from) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (navigationType !== undefined) obj.navigationType = navigationType;
#|  if (from !== undefined) obj.from = from;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_empty_ffi() -> NavigationCurrentEntryChangeEventInit = "() => {}"

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_get_navigation_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.navigationType"

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_init_get_from_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.from"

///|
#cfg(target="js")
fn navigation_current_entry_change_event_init_get_from_ffi(obj: JsValue) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_init_get_from_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, navigation_type: JsValue, from: JsValue) -> NavigationCurrentEntryChangeEventInit = "webapi_NavigationCurrentEntryChangeEventInit" "new"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_empty_ffi() -> NavigationCurrentEntryChangeEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_composed"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_get_navigation_type_ffi(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEventInit" "get_navigationType"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_init_get_from_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_NavigationCurrentEntryChangeEventInit" "get_from"