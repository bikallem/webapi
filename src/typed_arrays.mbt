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
#external
pub type Float32Array

///|
pub impl TJsValue for Float32Array with to_js(self : Float32Array) -> JsValue = "%identity"

///|
#external
pub type Float64Array

///|
pub impl TJsValue for Float64Array with to_js(self : Float64Array) -> JsValue = "%identity"

// Integer arrays

///|
#external
pub type Int8Array

///|
pub impl TJsValue for Int8Array with to_js(self : Int8Array) -> JsValue = "%identity"

///|
#external
pub type Int16Array

///|
pub impl TJsValue for Int16Array with to_js(self : Int16Array) -> JsValue = "%identity"

///|
#external
pub type Int32Array

///|
pub impl TJsValue for Int32Array with to_js(self : Int32Array) -> JsValue = "%identity"

// BigInt and BigUint arrays

///|
#external
pub type BigInt64Array

///|
pub impl TJsValue for BigInt64Array with to_js(self : BigInt64Array) -> JsValue = "%identity"

///|
#external
pub type BigUint64Array

///|
pub impl TJsValue for BigUint64Array with to_js(self : BigUint64Array) -> JsValue = "%identity"

// Unsigned integer arrays

///|
#external
pub type Uint8Array

///|
pub impl TJsValue for Uint8Array with to_js(self : Uint8Array) -> JsValue = "%identity"

///|
#external
pub type Uint16Array

///|
pub impl TJsValue for Uint16Array with to_js(self : Uint16Array) -> JsValue = "%identity"

///|
#external
pub type Uint32Array

///|
pub impl TJsValue for Uint32Array with to_js(self : Uint32Array) -> JsValue = "%identity"

///|
#external
pub type Uint8ClampedArray

///|
pub impl TJsValue for Uint8ClampedArray with to_js(self : Uint8ClampedArray) -> JsValue = "%identity"

// Other typed arrays

///|
#external
pub type DataView

///|
pub impl TJsValue for DataView with to_js(self : DataView) -> JsValue = "%identity"

///|
#external
pub type SharedArrayBuffer

///|
pub impl TJsValue for SharedArrayBuffer with to_js(self : SharedArrayBuffer) -> JsValue = "%identity"

///|
#external
pub type ArrayBuffer

///|
pub impl TJsValue for ArrayBuffer with to_js(self : ArrayBuffer) -> JsValue = "%identity"
