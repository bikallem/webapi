// Do not edit. This file is generated.
// MoonBit type: PerformanceObserverEntryList
// Specifications: performance-timeline.idl

/// [PerformanceObserverEntryList](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList)
#external
pub type PerformanceObserverEntryList

pub impl TJsValue for PerformanceObserverEntryList with to_js(self: PerformanceObserverEntryList) -> JsValue = "%identity"

pub impl FromJsAny for PerformanceObserverEntryList with from_js_any(value : JsAny) -> PerformanceObserverEntryList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPerformanceObserverEntryList] PerformanceObserverEntryList::into(self : PerformanceObserverEntryList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPerformanceObserverEntryList] PerformanceObserverEntryList::unsafe_into(self : PerformanceObserverEntryList) -> T = "%identity"

pub impl HasConstructor for PerformanceObserverEntryList with constructor_name() { "PerformanceObserverEntryList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPerformanceObserverEntryList + HasConstructor] PerformanceObserverEntryList::try_into(self : PerformanceObserverEntryList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPerformanceObserverEntryList for PerformanceObserverEntryList

/// [PerformanceObserverEntryList](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList) interface.
pub trait TPerformanceObserverEntryList: TJsValue {
  get_entries(self : Self) -> PerformanceEntryList = _
  get_entries_by_type(self : Self, type_ : String) -> PerformanceEntryList = _
  get_entries_by_name(self : Self, name : String, type_? : String) -> PerformanceEntryList = _
}

/// [PerformanceObserverEntryList.getEntries](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList/getEntries)
impl TPerformanceObserverEntryList with get_entries(self : Self) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_ffi(TJsValue::to_js(self))
}

/// [PerformanceObserverEntryList.getEntriesByType](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList/getEntriesByType)
impl TPerformanceObserverEntryList with get_entries_by_type(self : Self, 
type_ : String) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [PerformanceObserverEntryList.getEntriesByName](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList/getEntriesByName)
impl TPerformanceObserverEntryList with get_entries_by_name(self : Self, 
name : String, 
type_? : String) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(type_))
}

#cfg(target="js")
extern "js" fn performance_observer_entry_list_get_entries_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getEntries()"

///|
#cfg(target="js")
fn performance_observer_entry_list_get_entries_ffi(obj: JsValue) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_observer_entry_list_get_entries_by_type_ffi_js(obj: JsValue, type_: JsValue) -> JsValue = "(obj, type_) => obj.getEntriesByType(type_)"

///|
#cfg(target="js")
fn performance_observer_entry_list_get_entries_by_type_ffi(obj: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_type_ffi_js(obj, type_).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_observer_entry_list_get_entries_by_name_ffi_js(obj: JsValue, name: JsValue, type_: JsValue) -> JsValue = "(obj, name, type_) => obj.getEntriesByName(name, type_)"

///|
#cfg(target="js")
fn performance_observer_entry_list_get_entries_by_name_ffi(obj: JsValue, name: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_name_ffi_js(obj, name, type_).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_observer_entry_list_get_entries_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PerformanceObserverEntryList" "getEntries"

///|
#cfg(target="wasm-gc")
fn performance_observer_entry_list_get_entries_ffi(obj: JsValue) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_observer_entry_list_get_entries_by_type_ffi_wasm(obj: JsValue, type_: JsValue) -> JsValue = "webapi_PerformanceObserverEntryList" "getEntriesByType"

///|
#cfg(target="wasm-gc")
fn performance_observer_entry_list_get_entries_by_type_ffi(obj: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_type_ffi_wasm(obj, type_).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_observer_entry_list_get_entries_by_name_ffi_wasm(obj: JsValue, name: JsValue, type_: JsValue) -> JsValue = "webapi_PerformanceObserverEntryList" "getEntriesByName"

///|
#cfg(target="wasm-gc")
fn performance_observer_entry_list_get_entries_by_name_ffi(obj: JsValue, name: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_observer_entry_list_get_entries_by_name_ffi_wasm(obj, name, type_).unsafe_cast()
}