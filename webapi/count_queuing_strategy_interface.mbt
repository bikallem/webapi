// Do not edit. This file is generated.
// MoonBit type: CountQueuingStrategy
// Specifications: streams.idl

/// [CountQueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy)
#external
pub type CountQueuingStrategy

pub impl TJsValue for CountQueuingStrategy with to_js(self: CountQueuingStrategy) -> JsValue = "%identity"

pub impl FromJsAny for CountQueuingStrategy with from_js_any(value : JsAny) -> CountQueuingStrategy = "%identity"

pub fn[T: TCountQueuingStrategy] CountQueuingStrategy::into(self : CountQueuingStrategy) -> T = "%identity"

pub impl TCountQueuingStrategy for CountQueuingStrategy

pub fn CountQueuingStrategy::new(init : QueuingStrategyInit) -> CountQueuingStrategy {
  count_queuing_strategy_new_ffi(TJsValue::to_js(init))
}

/// [CountQueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy) interface.
pub trait TCountQueuingStrategy: TJsValue {
  high_water_mark(self : Self) -> Double = _
  size(self : Self) -> Function = _
}

/// [CountQueuingStrategy.highWaterMark](https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy/highWaterMark)
impl TCountQueuingStrategy with high_water_mark(self : Self) -> Double {
  count_queuing_strategy_high_water_mark_ffi(TJsValue::to_js(self))
}

/// [CountQueuingStrategy.size](https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy/size)
impl TCountQueuingStrategy with size(self : Self) -> Function {
  count_queuing_strategy_size_ffi(TJsValue::to_js(self))
}