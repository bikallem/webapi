// Do not edit. This file is generated.
// MoonBit type: ByteLengthQueuingStrategy
// Specifications: streams.idl

///|
/// [ByteLengthQueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/ByteLengthQueuingStrategy)
#external
pub type ByteLengthQueuingStrategy

///|
pub impl TJsValue for ByteLengthQueuingStrategy with to_js(
  self : ByteLengthQueuingStrategy,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ByteLengthQueuingStrategy with from_js_any(value : JsAny) -> ByteLengthQueuingStrategy = "%identity"

///|
pub fn[T : TByteLengthQueuingStrategy] ByteLengthQueuingStrategy::into(
  self : ByteLengthQueuingStrategy,
) -> T = "%identity"

///|
pub impl TByteLengthQueuingStrategy for ByteLengthQueuingStrategy

///|
pub fn ByteLengthQueuingStrategy::new(
  init : QueuingStrategyInit,
) -> ByteLengthQueuingStrategy {
  byte_length_queuing_strategy_new_ffi(TJsValue::to_js(init))
}

///|
/// [ByteLengthQueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/ByteLengthQueuingStrategy) interface.
pub trait TByteLengthQueuingStrategy: TJsValue {
  high_water_mark(self : Self) -> Double = _
  size(self : Self) -> Function = _
}

///|
/// [ByteLengthQueuingStrategy.highWaterMark](https://developer.mozilla.org/en-US/docs/Web/API/ByteLengthQueuingStrategy/highWaterMark)
impl TByteLengthQueuingStrategy with high_water_mark(self : Self) -> Double {
  byte_length_queuing_strategy_high_water_mark_ffi(TJsValue::to_js(self))
}

///|
/// [ByteLengthQueuingStrategy.size](https://developer.mozilla.org/en-US/docs/Web/API/ByteLengthQueuingStrategy/size)
impl TByteLengthQueuingStrategy with size(self : Self) -> Function {
  byte_length_queuing_strategy_size_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn byte_length_queuing_strategy_new_ffi(
  init : JsValue,
) -> ByteLengthQueuingStrategy = "(init) => new ByteLengthQueuingStrategy(init)"

///|
#cfg(target="js")
extern "js" fn byte_length_queuing_strategy_high_water_mark_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.highWaterMark"

///|
#cfg(target="js")
fn byte_length_queuing_strategy_high_water_mark_ffi(obj : JsValue) -> Double {
  byte_length_queuing_strategy_high_water_mark_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn byte_length_queuing_strategy_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn byte_length_queuing_strategy_size_ffi(obj : JsValue) -> Function {
  byte_length_queuing_strategy_size_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn byte_length_queuing_strategy_new_ffi(
  init : JsValue,
) -> ByteLengthQueuingStrategy = "webapi_ByteLengthQueuingStrategy" "new"

///|
#cfg(target="wasm-gc")
fn byte_length_queuing_strategy_high_water_mark_ffi(obj : JsValue) -> Double = "webapi_ByteLengthQueuingStrategy" "get_highWaterMark"

///|
#cfg(target="wasm-gc")
fn byte_length_queuing_strategy_size_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ByteLengthQueuingStrategy" "get_size"

///|
#cfg(target="wasm-gc")
fn byte_length_queuing_strategy_size_ffi(obj : JsValue) -> Function {
  byte_length_queuing_strategy_size_ffi_wasm(obj).unsafe_cast()
}
