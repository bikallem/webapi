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
pub fn IDBKeyRange::lower_bound(lower : JsValue, open? : Bool) -> IDBKeyRange {
  idb_key_range_lower_bound_ffi(TJsValue::to_js(lower), opt_to_js(open))
}

///|
/// [IDBKeyRange.upperBound](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/upperBound)
pub fn IDBKeyRange::upper_bound(upper : JsValue, open? : Bool) -> IDBKeyRange {
  idb_key_range_upper_bound_ffi(TJsValue::to_js(upper), opt_to_js(open))
}

///|
/// [IDBKeyRange.bound](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/bound)
pub fn IDBKeyRange::bound(
  lower : JsValue,
  upper : JsValue,
  lower_open? : Bool,
  upper_open? : Bool,
) -> IDBKeyRange {
  idb_key_range_bound_ffi(
    TJsValue::to_js(lower),
    TJsValue::to_js(upper),
    opt_to_js(lower_open),
    opt_to_js(upper_open),
  )
}

///|
/// [IDBKeyRange.includes](https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange/includes)
impl TIDBKeyRange with includes(self : Self, key : JsValue) -> Bool {
  idb_key_range_includes_ffi(TJsValue::to_js(self), TJsValue::to_js(key))
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_lower_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lower"

///|
#cfg(target="js")
fn idb_key_range_lower_ffi(obj : JsValue) -> JsValue {
  idb_key_range_lower_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_upper_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.upper"

///|
#cfg(target="js")
fn idb_key_range_upper_ffi(obj : JsValue) -> JsValue {
  idb_key_range_upper_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_lower_open_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lowerOpen"

///|
#cfg(target="js")
fn idb_key_range_lower_open_ffi(obj : JsValue) -> Bool {
  idb_key_range_lower_open_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_upper_open_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.upperOpen"

///|
#cfg(target="js")
fn idb_key_range_upper_open_ffi(obj : JsValue) -> Bool {
  idb_key_range_upper_open_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_only_ffi_js(value : JsValue) -> JsValue = "(value) => IDBKeyRange.only(value)"

///|
#cfg(target="js")
fn idb_key_range_only_ffi(value : JsValue) -> IDBKeyRange {
  idb_key_range_only_ffi_js(value).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_lower_bound_ffi_js(
  lower : JsValue,
  open : JsValue,
) -> JsValue = "(lower, open) => IDBKeyRange.lowerBound(lower, open)"

///|
#cfg(target="js")
fn idb_key_range_lower_bound_ffi(
  lower : JsValue,
  open : JsValue,
) -> IDBKeyRange {
  idb_key_range_lower_bound_ffi_js(lower, open).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_upper_bound_ffi_js(
  upper : JsValue,
  open : JsValue,
) -> JsValue = "(upper, open) => IDBKeyRange.upperBound(upper, open)"

///|
#cfg(target="js")
fn idb_key_range_upper_bound_ffi(
  upper : JsValue,
  open : JsValue,
) -> IDBKeyRange {
  idb_key_range_upper_bound_ffi_js(upper, open).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_bound_ffi_js(
  lower : JsValue,
  upper : JsValue,
  lower_open : JsValue,
  upper_open : JsValue,
) -> JsValue = "(lower, upper, lower_open, upper_open) => IDBKeyRange.bound(lower, upper, lower_open, upper_open)"

///|
#cfg(target="js")
fn idb_key_range_bound_ffi(
  lower : JsValue,
  upper : JsValue,
  lower_open : JsValue,
  upper_open : JsValue,
) -> IDBKeyRange {
  idb_key_range_bound_ffi_js(lower, upper, lower_open, upper_open).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_key_range_includes_ffi_js(
  obj : JsValue,
  key : JsValue,
) -> JsValue = "(obj, key) => obj.includes(key)"

///|
#cfg(target="js")
fn idb_key_range_includes_ffi(obj : JsValue, key : JsValue) -> Bool {
  idb_key_range_includes_ffi_js(obj, key).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_key_range_lower_ffi(obj : JsValue) -> JsValue = "webapi_IDBKeyRange" "get_lower"

///|
#cfg(target="wasm-gc")
fn idb_key_range_upper_ffi(obj : JsValue) -> JsValue = "webapi_IDBKeyRange" "get_upper"

///|
#cfg(target="wasm-gc")
fn idb_key_range_lower_open_ffi(obj : JsValue) -> Bool = "webapi_IDBKeyRange" "get_lowerOpen"

///|
#cfg(target="wasm-gc")
fn idb_key_range_upper_open_ffi(obj : JsValue) -> Bool = "webapi_IDBKeyRange" "get_upperOpen"

///|
#cfg(target="wasm-gc")
fn idb_key_range_only_ffi(value : JsValue) -> IDBKeyRange = "webapi_IDBKeyRange" "only"

///|
#cfg(target="wasm-gc")
fn idb_key_range_lower_bound_ffi(
  lower : JsValue,
  open : JsValue,
) -> IDBKeyRange = "webapi_IDBKeyRange" "lowerBound"

///|
#cfg(target="wasm-gc")
fn idb_key_range_upper_bound_ffi(
  upper : JsValue,
  open : JsValue,
) -> IDBKeyRange = "webapi_IDBKeyRange" "upperBound"

///|
#cfg(target="wasm-gc")
fn idb_key_range_bound_ffi(
  lower : JsValue,
  upper : JsValue,
  lower_open : JsValue,
  upper_open : JsValue,
) -> IDBKeyRange = "webapi_IDBKeyRange" "bound"

///|
#cfg(target="wasm-gc")
fn idb_key_range_includes_ffi(obj : JsValue, key : JsValue) -> Bool = "webapi_IDBKeyRange" "includes"
