///|
/// JavaScript Typed Arrays
/// 
/// These are built-in JavaScript types for working with binary data.

// Float arrays

#external
pub type Float16Array

///|
pub impl TJsValue for Float16Array with to_js(self : Float16Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Float16Array with from_js_any(value : JsAny) -> Float16Array = "%identity"

///|
#external
pub type Float32Array

///|
pub impl TJsValue for Float32Array with to_js(self : Float32Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Float32Array with from_js_any(value : JsAny) -> Float32Array = "%identity"

///|
#external
pub type Float64Array

///|
pub impl TJsValue for Float64Array with to_js(self : Float64Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Float64Array with from_js_any(value : JsAny) -> Float64Array = "%identity"

// Integer arrays

///|
#external
pub type Int8Array

///|
pub impl TJsValue for Int8Array with to_js(self : Int8Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Int8Array with from_js_any(value : JsAny) -> Int8Array = "%identity"

///|
#external
pub type Int16Array

///|
pub impl TJsValue for Int16Array with to_js(self : Int16Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Int16Array with from_js_any(value : JsAny) -> Int16Array = "%identity"

///|
#external
pub type Int32Array

///|
pub impl TJsValue for Int32Array with to_js(self : Int32Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Int32Array with from_js_any(value : JsAny) -> Int32Array = "%identity"

// BigInt and BigUint arrays

///|
#external
pub type BigInt64Array

///|
pub impl TJsValue for BigInt64Array with to_js(self : BigInt64Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for BigInt64Array with from_js_any(value : JsAny) -> BigInt64Array = "%identity"

///|
#external
pub type BigUint64Array

///|
pub impl TJsValue for BigUint64Array with to_js(self : BigUint64Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for BigUint64Array with from_js_any(value : JsAny) -> BigUint64Array = "%identity"

// Unsigned integer arrays

///|
#external
pub type Uint8Array

///|
pub impl TJsValue for Uint8Array with to_js(self : Uint8Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Uint8Array with from_js_any(value : JsAny) -> Uint8Array = "%identity"

///|
#external
pub type Uint16Array

///|
pub impl TJsValue for Uint16Array with to_js(self : Uint16Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Uint16Array with from_js_any(value : JsAny) -> Uint16Array = "%identity"

///|
#external
pub type Uint32Array

///|
pub impl TJsValue for Uint32Array with to_js(self : Uint32Array) -> JsValue = "%identity"

///|
pub impl FromJsAny for Uint32Array with from_js_any(value : JsAny) -> Uint32Array = "%identity"

///|
#external
pub type Uint8ClampedArray

///|
pub impl TJsValue for Uint8ClampedArray with to_js(self : Uint8ClampedArray) -> JsValue = "%identity"

///|
pub impl FromJsAny for Uint8ClampedArray with from_js_any(value : JsAny) -> Uint8ClampedArray = "%identity"

// Other typed arrays

///|
#external
pub type DataView

///|
pub impl TJsValue for DataView with to_js(self : DataView) -> JsValue = "%identity"

///|
pub impl FromJsAny for DataView with from_js_any(value : JsAny) -> DataView = "%identity"

///|
#external
pub type SharedArrayBuffer

///|
pub impl TJsValue for SharedArrayBuffer with to_js(self : SharedArrayBuffer) -> JsValue = "%identity"

///|
pub impl FromJsAny for SharedArrayBuffer with from_js_any(value : JsAny) -> SharedArrayBuffer = "%identity"

///|
#external
pub type ArrayBuffer

///|
pub impl TJsValue for ArrayBuffer with to_js(self : ArrayBuffer) -> JsValue = "%identity"

///|
pub impl FromJsAny for ArrayBuffer with from_js_any(value : JsAny) -> ArrayBuffer = "%identity"
