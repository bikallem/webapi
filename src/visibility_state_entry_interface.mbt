// Do not edit. This file is generated.
// MoonBit type: VisibilityStateEntry
// Specifications: html.idl

/// [VisibilityStateEntry](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry)
#external
pub type VisibilityStateEntry

pub impl TJsValue for VisibilityStateEntry with to_js(self: VisibilityStateEntry) -> JsValue = "%identity"

pub impl FromJsAny for VisibilityStateEntry with from_js_any(value : JsAny) -> VisibilityStateEntry = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TVisibilityStateEntry] VisibilityStateEntry::into(self : VisibilityStateEntry) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TVisibilityStateEntry] VisibilityStateEntry::unsafe_into(self : VisibilityStateEntry) -> T = "%identity"

pub impl HasConstructor for VisibilityStateEntry with constructor_name() { "VisibilityStateEntry" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TVisibilityStateEntry + HasConstructor] VisibilityStateEntry::try_into(self : VisibilityStateEntry) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TVisibilityStateEntry for VisibilityStateEntry

pub impl TPerformanceEntry for VisibilityStateEntry

/// [VisibilityStateEntry](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry) interface.
pub trait TVisibilityStateEntry: TPerformanceEntry {
  name(self : Self) -> String = _
  entry_type(self : Self) -> String = _
  start_time(self : Self) -> DOMHighResTimeStamp = _
  duration(self : Self) -> UInt = _
}

/// [VisibilityStateEntry.name](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/name)
impl TVisibilityStateEntry with name(self : Self) -> String {
  visibility_state_entry_name_ffi(TJsValue::to_js(self))
}

/// [VisibilityStateEntry.entryType](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/entryType)
impl TVisibilityStateEntry with entry_type(self : Self) -> String {
  visibility_state_entry_entry_type_ffi(TJsValue::to_js(self))
}

/// [VisibilityStateEntry.startTime](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/startTime)
impl TVisibilityStateEntry with start_time(self : Self) -> DOMHighResTimeStamp {
  visibility_state_entry_start_time_ffi(TJsValue::to_js(self))
}

/// [VisibilityStateEntry.duration](https://developer.mozilla.org/en-US/docs/Web/API/VisibilityStateEntry/duration)
impl TVisibilityStateEntry with duration(self : Self) -> UInt {
  visibility_state_entry_duration_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn visibility_state_entry_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn visibility_state_entry_name_ffi(obj: JsValue) -> String {
  visibility_state_entry_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn visibility_state_entry_entry_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.entryType"

///|
#cfg(target="js")
fn visibility_state_entry_entry_type_ffi(obj: JsValue) -> String {
  visibility_state_entry_entry_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn visibility_state_entry_start_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startTime"

///|
#cfg(target="js")
fn visibility_state_entry_start_time_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  visibility_state_entry_start_time_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn visibility_state_entry_duration_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.duration"

///|
#cfg(target="js")
fn visibility_state_entry_duration_ffi(obj: JsValue) -> UInt {
  visibility_state_entry_duration_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn visibility_state_entry_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_VisibilityStateEntry" "get_name"

///|
#cfg(target="wasm-gc")
fn visibility_state_entry_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(visibility_state_entry_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn visibility_state_entry_entry_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_VisibilityStateEntry" "get_entryType"

///|
#cfg(target="wasm-gc")
fn visibility_state_entry_entry_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(visibility_state_entry_entry_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn visibility_state_entry_start_time_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_VisibilityStateEntry" "get_startTime"

#cfg(target="wasm-gc")
fn visibility_state_entry_duration_ffi(obj: JsValue) -> UInt = "webapi_VisibilityStateEntry" "get_duration"