// Do not edit. This file is generated.
// MoonBit type: HashChangeEvent
// Specifications: html.idl

/// [HashChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent)
#external
pub type HashChangeEvent

pub impl TJsValue for HashChangeEvent with to_js(self: HashChangeEvent) -> JsValue = "%identity"

pub impl FromJsAny for HashChangeEvent with from_js_any(value : JsAny) -> HashChangeEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THashChangeEvent] HashChangeEvent::into(self : HashChangeEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THashChangeEvent] HashChangeEvent::unsafe_into(self : HashChangeEvent) -> T = "%identity"

pub impl HasConstructor for HashChangeEvent with constructor_name() { "HashChangeEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THashChangeEvent + HasConstructor] HashChangeEvent::try_into(self : HashChangeEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THashChangeEvent for HashChangeEvent

pub impl TEvent for HashChangeEvent

pub fn HashChangeEvent::new(type_ : String, 
event_init_dict? : HashChangeEventInit) -> HashChangeEvent {
  hash_change_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [HashChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent) interface.
pub trait THashChangeEvent: TEvent {
  old_url(self : Self) -> String = _
  new_url(self : Self) -> String = _
}

/// [HashChangeEvent.oldURL](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent/oldURL)
impl THashChangeEvent with old_url(self : Self) -> String {
  hash_change_event_old_url_ffi(TJsValue::to_js(self))
}

/// [HashChangeEvent.newURL](https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent/newURL)
impl THashChangeEvent with new_url(self : Self) -> String {
  hash_change_event_new_url_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn hash_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> HashChangeEvent = "(type_, event_init_dict) => new HashChangeEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn hash_change_event_old_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oldURL"

///|
#cfg(target="js")
fn hash_change_event_old_url_ffi(obj: JsValue) -> String {
  hash_change_event_old_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn hash_change_event_new_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.newURL"

///|
#cfg(target="js")
fn hash_change_event_new_url_ffi(obj: JsValue) -> String {
  hash_change_event_new_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn hash_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> HashChangeEvent = "webapi_HashChangeEvent" "new"

#cfg(target="wasm-gc")
fn hash_change_event_old_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HashChangeEvent" "get_oldURL"

///|
#cfg(target="wasm-gc")
fn hash_change_event_old_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(hash_change_event_old_url_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn hash_change_event_new_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HashChangeEvent" "get_newURL"

///|
#cfg(target="wasm-gc")
fn hash_change_event_new_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(hash_change_event_new_url_ffi_wasm(obj))
}