// Do not edit. This file is generated.
// MoonBit type: Transformer
// Specifications: streams.idl

///|
/// [Transformer](https://developer.mozilla.org/en-US/docs/Web/API/Transformer)
#external
pub type Transformer

///|
pub impl TJsValue for Transformer with to_js(self : Transformer) -> JsValue = "%identity"

///|
pub impl FromJsAny for Transformer with from_js_any(value : JsAny) -> Transformer = "%identity"

///|
pub fn Transformer::new(
  start? : (TransformStreamDefaultController) -> JsValue,
  transform? : (JsValue, TransformStreamDefaultController) -> JsPromise[JsValue],
  flush? : (TransformStreamDefaultController) -> JsPromise[JsValue],
  cancel? : (JsValue) -> JsPromise[JsValue],
  readable_type? : JsValue,
  writable_type? : JsValue,
) -> Transformer {
  transformer_ffi(
    match start {
      Some(v) => TJsValue::to_js(transformer_start_callback_ffi(v))
      None => JsValue::undefined()
    },
    match transform {
      Some(v) => TJsValue::to_js(transformer_transform_callback_ffi(v))
      None => JsValue::undefined()
    },
    match flush {
      Some(v) => TJsValue::to_js(transformer_flush_callback_ffi(v))
      None => JsValue::undefined()
    },
    match cancel {
      Some(v) => TJsValue::to_js(transformer_cancel_callback_ffi(v))
      None => JsValue::undefined()
    },
    opt_to_js(readable_type),
    opt_to_js(writable_type),
  )
}

///|
pub fn Transformer::empty() -> Transformer {
  transformer_empty_ffi()
}

///|
pub fn Transformer::start(self : Transformer) -> TransformerStartCallback? {
  transformer_get_start_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::transform(
  self : Transformer,
) -> TransformerTransformCallback? {
  transformer_get_transform_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::flush(self : Transformer) -> TransformerFlushCallback? {
  transformer_get_flush_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::cancel(self : Transformer) -> TransformerCancelCallback? {
  transformer_get_cancel_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::readable_type(self : Transformer) -> JsValue? {
  transformer_get_readable_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::writable_type(self : Transformer) -> JsValue? {
  transformer_get_writable_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn transformer_ffi(
  start : JsValue,
  transform : JsValue,
  flush : JsValue,
  cancel : JsValue,
  readable_type : JsValue,
  writable_type : JsValue,
) -> Transformer =
  #|(start, transform, flush, cancel, readableType, writableType) => {
  #|  const obj = {};
  #|  if (start !== undefined) obj.start = start;
  #|  if (transform !== undefined) obj.transform = transform;
  #|  if (flush !== undefined) obj.flush = flush;
  #|  if (cancel !== undefined) obj.cancel = cancel;
  #|  if (readableType !== undefined) obj.readableType = readableType;
  #|  if (writableType !== undefined) obj.writableType = writableType;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn transformer_empty_ffi() -> Transformer = "() => {}"

///|
#cfg(target="js")
extern "js" fn transformer_get_start_ffi(obj : JsValue) -> JsValue = "(obj) => obj.start"

///|
#cfg(target="js")
extern "js" fn transformer_get_transform_ffi(obj : JsValue) -> JsValue = "(obj) => obj.transform"

///|
#cfg(target="js")
extern "js" fn transformer_get_flush_ffi(obj : JsValue) -> JsValue = "(obj) => obj.flush"

///|
#cfg(target="js")
extern "js" fn transformer_get_cancel_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancel"

///|
#cfg(target="js")
extern "js" fn transformer_get_readable_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.readableType"

///|
#cfg(target="js")
extern "js" fn transformer_get_writable_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.writableType"

///|
#cfg(target="wasm-gc")
fn transformer_ffi(
  start : JsValue,
  transform : JsValue,
  flush : JsValue,
  cancel : JsValue,
  readable_type : JsValue,
  writable_type : JsValue,
) -> Transformer = "webapi_Transformer" "new"

///|
#cfg(target="wasm-gc")
fn transformer_empty_ffi() -> Transformer = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn transformer_get_start_ffi(obj : JsValue) -> JsValue = "webapi_Transformer" "get_start"

///|
#cfg(target="wasm-gc")
fn transformer_get_transform_ffi(obj : JsValue) -> JsValue = "webapi_Transformer" "get_transform"

///|
#cfg(target="wasm-gc")
fn transformer_get_flush_ffi(obj : JsValue) -> JsValue = "webapi_Transformer" "get_flush"

///|
#cfg(target="wasm-gc")
fn transformer_get_cancel_ffi(obj : JsValue) -> JsValue = "webapi_Transformer" "get_cancel"

///|
#cfg(target="wasm-gc")
fn transformer_get_readable_type_ffi(obj : JsValue) -> JsValue = "webapi_Transformer" "get_readableType"

///|
#cfg(target="wasm-gc")
fn transformer_get_writable_type_ffi(obj : JsValue) -> JsValue = "webapi_Transformer" "get_writableType"
