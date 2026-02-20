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
  size? : (JsValue) -> Double,
) -> QueuingStrategy {
  queuing_strategy_ffi(
    opt_to_js(high_water_mark),
    match size {
      Some(v) => TJsValue::to_js(queuing_strategy_size_ffi(v))
      None => JsValue::undefined()
    },
  )
}

///|
pub fn QueuingStrategy::empty() -> QueuingStrategy {
  queuing_strategy_empty_ffi()
}

///|
pub fn QueuingStrategy::high_water_mark(self : QueuingStrategy) -> Double? {
  let result = queuing_strategy_get_high_water_mark_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn QueuingStrategy::size(self : QueuingStrategy) -> QueuingStrategySize? {
  let result = queuing_strategy_get_size_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
