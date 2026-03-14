// Do not edit. This file is generated.
// MoonBit type: Performance
// Specifications: hr-time.idl, performance-timeline.idl

/// [Performance](https://developer.mozilla.org/en-US/docs/Web/API/Performance)
#external
pub type Performance

pub impl TJsValue for Performance with to_js(self: Performance) -> JsValue = "%identity"

pub impl FromJsAny for Performance with from_js_any(value : JsAny) -> Performance = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TPerformance] Performance::into(self : Performance) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TPerformance] Performance::unsafe_into(self : Performance) -> T = "%identity"

pub impl HasConstructor for Performance with constructor_name() { "Performance" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TPerformance + HasConstructor] Performance::try_into(self : Performance) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TPerformance for Performance

pub impl TEventTarget for Performance

/// [Performance](https://developer.mozilla.org/en-US/docs/Web/API/Performance) interface.
pub trait TPerformance: TEventTarget {
  now(self : Self) -> DOMHighResTimeStamp = _
  time_origin(self : Self) -> DOMHighResTimeStamp = _
  to_json(self : Self) -> JsValue = _
  get_entries(self : Self) -> PerformanceEntryList = _
  get_entries_by_type(self : Self, type_ : String) -> PerformanceEntryList = _
  get_entries_by_name(self : Self, name : String, type_? : String) -> PerformanceEntryList = _
}

/// [Performance.now](https://developer.mozilla.org/en-US/docs/Web/API/Performance/now)
impl TPerformance with now(self : Self) -> DOMHighResTimeStamp {
  performance_now_ffi(TJsValue::to_js(self))
}

/// [Performance.timeOrigin](https://developer.mozilla.org/en-US/docs/Web/API/Performance/timeOrigin)
impl TPerformance with time_origin(self : Self) -> DOMHighResTimeStamp {
  performance_time_origin_ffi(TJsValue::to_js(self))
}

/// [Performance.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/Performance/toJSON)
impl TPerformance with to_json(self : Self) -> JsValue {
  performance_to_json_ffi(TJsValue::to_js(self))
}

/// [Performance.getEntries](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntries)
impl TPerformance with get_entries(self : Self) -> PerformanceEntryList {
  performance_get_entries_ffi(TJsValue::to_js(self))
}

/// [Performance.getEntriesByType](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByType)
impl TPerformance with get_entries_by_type(self : Self, 
type_ : String) -> PerformanceEntryList {
  performance_get_entries_by_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [Performance.getEntriesByName](https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByName)
impl TPerformance with get_entries_by_name(self : Self, 
name : String, 
type_? : String) -> PerformanceEntryList {
  performance_get_entries_by_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name), opt_to_js(type_))
}

#cfg(target="js")
extern "js" fn performance_now_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.now()"

///|
#cfg(target="js")
fn performance_now_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  performance_now_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_time_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.timeOrigin"

///|
#cfg(target="js")
fn performance_time_origin_ffi(obj: JsValue) -> DOMHighResTimeStamp {
  performance_time_origin_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn performance_to_json_ffi(obj: JsValue) -> JsValue {
  performance_to_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_get_entries_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getEntries()"

///|
#cfg(target="js")
fn performance_get_entries_ffi(obj: JsValue) -> PerformanceEntryList {
  performance_get_entries_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_get_entries_by_type_ffi_js(obj: JsValue, type_: JsValue) -> JsValue = "(obj, type_) => obj.getEntriesByType(type_)"

///|
#cfg(target="js")
fn performance_get_entries_by_type_ffi(obj: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_get_entries_by_type_ffi_js(obj, type_).unsafe_cast()
}

#cfg(target="js")
extern "js" fn performance_get_entries_by_name_ffi_js(obj: JsValue, name: JsValue, type_: JsValue) -> JsValue = "(obj, name, type_) => obj.getEntriesByName(name, type_)"

///|
#cfg(target="js")
fn performance_get_entries_by_name_ffi(obj: JsValue, name: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_get_entries_by_name_ffi_js(obj, name, type_).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_now_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_Performance" "now"

#cfg(target="wasm-gc")
fn performance_time_origin_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_Performance" "get_timeOrigin"

#cfg(target="wasm-gc")
fn performance_to_json_ffi(obj: JsValue) -> JsValue = "webapi_Performance" "toJSON"

#cfg(target="wasm-gc")
fn performance_get_entries_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Performance" "getEntries"

///|
#cfg(target="wasm-gc")
fn performance_get_entries_ffi(obj: JsValue) -> PerformanceEntryList {
  performance_get_entries_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_get_entries_by_type_ffi_wasm(obj: JsValue, type_: JsValue) -> JsValue = "webapi_Performance" "getEntriesByType"

///|
#cfg(target="wasm-gc")
fn performance_get_entries_by_type_ffi(obj: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_get_entries_by_type_ffi_wasm(obj, type_).unsafe_cast()
}

#cfg(target="wasm-gc")
fn performance_get_entries_by_name_ffi_wasm(obj: JsValue, name: JsValue, type_: JsValue) -> JsValue = "webapi_Performance" "getEntriesByName"

///|
#cfg(target="wasm-gc")
fn performance_get_entries_by_name_ffi(obj: JsValue, name: JsValue, type_: JsValue) -> PerformanceEntryList {
  performance_get_entries_by_name_ffi_wasm(obj, name, type_).unsafe_cast()
}