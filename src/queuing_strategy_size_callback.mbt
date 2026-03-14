// Do not edit. This file is generated.
// MoonBit type: QueuingStrategySize
// Specifications: streams.idl

///|
/// [QueuingStrategySize](https://developer.mozilla.org/en-US/docs/Web/API/QueuingStrategySize)
#external
pub type QueuingStrategySize

///|
pub impl TJsValue for QueuingStrategySize with to_js(self : QueuingStrategySize) -> JsValue = "%identity"

///|
pub impl FromJsAny for QueuingStrategySize with from_js_any(value : JsAny) -> QueuingStrategySize = "%identity"

///|
pub fn QueuingStrategySize::new(
  callback : (JsValue) -> Double,
) -> QueuingStrategySize {
  queuing_strategy_size_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn queuing_strategy_size_ffi(
  callback : (JsValue) -> Double,
) -> QueuingStrategySize = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn queuing_strategy_size_ffi(
  callback : (JsValue) -> Double,
) -> QueuingStrategySize = "webapi_QueuingStrategySize" "new"
