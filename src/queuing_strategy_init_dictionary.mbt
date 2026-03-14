// Do not edit. This file is generated.
// MoonBit type: QueuingStrategyInit
// Specifications: streams.idl

/// [QueuingStrategyInit](https://developer.mozilla.org/en-US/docs/Web/API/QueuingStrategyInit)
#external
pub type QueuingStrategyInit

pub impl TJsValue for QueuingStrategyInit with to_js(self: QueuingStrategyInit) -> JsValue = "%identity"

pub impl FromJsAny for QueuingStrategyInit with from_js_any(value : JsAny) -> QueuingStrategyInit = "%identity"

pub fn QueuingStrategyInit::new(high_water_mark : Double) -> QueuingStrategyInit {
  queuing_strategy_init_ffi(TJsValue::to_js(high_water_mark))
}

pub fn QueuingStrategyInit::empty() -> QueuingStrategyInit { queuing_strategy_init_empty_ffi() }

pub fn QueuingStrategyInit::high_water_mark(self : QueuingStrategyInit) -> Double {
  queuing_strategy_init_get_high_water_mark_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn queuing_strategy_init_ffi(high_water_mark: JsValue) -> QueuingStrategyInit = 
#|(highWaterMark) => {
#|  const obj = {};
#|  if (highWaterMark !== undefined) obj.highWaterMark = highWaterMark;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn queuing_strategy_init_empty_ffi() -> QueuingStrategyInit = "() => {}"

#cfg(target="js")
extern "js" fn queuing_strategy_init_get_high_water_mark_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.highWaterMark"

///|
#cfg(target="js")
fn queuing_strategy_init_get_high_water_mark_ffi(obj: JsValue) -> Double {
  queuing_strategy_init_get_high_water_mark_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn queuing_strategy_init_ffi(high_water_mark: JsValue) -> QueuingStrategyInit = "webapi_QueuingStrategyInit" "new"

#cfg(target="wasm-gc")
fn queuing_strategy_init_empty_ffi() -> QueuingStrategyInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn queuing_strategy_init_get_high_water_mark_ffi(obj: JsValue) -> Double = "webapi_QueuingStrategyInit" "get_highWaterMark"