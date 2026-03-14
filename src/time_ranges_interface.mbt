// Do not edit. This file is generated.
// MoonBit type: TimeRanges
// Specifications: html.idl

///|
/// [TimeRanges](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges)
#external
pub type TimeRanges

///|
pub impl TJsValue for TimeRanges with to_js(self : TimeRanges) -> JsValue = "%identity"

///|
pub impl FromJsAny for TimeRanges with from_js_any(value : JsAny) -> TimeRanges = "%identity"

///|
pub fn[T : TTimeRanges] TimeRanges::into(self : TimeRanges) -> T = "%identity"

///|
pub impl TTimeRanges for TimeRanges

///|
/// [TimeRanges](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges) interface.
pub trait TTimeRanges: TJsValue {
  length(self : Self) -> UInt = _
  start(self : Self, index : UInt) -> Double = _
  end(self : Self, index : UInt) -> Double = _
}

///|
/// [TimeRanges.length](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges/length)
impl TTimeRanges with length(self : Self) -> UInt {
  time_ranges_length_ffi(TJsValue::to_js(self))
}

///|
/// [TimeRanges.start](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges/start)
impl TTimeRanges with start(self : Self, index : UInt) -> Double {
  time_ranges_start_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
/// [TimeRanges.end](https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges/end)
impl TTimeRanges with end(self : Self, index : UInt) -> Double {
  time_ranges_end_ffi(TJsValue::to_js(self), TJsValue::to_js(index))
}

///|
#cfg(target="js")
extern "js" fn time_ranges_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn time_ranges_length_ffi(obj : JsValue) -> UInt {
  time_ranges_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn time_ranges_start_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.start(index)"

///|
#cfg(target="js")
fn time_ranges_start_ffi(obj : JsValue, index : JsValue) -> Double {
  time_ranges_start_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn time_ranges_end_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.end(index)"

///|
#cfg(target="js")
fn time_ranges_end_ffi(obj : JsValue, index : JsValue) -> Double {
  time_ranges_end_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn time_ranges_length_ffi(obj : JsValue) -> UInt = "webapi_TimeRanges" "get_length"

///|
#cfg(target="wasm-gc")
fn time_ranges_start_ffi(obj : JsValue, index : JsValue) -> Double = "webapi_TimeRanges" "start"

///|
#cfg(target="wasm-gc")
fn time_ranges_end_ffi(obj : JsValue, index : JsValue) -> Double = "webapi_TimeRanges" "end"
