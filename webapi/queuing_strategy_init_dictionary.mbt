// Do not edit. This file is generated.
// MoonBit type: QueuingStrategyInit
// Specifications: streams.idl

///|
/// [QueuingStrategyInit](https://developer.mozilla.org/en-US/docs/Web/API/QueuingStrategyInit)
#external
pub type QueuingStrategyInit

///|
pub impl TJsValue for QueuingStrategyInit with to_js(self : QueuingStrategyInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for QueuingStrategyInit with from_js_any(value : JsAny) -> QueuingStrategyInit = "%identity"

///|
pub fn QueuingStrategyInit::new(
  high_water_mark : Double,
) -> QueuingStrategyInit {
  queuing_strategy_init_ffi(TJsValue::to_js(high_water_mark))
}

///|
pub fn QueuingStrategyInit::empty() -> QueuingStrategyInit {
  queuing_strategy_init_empty_ffi()
}

///|
pub fn QueuingStrategyInit::high_water_mark(
  self : QueuingStrategyInit,
) -> Double {
  queuing_strategy_init_get_high_water_mark_ffi(TJsValue::to_js(self))
}
