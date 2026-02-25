// Do not edit. This file is generated.
// MoonBit type: IDBKeyRange
// Specifications: IndexedDB.idl

///|
/// [IDBKeyRange](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange)
#external
pub type IDBKeyRange

///|
pub impl TJsValue for IDBKeyRange with to_js(self : IDBKeyRange) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBKeyRange with from_js_any(value : JsAny) -> IDBKeyRange = "%identity"

///|
pub fn[T : TIDBKeyRange] IDBKeyRange::into(self : IDBKeyRange) -> T = "%identity"

///|
pub impl TIDBKeyRange for IDBKeyRange

///|
/// [IDBKeyRange](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange) interface.
pub trait TIDBKeyRange: TJsValue {
  lower(self : Self) -> JsValue = _
  upper(self : Self) -> JsValue = _
  lower_open(self : Self) -> Bool = _
  upper_open(self : Self) -> Bool = _
  includes(self : Self, key : JsValue) -> Bool = _
}

///|
/// [IDBKeyRange.lower](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/lower)
impl TIDBKeyRange with lower(self : Self) -> JsValue {
  idb_key_range_lower_ffi(TJsValue::to_js(self))
}

///|
/// [IDBKeyRange.upper](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/upper)
impl TIDBKeyRange with upper(self : Self) -> JsValue {
  idb_key_range_upper_ffi(TJsValue::to_js(self))
}

///|
/// [IDBKeyRange.lowerOpen](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/lowerOpen)
impl TIDBKeyRange with lower_open(self : Self) -> Bool {
  idb_key_range_lower_open_ffi(TJsValue::to_js(self))
}

///|
/// [IDBKeyRange.upperOpen](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/upperOpen)
impl TIDBKeyRange with upper_open(self : Self) -> Bool {
  idb_key_range_upper_open_ffi(TJsValue::to_js(self))
}

///|
/// [IDBKeyRange.only](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/only)
pub fn IDBKeyRange::only(value : JsValue) -> IDBKeyRange {
  idb_key_range_only_ffi(TJsValue::to_js(value))
}

///|
/// [IDBKeyRange.lowerBound](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/lowerBound)
pub fn IDBKeyRange::lower_bound(
  lower : JsValue,
  open? : Bool = false,
) -> IDBKeyRange {
  idb_key_range_lower_bound_ffi(TJsValue::to_js(lower), TJsValue::to_js(open))
}

///|
/// [IDBKeyRange.upperBound](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/upperBound)
pub fn IDBKeyRange::upper_bound(
  upper : JsValue,
  open? : Bool = false,
) -> IDBKeyRange {
  idb_key_range_upper_bound_ffi(TJsValue::to_js(upper), TJsValue::to_js(open))
}

///|
/// [IDBKeyRange.bound](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/bound)
pub fn IDBKeyRange::bound(
  lower : JsValue,
  upper : JsValue,
  lower_open? : Bool = false,
  upper_open? : Bool = false,
) -> IDBKeyRange {
  idb_key_range_bound_ffi(
    TJsValue::to_js(lower),
    TJsValue::to_js(upper),
    TJsValue::to_js(lower_open),
    TJsValue::to_js(upper_open),
  )
}

///|
/// [IDBKeyRange.includes](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/includes)
impl TIDBKeyRange with includes(self : Self, key : JsValue) -> Bool {
  idb_key_range_includes_ffi(TJsValue::to_js(self), TJsValue::to_js(key))
}
