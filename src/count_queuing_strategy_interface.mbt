// Do not edit. This file is generated.
// MoonBit type: CountQueuingStrategy
// Specifications: streams.idl

/// [CountQueuingStrategy](https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy)
#external
pub type CountQueuingStrategy

pub impl TJsValue for CountQueuingStrategy with to_js(self: CountQueuingStrategy) -> JsValue = "%identity"

pub impl FromJsAny for CountQueuingStrategy with from_js_any(value : JsAny) -> CountQueuingStrategy = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TCountQueuingStrategy] CountQueuingStrategy::into(self : CountQueuingStrategy) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TCountQueuingStrategy] CountQueuingStrategy::unsafe_into(self : CountQueuingStrategy) -> T = "%identity"

pub impl HasConstructor for CountQueuingStrategy with constructor_name() { "CountQueuingStrategy" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCountQueuingStrategy + HasConstructor] CountQueuingStrategy::try_into(self : CountQueuingStrategy) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn count_queuing_strategy_new_ffi(init: JsValue) -> CountQueuingStrategy = "(init) => new CountQueuingStrategy(init)"

#cfg(target="js")
extern "js" fn count_queuing_strategy_high_water_mark_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.highWaterMark"

///|
#cfg(target="js")
fn count_queuing_strategy_high_water_mark_ffi(obj: JsValue) -> Double {
  count_queuing_strategy_high_water_mark_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn count_queuing_strategy_size_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.size"

///|
#cfg(target="js")
fn count_queuing_strategy_size_ffi(obj: JsValue) -> Function {
  count_queuing_strategy_size_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn count_queuing_strategy_new_ffi(init: JsValue) -> CountQueuingStrategy = "webapi_CountQueuingStrategy" "new"

#cfg(target="wasm-gc")
fn count_queuing_strategy_high_water_mark_ffi(obj: JsValue) -> Double = "webapi_CountQueuingStrategy" "get_highWaterMark"

#cfg(target="wasm-gc")
fn count_queuing_strategy_size_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CountQueuingStrategy" "get_size"

///|
#cfg(target="wasm-gc")
fn count_queuing_strategy_size_ffi(obj: JsValue) -> Function {
  count_queuing_strategy_size_ffi_wasm(obj).unsafe_cast()
}