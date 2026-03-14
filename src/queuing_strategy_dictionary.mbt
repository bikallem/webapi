// Do not edit. This file is generated.
// MoonBit type: QueuingStrategy
// Specifications: streams.idl

/// [QueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/QueuingStrategy)
#external
pub type QueuingStrategy

pub impl TJsValue for QueuingStrategy with to_js(self: QueuingStrategy) -> JsValue = "%identity"

pub impl FromJsAny for QueuingStrategy with from_js_any(value : JsAny) -> QueuingStrategy = "%identity"

pub fn QueuingStrategy::new(high_water_mark? : Double, 
size? : (JsValue) -> Double) -> QueuingStrategy {
  queuing_strategy_ffi(opt_to_js(high_water_mark), match size {
Some(v) => TJsValue::to_js(queuing_strategy_size_ffi(v))
None => JsValue::undefined()
})
}

pub fn QueuingStrategy::empty() -> QueuingStrategy { queuing_strategy_empty_ffi() }

pub fn QueuingStrategy::high_water_mark(self : QueuingStrategy) -> Double? {
  queuing_strategy_get_high_water_mark_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn QueuingStrategy::size(self : QueuingStrategy) -> QueuingStrategySize? {
  queuing_strategy_get_size_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn queuing_strategy_ffi(high_water_mark: JsValue, size: JsValue) -> QueuingStrategy = 
#|(highWaterMark, size) => {
#|  const obj = {};
#|  if (highWaterMark !== undefined) obj.highWaterMark = highWaterMark;
#|  if (size !== undefined) obj.size = size;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn queuing_strategy_empty_ffi() -> QueuingStrategy = "() => {}"

#cfg(target="js")
extern "js" fn queuing_strategy_get_high_water_mark_ffi(obj: JsValue) -> JsValue = "(obj) => obj.highWaterMark"

#cfg(target="js")
extern "js" fn queuing_strategy_get_size_ffi(obj: JsValue) -> JsValue = "(obj) => obj.size"

#cfg(target="wasm-gc")
fn queuing_strategy_ffi(high_water_mark: JsValue, size: JsValue) -> QueuingStrategy = "webapi_QueuingStrategy" "new"

#cfg(target="wasm-gc")
fn queuing_strategy_empty_ffi() -> QueuingStrategy = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn queuing_strategy_get_high_water_mark_ffi(obj: JsValue) -> JsValue = "webapi_QueuingStrategy" "get_highWaterMark"

#cfg(target="wasm-gc")
fn queuing_strategy_get_size_ffi(obj: JsValue) -> JsValue = "webapi_QueuingStrategy" "get_size"