// Do not edit. This file is generated.
// MoonBit type: PerformanceEntry
// Specifications: performance-timeline.idl

/// [PerformanceEntry](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry)
#external
pub type PerformanceEntry

pub impl TJsValue for PerformanceEntry with to_js(self: PerformanceEntry) -> JsValue = "%identity"

pub impl FromJsAny for PerformanceEntry with from_js_any(value : JsAny) -> PerformanceEntry = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPerformanceEntry] PerformanceEntry::into(self : PerformanceEntry) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPerformanceEntry] PerformanceEntry::unsafe_into(self : PerformanceEntry) -> T = "%identity"

pub impl HasConstructor for PerformanceEntry with constructor_name() { "PerformanceEntry" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPerformanceEntry + HasConstructor] PerformanceEntry::try_into(self : PerformanceEntry) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPerformanceEntry for PerformanceEntry

/// [PerformanceEntry](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry) interface.
pub trait TPerformanceEntry: TJsValue {
  id(self : Self) -> UInt64 = _
  name(self : Self) -> String = _
  entry_type(self : Self) -> String = _
  start_time(self : Self) -> DOMHighResTimeStamp = _
  duration(self : Self) -> DOMHighResTimeStamp = _
  navigation_id(self : Self) -> UInt64 = _
  to_json(self : Self) -> JsValue = _
}

/// [PerformanceEntry.id](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/id)
impl TPerformanceEntry with id(self : Self) -> UInt64 {
  performance_entry_id_ffi(TJsValue::to_js(self))
}

/// [PerformanceEntry.name](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/name)
impl TPerformanceEntry with name(self : Self) -> String {
  performance_entry_name_ffi(TJsValue::to_js(self))
}

/// [PerformanceEntry.entryType](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/entryType)
impl TPerformanceEntry with entry_type(self : Self) -> String {
  performance_entry_entry_type_ffi(TJsValue::to_js(self))
}

/// [PerformanceEntry.startTime](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/startTime)
impl TPerformanceEntry with start_time(self : Self) -> DOMHighResTimeStamp {
  performance_entry_start_time_ffi(TJsValue::to_js(self))
}

/// [PerformanceEntry.duration](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/duration)
impl TPerformanceEntry with duration(self : Self) -> DOMHighResTimeStamp {
  performance_entry_duration_ffi(TJsValue::to_js(self))
}

/// [PerformanceEntry.navigationId](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/navigationId)
impl TPerformanceEntry with navigation_id(self : Self) -> UInt64 {
  performance_entry_navigation_id_ffi(TJsValue::to_js(self))
}

/// [PerformanceEntry.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntry/toJSON)
impl TPerformanceEntry with to_json(self : Self) -> JsValue {
  performance_entry_to_json_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn performance_entry_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn performance_entry_id_ffi(obj: JsValue) -> UInt64 {
  performance_entry_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_entry_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn performance_entry_name_ffi(obj: JsValue) -> String {
  performance_entry_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_entry_entry_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.entryType"

///|
#cfg(target="js")
fn performance_entry_entry_type_ffi(obj: JsValue) -> String {
  performance_entry_entry_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_entry_start_time_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startTime"

///|
#cfg(target="js")
fn performance_entry_start_time_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  performance_entry_start_time_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_entry_duration_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.duration"

///|
#cfg(target="js")
fn performance_entry_duration_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  performance_entry_duration_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_entry_navigation_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.navigationId"

///|
#cfg(target="js")
fn performance_entry_navigation_id_ffi(obj: JsValue) -> UInt64 {
  performance_entry_navigation_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_entry_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn performance_entry_to_json_ffi(obj: JsValue) -> JsValue {
  performance_entry_to_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_entry_id_ffi(obj: JsValue) -> UInt64 = "webapi_PerformanceEntry" "get_id"

#cfg(target="wasm-gc")
fn performance_entry_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PerformanceEntry" "get_name"

///|
#cfg(target="wasm-gc")
fn performance_entry_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(performance_entry_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn performance_entry_entry_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_PerformanceEntry" "get_entryType"

///|
#cfg(target="wasm-gc")
fn performance_entry_entry_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(performance_entry_entry_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn performance_entry_start_time_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_PerformanceEntry" "get_startTime"

#cfg(target="wasm-gc")
fn performance_entry_duration_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_PerformanceEntry" "get_duration"

#cfg(target="wasm-gc")
fn performance_entry_navigation_id_ffi(obj: JsValue) -> UInt64 = "webapi_PerformanceEntry" "get_navigationId"

#cfg(target="wasm-gc")
fn performance_entry_to_json_ffi(obj: JsValue) -> JsValue = "webapi_PerformanceEntry" "toJSON"