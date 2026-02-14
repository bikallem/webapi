// Do not edit. This file is generated.
// MoonBit type: QueuingStrategy
// Specifications: streams.idl

///|
/// [QueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/QueuingStrategy)
#external
pub type QueuingStrategy

///|
pub impl TJsValue for QueuingStrategy with to_js(self : QueuingStrategy) -> JsValue = "%identity"

///|
pub impl FromJsAny for QueuingStrategy with from_js_any(value : JsAny) -> QueuingStrategy = "%identity"

///|
pub fn QueuingStrategy::new(
  high_water_mark? : Double,
  size? : QueuingStrategySize,
) -> QueuingStrategy {
  queuing_strategy_ffi(opt_to_js(high_water_mark), opt_to_js(size))
}

///|
pub fn QueuingStrategy::empty() -> QueuingStrategy {
  queuing_strategy_empty_ffi()
}
