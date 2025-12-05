///|
/// Import types, traits, and functions from dependency packages.
/// This eliminates the need for @pkg. prefixes.

///|
using @core {
  type JsValue,
  type JsArray,
  type JsPromise,
  type Blob,
  type BlobPropertyBag,
  type EndingType,
  type ArrayBuffer,
  type DataView,
  type Int8Array,
  type Int16Array,
  type Int32Array,
  type Uint8Array,
  type Uint8ClampedArray,
  type Uint16Array,
  type Uint32Array,
  type BigInt64Array,
  type BigUint64Array,
  type Float32Array,
  type Float64Array,
  type Storage,
  trait TJsValue,
  trait TBlob,
  trait TStorage,
  opt_to_js,
  fn_to_js,
  default_js_value,
}
